package com.bitstudy.app.controller;

import com.bitstudy.app.dao.TcDao;
import com.bitstudy.app.dao.TeDao;
import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TcMyPageController {
    @Autowired
    TcService tcService;

    @Autowired
    TeService teService;

    @Autowired
    ReviewService reviewService;

    @Autowired
    BookService bookService;

    @Autowired
    UserService userService;

    private static final String TC_PATH = "C:/Users/user1/Desktop/팀프로젝트/3조-DOGOMI/dalgom/src/main/webapp/resources/img/tc_img/";
    private static final String TE_PATH = "C:/Users/user1/Desktop/팀프로젝트/3조-DOGOMI/dalgom/src/main/webapp/resources/img/te_img/";

    private static final String TC_R_PATH = "C:/Users/user1/Desktop/팀프로젝트/3조-DOGOMI/dalgom/src/main/webapp/resources/img/review/";

    @GetMapping("/tcMyPage/tc_modify")
    public String tc_modify(Model model){
        model.addAttribute("mode", "tc_new");
        return "redirect:/tcMyPage/tc_info";
    }
    @GetMapping("/tcMyPage/te_modify")
    public String te_modify(Model model){
        model.addAttribute("mode", "te_new");
        return "redirect:/tcMyPage/te_info";
    }

    @GetMapping("/tcMyPage/tc_remove")
    public String dropTc(HttpSession session){
        Integer tc_no = (Integer)session.getAttribute("tc_no");
        tcService.dropTc(tc_no);
        return "index";
    }

    @GetMapping("/tcMyPage/te_remove_all")
    public String dropTeAll(HttpSession session){
        Integer currTcNo = (Integer)session.getAttribute("tc_no");
        teService.dropTeAll(currTcNo);
        return "redirect:/tcMyPage/te_info";
    }

    @GetMapping("/tcMyPage/te_remove")
    public String dropTe(HttpServletRequest request){
        Integer te_no = Integer.parseInt(request.getParameter("te_no"));
        teService.dropTe(te_no);
        return "redirect:/tcMyPage/te_info";
    }

    @PostMapping("/tcMyPage/book_state_fin")
    public String bookStateChangeOK(HttpServletRequest request, Model model){
        Integer b_no = Integer.parseInt(request.getParameter("b_no"));

        BookUserTeDto bookUserTeDto = bookService.getBookJoinOne(b_no);

//        System.out.println(bookUserTeDto);
        Map map = new HashMap();
        map.put("book_state", "예약확정");
        map.put("te_no", bookUserTeDto.getTe_no());
        map.put("b_no", bookUserTeDto.getB_no());

        bookService.changeBookState(map);

        model.addAttribute("mode", "book_fin");

        return "redirect:/tcMyPage/tc_book?page=1";
    }

    @PostMapping("/tcMyPage/book_state_can")
    public String bookStateChangeNo(HttpServletRequest request, Model model){
        Integer b_no = Integer.parseInt(request.getParameter("b_no"));

        BookUserTeDto bookUserTeDto = bookService.getBookJoinOne(b_no);

        Map map = new HashMap();
        map.put("book_state", "예약취소");
        map.put("te_no", bookUserTeDto.getTe_no());
        map.put("b_no", bookUserTeDto.getB_no());

        bookService.changeBookState(map);

        return "redirect:/tcMyPage/tc_book?page=1";
    }

    @GetMapping("/tcMyPage/tc_info")
    public String tc_info(Model model, HttpSession session){
//        Integer tc_no = 1;
        try {
            Integer tc_no = (Integer) session.getAttribute("tc_no");
            TcDto tcDto = tcService.getTc(tc_no);

            model.addAttribute("tcDto", tcDto);
            model.addAttribute("mode", "tc_info");
            session.setAttribute("tc_name", tcDto.getTc_name());

            return "TcMypage";
        } catch (Exception e) {
            return "loginForm";
        }
    }

    @GetMapping("/tcMyPage/te_info")
    public String te_info(Model model, HttpSession session){
        List<TeDto> te_list = null;
//        Integer tc_no = 1;
        Integer tc_no = (Integer) session.getAttribute("tc_no");

        TcDto tcDto = tcService.getTc(tc_no);
        te_list = teService.getTeList(tc_no);

        model.addAttribute("te_list", te_list);
        model.addAttribute("mode", "te_info");

        session.setAttribute("tc_name", tcDto.getTc_name());
        session.setAttribute("tc_no", tcDto.getTc_no());

        return "TcMypage";
    }

    @PostMapping("/tcMyPage/te_add")
    public String inputPet(@RequestParam(value="te_plus_file", required = false) MultipartFile mf,TeDto teDto, Model model){
        String safeFile ="";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            /*파일명이 겹치면 안되므로 오리지널 파일네임에 현시간을 추가해서 맨첫 줄에 선언한 내가 저장받을위치+현재시간+오리지날파일명으로 경로를 safeFile변수에 저장 */
            safeFile = TE_PATH + System.currentTimeMillis() + originalFileName;
            //경로 저장된 변수를 우리가사용하는 /img 이하만 남기고 앞에 삭제하는 메소드만 남기고 다시 저장
            String linkSfFile = cutImgString(safeFile);
            teDto.setTe_img(linkSfFile);
        }
        else {
            teDto.setTe_img(null);
        }

        teService.inputTe(teDto);
        model.addAttribute("teDto", teDto);

        try {
            if(!("").equals(originalFileName)) {
                mf.transferTo(new File(safeFile));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/tcMyPage/te_info";
    }

    @PostMapping("/tcMyPage/tc_modify")
    public String tc_modify(@RequestParam(value="tc_file", required = false) MultipartFile mf, TcDto tcDto, Model model, HttpSession session){
        Integer tc_no = (Integer) session.getAttribute("tc_no");
        String safeFile ="";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            /*파일명이 겹치면 안되므로 오리지널 파일네임에 현시간을 추가해서 맨첫 줄에 선언한 내가 저장받을위치+현재시간+오리지날파일명으로 경로를 safeFile변수에 저장 */
            safeFile = TC_PATH + System.currentTimeMillis() + originalFileName;
            //경로 저장된 변수를 우리가사용하는 /img 이하만 남기고 앞에 삭제하는 메소드만 남기고 다시 저장
            String linkSfFile = cutImgString(safeFile);
            tcDto.setTc_img(linkSfFile);
        }
        else {
            tcDto.setTc_img(null);
        }

        Map map = new HashMap();
        map.put("tc_no", tc_no);
        map.put("tc_id", tcDto.getTc_id());
        map.put("tc_pw", tcDto.getTc_pw());
        map.put("tc_img", tcDto.getTc_img());
        map.put("tc_name", tcDto.getTc_name());
        map.put("tc_call", tcDto.getTc_call());
        map.put("tc_email", tcDto.getTc_email());
        map.put("tc_main_ad", tcDto.getTc_main_ad());
        map.put("tc_sub_ad", tcDto.getTc_sub_ad());

        tcService.modifyTc(map);
        model.addAttribute("mode", "tc_info");

        try {
            if(!("").equals(originalFileName)) {
                mf.transferTo(new File(safeFile));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/tcMyPage/tc_info";
    }

    @PostMapping("tcMyPage/te_modify")
    public String te_modify(@RequestParam(value="te_file", required = false) MultipartFile mf, TeDto teDto, Model model, HttpSession session){
        Integer tc_no = (Integer) session.getAttribute("tc_no");
        String safeFile ="";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            /*파일명이 겹치면 안되므로 오리지널 파일네임에 현시간을 추가해서 맨첫 줄에 선언한 내가 저장받을위치+현재시간+오리지날파일명으로 경로를 safeFile변수에 저장 */
            safeFile = TE_PATH + System.currentTimeMillis() + originalFileName;
            //경로 저장된 변수를 우리가사용하는 /img 이하만 남기고 앞에 삭제하는 메소드만 남기고 다시 저장
            String linkSfFile = cutImgString(safeFile);
            teDto.setTe_img(linkSfFile);
        }
        else {
            teDto.setTe_img(null);
        }

        Map map = new HashMap();
        map.put("tc_no", tc_no);
        map.put("te_no", teDto.getTe_no());
        map.put("te_img", teDto.getTe_img());
        map.put("te_name", teDto.getTe_name());
        map.put("te_in", teDto.getTe_in());
        map.put("te_out", teDto.getTe_out());
        map.put("te_petsize", teDto.getTe_petsize());
        map.put("te_cost", teDto.getTe_cost());

        teService.modifyTe(map);
        model.addAttribute("mode", "te_info");

        try {
            if(!("").equals(originalFileName)) {
                mf.transferTo(new File(safeFile));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/tcMyPage/te_info";
    }


    @GetMapping("/tcMyPage/tc_book")
    public String tc_book_list(@RequestParam Integer page,Integer te_no, Model model, HttpSession session){
        List<BookUserTeDto> tc_b_list = null;
        Integer pageSize = 10;
        Integer offset = (page - 1) * 10;
        if(page==null) page = 1;

        Integer tc_no = (Integer) session.getAttribute("tc_no");

        TcDto tcDto = tcService.getTc(tc_no);

        Map map = new HashMap();
        map.put("tc_no", tc_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        tc_b_list = bookService.getBookUserTe(map);

        int totalCount = bookService.getBookListCnt(tc_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        model.addAttribute("tc_b_list", tc_b_list);
        model.addAttribute("mode", "tc_book");
        model.addAttribute("ph", pageHandler);
        session.setAttribute("tc_name", tcDto.getTc_name());
        session.setAttribute("tc_no", tcDto.getTc_no());

        return "TcMypage";
    }


    /* 훈련소 정보가 일치하는 글 조회 */
    @GetMapping("/tcMyPage/tc_review")
    public String tc_review_list(@RequestParam Integer page, MultipartFile mf, HttpSession session, Model model){
        Integer tc_no = (Integer) session.getAttribute("tc_no");

        List<ReviewDto> tc_r_list = null;
        Integer pageSize = 10;
        Integer offset = (page - 1) * 10;
        if(page==null) page = 1;

        int totalCount = reviewService.getTcReCnt(tc_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        Map map = new HashMap();
        map.put("tc_no", tc_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        tc_r_list = reviewService.getTcReview(map);

        model.addAttribute("tc_r_list", tc_r_list);
        model.addAttribute("ph", pageHandler);
        model.addAttribute("mode", "tc_review");

        TcDto tcDto = tcService.getTc(tc_no);
        session.setAttribute("tc_name", tcDto.getTc_name());
        session.setAttribute("tc_no", tcDto.getTc_no());

        return "TcMypage";
    }


    /*우리가 사용해야하는 경로로 string 재지정하는 메소드*/
    private String cutImgString(String fileName){
        int imgStartNum = fileName.indexOf("/img/");//문자열에서 img포함된 위치찾는 부분 (시작점)

        int imgLength = fileName.length();//총문자열의 길이
        //전체 문자열에서 img~가장끝까지 불러서 fileName새로 저장후 리턴
        fileName = fileName.substring(imgStartNum,imgLength)/* + imgExt*/;

        return fileName;
    }
}
