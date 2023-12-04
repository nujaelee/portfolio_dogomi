package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.CommunityDto;
import com.bitstudy.app.domain.PageHandler;
import com.bitstudy.app.domain.SearchCondition;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/cmt")
public class CommunityController {
    @Autowired
    CommunityService cmtService;

    private static final String F_PATH = "C:/Users/user1/Desktop/팀프로젝트/3조-DOGOMI/dalgom/src/main/webapp/resources/img/";

    /*************************************************/
    /* 검색 */

    /* 글 수정 */
    @PostMapping("/modify")
    public String modify(@RequestParam(value="f_file", required = false) MultipartFile mf, CommunityDto cmtDto, HttpSession session, Model model, SearchCondition sc) {
        String currUserId = (String) session.getAttribute("user_id");

        /*파일업로드*/
        String safeFile ="";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            safeFile = F_PATH + System.currentTimeMillis() + originalFileName;
            String linkSfFile = cutImgString(safeFile);
            cmtDto.setCu_img(linkSfFile);
        }
        else {
            cmtDto.setCu_img(null);
        }
        cmtDto.setUser_id(currUserId);
        cmtService.modify2(cmtDto);

        try {
            mf.transferTo(new File(safeFile));
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "redirect:/cmt/list"+sc.getQueryString();
    }


    /* 글쓰기 폼 불러오기 */
    @GetMapping("/write")
    public String write(Model model, HttpServletRequest request) {

        if(!loginChk(request))
        {
            return "redirect:/login/login?prevPage="+request.getRequestURL();
        }

        model.addAttribute("mode","new");
        return "community";
    }


    /* 글쓰기 DB에 저장 */
    @PostMapping("/write")
    /* borad.jsp의 '글쓰기' 누르면 DB에 제목, 본문내용, 작성자, 현재시간 등을 등록하는 메서드 */
    public String write(@RequestParam(value="f_file", required = false) MultipartFile mf, CommunityDto cmtDto, HttpSession session, RedirectAttributes rattr) throws Exception {
        String currUserId = (String) session.getAttribute("user_id");
        Integer currUserNo = (Integer) session.getAttribute("user_no");
        cmtDto.setUser_id(currUserId);
        cmtDto.setUser_no(currUserNo);

        /* 파일 업로드 */
        String safeFile = "";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            safeFile = F_PATH + System.currentTimeMillis() + originalFileName;
            String linkSfFile = cutImgString(safeFile);
            cmtDto.setCu_img(linkSfFile);
        }
        else {
            cmtDto.setCu_img(null);
        }
        cmtService.write(cmtDto); // DB에 저장
        rattr.addFlashAttribute("msg", "WRT_OK");

        try {
            mf.transferTo(new File(safeFile));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/cmt/list";
    }

    /* 삭제 */
    @PostMapping("/remove")
    public String remove(Integer cu_no, SearchCondition sc, HttpSession session, RedirectAttributes rattr) {
        /** RedirectAttributes
         * 메세징 띄워줄때 사용 가능. model이랑 비슷함.
         * Model은 계속 남아있는 정보, RedirectAttributes 는 일회성 정보
         * */
        try {
            String currUserId = (String) session.getAttribute("user_id");
            cmtService.remove(cu_no, currUserId);
            rattr.addFlashAttribute("msg","del_ok");


        } catch (Exception e) {
            rattr.addFlashAttribute("msg","del_err");

        }

        return "redirect:/cmt/list"+sc.getQueryString();
    }


    /* 글 1개 조회 */
    @GetMapping("/read")
    public String read(Integer cu_no, Integer page, Integer pageSize, Model model) {
        try {

            CommunityDto cmtDto = cmtService.read(cu_no);
            model.addAttribute("cmtDto", cmtDto);
            model.addAttribute("page", page);
            model.addAttribute("pageSize", pageSize);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return "community";
    }


    /* 글쓰기 전체 불러오기 */
    /*
        1. 일단 사용자가 게시판 페이지로 들어올때 "현재페이지" 와 "한 페이지당 보여줄 페이지 개수" 를 컨트롤러에서 받아야 하기 때문에 GetMapping 부분에서 매개변수로 page와 pageSize 를 받는다
        2. page, pageSize 를 받아서 Model에 담아서 뷰로 넘겨준다
     */

    @GetMapping("/list")
    public String list(SearchCondition rsc, Model m, HttpServletRequest request) {

        // 로그인 했는지 파악
//        if(!loginChk(request))
//        {
//            return "redirect:/login/login?prevPage="+request.getRequestURL();
//        }
        try {
            //총 게시글 개수 구해서 페이징 계산
            int totalCount = cmtService.getSearchResultCount(rsc);
            PageHandler ph = new PageHandler(totalCount, rsc.getPageSize(), rsc.getPage());
            int offset = (rsc.getPage()-1)*rsc.getPageSize();

            rsc.setOffset(offset);
            List<CommunityDto> list = cmtService.getSearchResultPage(rsc);

            m.addAttribute("ph",ph);
            m.addAttribute("list",list);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return "communityList";
    }
    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("user_id")!=null;
    }
    private  String cutImgString(String fileName){
        int imgStartNum = fileName.indexOf("/img/");
        int imgLength = fileName.length();
        fileName = fileName.substring(imgStartNum,imgLength);

        return fileName;
    }
}
