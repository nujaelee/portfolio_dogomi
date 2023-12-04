package com.bitstudy.app.controller;

import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
//@RequestMapping("/userMyPage")
public class UserMyPageController {
    @Autowired
    UserService userService;

    @Autowired
    PetService petService;

    @Autowired
    ReviewService reviewService;

    @Autowired
    CommunityService communityService;

    @Autowired
    BookService bookService;

    @Autowired
    TcService tcService;

    @Autowired
    JjimService jjimService;

    //수정 폼 불러오기(mode=new 추가)
    @GetMapping("/userMyPage/user_modify")
    public String user_modify(Model model){
        model.addAttribute("mode", "user_new");
        return "redirect:/userMyPage";
    }
    @GetMapping("/userMyPage/pet_modify")
    public String pet_modify(Model model){
        model.addAttribute("mode", "pet_new");
        return "redirect:/userMyPage";
    }

    @GetMapping("/userMyPage/pet_remove_all")
    public String dropPetAll(HttpSession session){
        Integer user_no = (Integer) session.getAttribute("user_no");
        petService.dropPetAll(user_no);
        return "redirect:/userMyPage/pet_info";
    }

    @GetMapping("/userMyPage/pet_remove")
    public String dropPet(HttpServletRequest request,Integer p_no){
        p_no = Integer.parseInt(request.getParameter("p_no"));
        petService.dropPet(p_no);
        return "redirect:/userMyPage/pet_info";
    }

    @GetMapping("/userMyPage/user_remove")
    public String dropUser(HttpSession session){
        try {
            Integer user_no = (Integer) session.getAttribute("user_no");
            userService.dropUser(user_no);

            return "index";
        } catch (Exception e) {
            return "/";
        }
    }

    @PostMapping("/userMyPage/book_state_can")
    public String user_book_can(HttpServletRequest request, Integer b_no, Model model){
        b_no = Integer.parseInt(request.getParameter("b_no"));

        BookUserTeUserDto bookUserTeUserDto = bookService.getBookJoinUserOne(b_no);

        Map map = new HashMap();
        map.put("book_state", "예약취소");
        map.put("te_no", bookUserTeUserDto.getTe_no());
        map.put("b_no", bookUserTeUserDto.getB_no());

        bookService.changeBookState(map);
        return "redirect:/userMyPage/user_book?page=1";
    }

