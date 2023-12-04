package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.CommentDto;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    CommentService commentService;
    @Autowired
    UserDao userDao;

    // 해당 게시글의 댓글 전체 불러오기
    @GetMapping("/comments")
    @ResponseBody
    public ResponseEntity<List<CommentDto>> list(Integer cu_no) {
        try {
            List<CommentDto> list = commentService.cmmt_load(cu_no);
            return new ResponseEntity<List<CommentDto>> (list, HttpStatus.OK); // 200
        } catch (Exception e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
            return new ResponseEntity<List<CommentDto>> (HttpStatus.BAD_REQUEST); // 400
        }
        /* ResponseEntity - 응답이나 요청시 전송할 정보를 보낼 대상에게 상태코드를 설정 */
    }


    /* 댓글 등록 */
    @PostMapping("/comments")
    @ResponseBody
    public ResponseEntity<String> tt(CommentDto commentDto, HttpSession session, String co_comment) {
//        System.out.println("commentDto: " + commentDto);
//        System.out.println("bno:" + bno);
//        System.out.println("co_comment:" + co_comment);
        try {
            // 현재 로그인 한 유저 아이디 저장(DTO에 담을 용도)
            String user_id = (String)session.getAttribute("user_id");
            commentDto.setUser_id(user_id);
            UserDto userDto = userDao.selectUser(user_id);
            commentDto.setUser_no(userDto.getUser_no());
            if(commentService.add(commentDto.getCu_no(), commentDto) != 1) {
                throw new Exception("실패");
            }
            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK); // 200
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> ("댓글 등록 실패", HttpStatus.BAD_REQUEST); // 400
        }
    }

    /* 수정 - comment.jsp 에서 댓글 '등록' 누르고 왔을때 */
    @PatchMapping("/comments/{co_no}/{co_comment}")
    public ResponseEntity<String> modify(@PathVariable String co_comment, CommentDto commentDto, @PathVariable Integer co_no, HttpSession session ) {
        try {
//            System.out.println("co_comment"+co_comment);
//            System.out.println("co_no: "+co_no+"commentDto: "+commentDto);
//            System.out.println(1);
            String user_id = (String)session.getAttribute("user_id");

//            System.out.println(3);
            commentDto.setUser_id(user_id);
            commentDto.setCo_comment(co_comment);

//            System.out.println(5);
            commentDto.setCo_no(co_no);

//            System.out.println(6);

            if(commentService.update(commentDto) != 1) {
                throw new Exception("실패");
            }

//            System.out.println(7);

            return new ResponseEntity<String> ("댓글 수정 성공", HttpStatus.OK); // 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> ("댓글 수정 실패", HttpStatus.BAD_REQUEST); // 400
        }


    }


    /* 삭제 */
    @DeleteMapping("/comments/{co_no}/{cu_no}")
    @ResponseBody
    /* (Restful API) {cno} 처럼 맵핑된 URL의 일부 값을 가져올 때는 @PathVariable를 붙인다.   */
//    @ResponseBody
    public ResponseEntity<String> remove(@PathVariable Integer co_no, @PathVariable Integer cu_no, HttpSession session) {
        try {
            String user_id = (String)session.getAttribute("user_id");
//            System.out.println("co_no"+co_no+"cu_no: "+cu_no);
            if(commentService.remove(cu_no, co_no, user_id) != 1) {
                throw new Exception("실패");
            }
            return new ResponseEntity<String> ("댓글 삭제 성공", HttpStatus.OK); // 200
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> ("댓글 삭제 실패", HttpStatus.BAD_REQUEST); // 400
        }
    }
}
