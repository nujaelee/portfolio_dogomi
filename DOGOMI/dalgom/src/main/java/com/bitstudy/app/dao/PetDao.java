package com.bitstudy.app.dao;

import com.bitstudy.app.domain.PetDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class PetDao {
    @Autowired
    SqlSession session;

    String namespace = "com.bitstudy.app.dao.petMapper.";

    // 펫 정보 다갖고왕
    public List<PetDto> selectPet(Integer user_no){
        return session.selectList(namespace+"pet_select", user_no);
    }

    // 펫 추가할거양
    public int input_pet(PetDto petDto){
        return session.insert(namespace+"pet_input",petDto);
    }

    // 펫 정보 수정 map으로 해
    public int modifyPetMap(Map map){
        return session.update(namespace+"pet_modify_map", map);
    }

    // 펫 정보 다 없애
    public int dropPetAll(Integer user_no){
        return session.delete(namespace+"pet_drop_all", user_no);
    }

    // 펫 정보 하나만 없애
    public int dropPet(Integer p_no){
        return session.delete(namespace+"pet_drop", p_no);
    }
}
