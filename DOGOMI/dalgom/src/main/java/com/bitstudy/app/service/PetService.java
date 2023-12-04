package com.bitstudy.app.service;

import com.bitstudy.app.dao.PetDao;
import com.bitstudy.app.domain.PetDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PetService {
    @Autowired
    PetDao petDao;

    public List<PetDto> getPet(Integer user_no){
        return petDao.selectPet(user_no);
    }

    public int inputPet(PetDto petDto){
        return petDao.input_pet(petDto);
    }

    public int modifyPetMap(Map map){
        return petDao.modifyPetMap(map);
    }

    public int dropPetAll(Integer user_no){
        return petDao.dropPetAll(user_no);
    }

    public int dropPet(Integer p_no){
        return petDao.dropPet(p_no);
    }
}
