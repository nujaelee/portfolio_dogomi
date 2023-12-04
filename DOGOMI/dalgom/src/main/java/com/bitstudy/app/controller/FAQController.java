package com.bitstudy.app.controller;

import com.bitstudy.app.domain.CsDto;
import com.bitstudy.app.domain.NoticeDto;
import com.bitstudy.app.service.CsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cs")
public class FAQController {

    @Autowired
    CsService csService;

    @GetMapping("/list")
    public String csList(Model model) {

        List<CsDto> csList = csService.selectCsList();
        List<NoticeDto> ntList = csService.selectNoticeList(1);

        model.addAttribute("csList",csList);
        model.addAttribute("ntList",ntList);

        return "customerServiceCenter";
    }
//
//    @GetMapping("/ntInfo")
//    public String ntInfo() {
//
//
//
//
//        return "customerServiceCenter";
//    }
//
//    @GetMapping("/csInfo")
//    public String csInfo() {
//
//
//
//
//        return "customerServiceCenter";
//    }







}
