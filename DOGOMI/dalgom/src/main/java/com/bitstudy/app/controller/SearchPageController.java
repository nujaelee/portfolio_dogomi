package com.bitstudy.app.controller;

import com.bitstudy.app.dao.JjimDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.BookService;
import com.bitstudy.app.service.JjimService;
import com.bitstudy.app.service.TcService;
import com.bitstudy.app.service.TeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchPageController {

    @Autowired
    TcService tcService;
    @Autowired
    TeService teService;
    @Autowired
    BookService bookService;
    @Autowired
    UserDao userDao;
    @Autowired
    JjimService jjimService;


    /*찜 등록*/
    @PostMapping("/jjim/{te_no}")
    @ResponseBody
    public ResponseEntity<String> jjimAdd(@PathVariable Integer te_no, JjimDto jjimDto, HttpSession session, Model model) {
//
        String msg="";
        try {
            // 현재 로그인 한 유저 아이디 저장(DTO에 담을 용도)
            String user_id = (String)session.getAttribute("user_id");
            if (user_id==null){
                msg ="needLogin";
                return new ResponseEntity<String> (msg, HttpStatus.OK); // 200 }
            }
//            System.out.println(2);
            UserDto userDto = userDao.selectUser(user_id);
            Integer currUserNo = userDto.getUser_no();

            jjimDto.setUser_no(currUserNo);
            jjimDto.setTe_no(te_no);

            if (jjimService.jjimcount(jjimDto) > 0){

                jjimService.jjimdelete(jjimDto);
                msg="deljj";
            }
            else {

                jjimService.Jjimadd(jjimDto);
                msg="addjj";
            }
            model.addAttribute("jjimDto", jjimDto);
            return new ResponseEntity<String> (msg, HttpStatus.OK); // 200
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> ("예약 실패", HttpStatus.BAD_REQUEST); // 400
        }
    }



    /* 예약하기 등록 */
    @PostMapping("/reserve/{te_no}/{tc_no}")
    @ResponseBody
    public ResponseEntity<String> tt(@PathVariable Integer te_no, @PathVariable Integer tc_no, BookDto bookDto, HttpSession session) {
//
        try {
            // 현재 로그인 한 유저 아이디 저장(DTO에 담을 용도)
            String user_id = (String)session.getAttribute("user_id");
            String msg ="";
            if (user_id==null){
                msg ="needLogin";
                return new ResponseEntity<String> (msg, HttpStatus.OK); // 200 }
            }
            UserDto userDto = userDao.selectUser(user_id);
            Integer currUserNo = userDto.getUser_no();



            bookDto.setUser_no(currUserNo);
            bookDto.setTc_no(tc_no);
            bookDto.setTe_no(te_no);
            bookDto.setBook_state("예약진행중");

            if (bookService.bookChkCount(bookDto) > 0){
                msg="alreadyReserve";
            }
            else {
                bookService.add(bookDto);
                msg="reserveSuccess";
            }

            return new ResponseEntity<String> (msg, HttpStatus.OK); // 200
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> ("예약 실패", HttpStatus.BAD_REQUEST); // 400
        }
    }




    //
    @GetMapping("/rsvForm")
    public String rsvForm(Integer tc_no, Integer page, Integer pageSize, Model model, HttpSession session)  {
        try{
            TcDto tcDto = tcService.read(tc_no);
            String currUser_id = (String)session.getAttribute("user_id");
            UserDto uDto = userDao.selectUser(currUser_id);

            if (currUser_id!=null) {
                List<JjimDto> jlist = jjimService.jjimList(uDto.getUser_no());

                model.addAttribute("jjimlst", jlist);
            }
            model.addAttribute("tcDto", tcDto);
            model.addAttribute("page", page);
            model.addAttribute("pageSize", pageSize);
            List<TeDto> list_te = teService.getTeList(tc_no);
            model.addAttribute("list_te", list_te);
            return "trainReservPage";}catch (Exception e){throw new RuntimeException(e);}
    }


    @GetMapping("/searchListPagination")
    public String searchListPagination(TeDto teDto,  SearchDto searchDto, Model model, HttpServletRequest request) {

        try {
            /* 훈련소 찾기에 훈련리스트 불러오는 코드*/
            int totalCount = tcService.getSearchResultCount(searchDto);

            PageHandler ph = new PageHandler(totalCount, searchDto.getPageSize(), searchDto.getPage());

            int offset = (searchDto.getPage()-1)*searchDto.getPageSize();
            searchDto.setOffset(offset);
            List<TcDto> list = tcService.getSearchResultPage(searchDto);

            model.addAttribute("ph", ph);
            model.addAttribute("list", list);

            /*훈련 불러오는 코드*/

            List<TeDto> list_te = teService.getTeListTe();
            model.addAttribute("list_te", list_te);


        } catch (Exception e) {
            throw new RuntimeException(e);
        }


        return "searchPage";
    }



}
