package com.bitstudy.app.service;

import com.bitstudy.app.dao.CommentDao;
import com.bitstudy.app.dao.CommunityDao;
import com.bitstudy.app.domain.CommentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class CommentService {

    @Autowired
    CommentDao commentDao;

    @Autowired
    CommunityDao communityDao;

    @Transactional(rollbackFor = Exception.class)
    public List<CommentDto> cmmt_load(Integer cu_no){
        return commentDao.cmmt_select(cu_no);
    }

    @Transactional(rollbackFor = Exception.class)
    public int remove(Integer cu_no, Integer co_no, String user_id){
        return commentDao.delete(co_no, user_id);
    }

    @Transactional(rollbackFor = Exception.class)
    public int update(CommentDto commentDto){
        return commentDao.update(commentDto);
    }


    @Transactional(rollbackFor = Exception.class)
    public int add(Integer cu_no, CommentDto commentDto) {
        return commentDao.insert(commentDto);
    }

}