    @GetMapping("/userMyPage/user_jjim")
    public String user_jjim_list(@RequestParam Integer page, Model model, HttpSession session){
        List<JjimTeDto> user_j_list = null;
        Integer pageSize = 10;
        Integer offset = (page - 1) * 10;
        if(page==null){
            page = 1;
        }else {
            page = page;
        }

        Integer user_no = (Integer) session.getAttribute("user_no");

        UserDto userDto = userService.getUser(user_no);

        Map map = new HashMap();
        map.put("user_no", user_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        user_j_list = jjimService.getJjimTeList(map);

        int totalCount = jjimService.getJjimUserCnt(user_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        model.addAttribute("user_j_list", user_j_list);
        model.addAttribute("mode", "user_jjim");
        model.addAttribute("ph", pageHandler);
        session.setAttribute("user_name", userDto.getUser_name());
        session.setAttribute("user_no", userDto.getUser_no());
        return "UserMypage";
    }

    @GetMapping("/userMyPage/user_book")
    public String user_book_list(@RequestParam Integer page, Model model, HttpSession session){
        List<BookUserTeUserDto> user_b_list = null;
        Integer pageSize = 10;
        Integer offset = (page - 1) * 10;
        if(page==null){
            page = 1;
        }else {
            page = page;
        }

        Integer user_no = (Integer) session.getAttribute("user_no");

        UserDto userDto = userService.getUser(user_no);

        Map map = new HashMap();
        map.put("user_no", user_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        user_b_list = bookService.getBookUserTeUser(map);

        int totalCount = bookService.getBookJoinUserCnt(user_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        model.addAttribute("user_b_list", user_b_list);
        model.addAttribute("mode", "user_book");
        model.addAttribute("ph", pageHandler);
        session.setAttribute("user_name", userDto.getUser_name());
        session.setAttribute("user_no", userDto.getUser_no());
        return "UserMypage";
    }


    // 로그인했을 때 post방식으로 return 뒤에 "OOO?user_no="+user_no 해서 가져오기 아니면 세션에서 가져와도되겟당
    @GetMapping("/userMyPage/user_info")
    public String user_info(Model model, HttpSession session){
        try {
            Integer user_no = (Integer) session.getAttribute("user_no");

            // 견주 정보
            UserDto userDto = userService.getUser(user_no);

            //로그아웃하면 세션 다 삭제하는 기능있어야대나?
            session.setAttribute("user_name", userDto.getUser_name());
            model.addAttribute("userDto", userDto);
            model.addAttribute("mode", "user_info");
            return "UserMypage";
        } catch (Exception e) {
            return "loginForm";
        }
    }

    @GetMapping("/userMyPage/pet_info")
    public String pet_info(Integer p_no, Model model, HttpSession session){
        try {
            List<PetDto> p_list = null;
            Integer user_no = (Integer) session.getAttribute("user_no");
//            p_no = 1;

            UserDto userDto = userService.getUser(user_no);
            // 반려견 정보
            p_list = petService.getPet(user_no);

            model.addAttribute("p_list", p_list);
            session.setAttribute("user_name", userDto.getUser_name());
            session.setAttribute("user_no", userDto.getUser_no());
            model.addAttribute("mode", "pet_info");

//            System.out.println(list);
            return "UserMypage";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @PostMapping("/userMypage/pet_modify_map")
    public String pet_modify_map(PetDto petDtoMap, Model model, HttpSession session){
        try {
            Map map = new HashMap();
            map.put("p_no", petDtoMap.getP_no());
            map.put("user_no", (Integer)session.getAttribute("user_no"));
            map.put("p_name", petDtoMap.getP_name());
//        map.put("p_birth", petDtoMap.getP_birth());
            map.put("p_size", petDtoMap.getP_size());
            map.put("p_weight", petDtoMap.getP_weight());
            map.put("p_vaccine", petDtoMap.getP_vaccine());
            map.put("p_kind", petDtoMap.getP_kind());
            map.put("p_gender", petDtoMap.getP_gender());
            map.put("p_blood", petDtoMap.getP_blood());

            petService.modifyPetMap(map);
            model.addAttribute("mode", "pet_info");

            return "redirect:/userMyPage/pet_info";
        } catch (Exception e) {
            return "UserMypage";
        }
    }

    @PostMapping("/userMyPage/user_modify")
    public String user_modify(UserDto userDto, HttpSession session){
        try {
            Integer user_no = (Integer) session.getAttribute("user_no");

            userDto.setUser_no(user_no);
            userService.modifyUser(userDto);

            return "redirect:/userMyPage/user_info";
        } catch (Exception e) {
            return "UserMypage";
        }
    }

    @PostMapping("/userMyPage/pet_add")
    public String inputPet(PetDto petDto, Model model, HttpSession session){
        try {
            Integer user_no = (Integer) session.getAttribute("user_no");
            petDto.setUser_no(user_no);
            petService.inputPet(petDto);
            model.addAttribute("petDto", petDto);

            return "redirect:/userMyPage/pet_info";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/userMyPage/pet_info";
        }
    }

    /* 유저 정보가 일치하는 글 조회 */
    @GetMapping("/userMyPage/user_review")
    public String user_review_list(@RequestParam Integer page, HttpSession session, Model model){
        List<ReviewDto> us_r_list = null;
        Integer pageSize = 10;
        Integer offset = (page - 1) * 10;
        if(page==null) page = 1;

        // 유저 넘버 추후 설정
        Integer user_no = (Integer) session.getAttribute("user_no");
        UserDto userDto = userService.getUser(user_no);

        int totalCount = reviewService.getUserReCnt(user_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        Map map = new HashMap();
        map.put("user_no", user_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);
        us_r_list = reviewService.getUserReview(map);
        List<TcDto> tcList = tcService.loadListAll();
        model.addAttribute("tcList",tcList);

        model.addAttribute("us_r_list", us_r_list);
        model.addAttribute("ph", pageHandler);
        model.addAttribute("mode", "user_review");
        session.setAttribute("user_name", userDto.getUser_name());
        session.setAttribute("user_no", userDto.getUser_no());

        return "UserMypage";
    }

    @GetMapping("/userMyPage/user_community")
    public String user_community_list(@RequestParam Integer page, HttpSession session, Integer offset, Integer pageSize, Model model){
        List<CommunityDto> community_list = null;
        pageSize = 10;
        offset = (page - 1) * 10;
        if(page==null) page = 1;

        // 유저 넘버 추후 설정
        Integer user_no = (Integer) session.getAttribute("user_no");
        UserDto userDto = userService.getUser(user_no);

        int totalCount = communityService.getUserCuCnt(user_no);
        PageHandler pageHandler = new PageHandler(totalCount, page);

        Map map = new HashMap();
        map.put("user_no", user_no);
        map.put("offset", offset);
        map.put("pageSize", pageSize);
        community_list = communityService.getUserCu(map);

        model.addAttribute("community_list", community_list);
        model.addAttribute("ph", pageHandler);
        model.addAttribute("mode", "user_community");
        session.setAttribute("user_name", userDto.getUser_name());
        session.setAttribute("user_no", userDto.getUser_no());

        return "UserMypage";
    }


    private boolean loginChk(HttpServletRequest request){
        HttpSession session = request.getSession();
        return session.getAttribute("user_no")!=null;
    }
}
