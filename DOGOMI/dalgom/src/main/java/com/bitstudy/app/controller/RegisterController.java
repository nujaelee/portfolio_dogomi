package com.bitstudy.app.controller;


import com.bitstudy.app.domain.TcDto;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.service.RegisterService;
import com.bitstudy.app.service.TcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.net.URLEncoder;

@Controller
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @GetMapping("/register/UserAdd")
    public String registerUserAdd(Model model) {
        model.addAttribute("type", "user");
        return "registerForm";
    }

    @GetMapping("/register/TcAdd")
    public String registerTcAdd(Model model) {
        model.addAttribute("type", "tc");
        return "registerForm";
    }

    /* 견주 아이디 DB중복검사 */
    @PostMapping("/register/UserSaveChk/{userId}")
    public ResponseEntity<Integer>  UserSaveChk(@PathVariable String userId) {

        // 서비스, 다오, 매퍼가서 셀렉트문 가져오기
        try {
//            System.out.println(1111);
//            System.out.println();
            int result_uID_count = registerService.countSltUser(userId);

//            System.out.println(22);
            if (result_uID_count==1) {

//                System.out.println(333);
                return new ResponseEntity<Integer>( result_uID_count  , HttpStatus.OK); }
            else if (result_uID_count==0) {

//                System.out.println(444);
                return new ResponseEntity<Integer>(0, HttpStatus.OK);
            }
            else {

//                System.out.println(5555);
                return new ResponseEntity<Integer>(-1, HttpStatus.OK);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<Integer> (-1, HttpStatus.BAD_REQUEST);
        }
    }


    /* 견주 회원가입 */
    @PostMapping("/register/UserSave")
    public String registerSave(UserDto userDto, Model m) throws Exception {
        // DB에 데이터 넣어줌
        registerService.insertUser(userDto);
        return "loginForm";
    }

    @Autowired
    TcService tcService;

    private static final String FFF_PATH = "C:/Users/user1/Desktop/팀프로젝트/3조-DOGOMI/dalgom/src/main/webapp/resources/img/tc_img/";
    @PostMapping("/register/TcSave")
    public String registerTcSave(@RequestParam(value = "f_file", required = false) MultipartFile mf, TcDto tcDto) {
//        System.out.println("tcsave 넘어옴");
        String safeFile ="";
        String originalFileName = mf.getOriginalFilename();
        if(!("").equals(originalFileName)) {
            safeFile = FFF_PATH + System.currentTimeMillis() + originalFileName;
            String linkSfFile = cutImgString(safeFile);
            tcDto.setTc_img(linkSfFile);
        }
        else {
            tcDto.setTc_img(null);
        }
        tcService.insertTc(tcDto);
//        System.out.println("tcDto: "+tcDto);

        try {
            if(!("").equals(originalFileName)) {
                mf.transferTo(new File(safeFile));
            }
        } catch (Exception e) {
            e.printStackTrace();
//            System.out.println("틀렷어");
        }
        return "loginForm";
    }
    private String cutImgString(String fileName){
        int imgStartNum = fileName.indexOf("/img/");//문자열에서 img포함된 위치찾는 부분 (시작점)

        int imgLength = fileName.length();//총문자열의 길이
        //전체 문자열에서 img~가장끝까지 불러서 fileName새로 저장후 리턴
        fileName = fileName.substring(imgStartNum,imgLength)/* + imgExt*/;

        return fileName;
    }

    /* 룬련소 아이디 DB중복검사 */
    @PostMapping("/register/TcSaveChk/{tcId}")
    public ResponseEntity<Integer>  TcSaveChk(@PathVariable String tcId) {
        System.out.println("tcId: " + tcId);
        // 서비스가서 다오가서 매퍼가서셀 렏트문 가져오기
        try {
            System.out.println(1);
            int result_tcID_count = tcService.countSltTc(tcId);
            System.out.println(2);
            if (result_tcID_count==1) {
                System.out.println(3);
                return new ResponseEntity<Integer>( result_tcID_count  , HttpStatus.OK);
            }
            else if (result_tcID_count==0) {
                System.out.println(4);
                return new ResponseEntity<Integer>(0, HttpStatus.OK);
            }
            else {
                System.out.println(5);
                return new ResponseEntity<Integer>(-1, HttpStatus.OK);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<Integer> (-1, HttpStatus.BAD_REQUEST);
        }

    }

}