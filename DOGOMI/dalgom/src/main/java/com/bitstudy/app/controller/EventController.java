package com.bitstudy.app.controller;

import com.bitstudy.app.domain.EventDto;
import com.bitstudy.app.domain.PageHandler;
import com.bitstudy.app.domain.SearchDto;
import com.bitstudy.app.domain.TcDto;
import com.bitstudy.app.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/event")
public class EventController {

    @Autowired
    EventService eventService;

    @GetMapping("/list")
    public String eventList(Model model) {

        List<EventDto> list =  eventService.getEventList();

        model.addAttribute("list", list);

        return  "event";
    }

    @GetMapping("/info")
    public String eventInfo(int ev_no, Model model) {

        EventDto eventDto = eventService.getEventInfo(ev_no);

        model.addAttribute("eventDto", eventDto);

        return "eventInfo";
    }

    @GetMapping("/listPage")
    public String eventListPage(SearchDto searchDto, Model model, HttpServletRequest request) {

        try {

            int totalCount = eventService.getEventListPageCount();

            PageHandler ph = new PageHandler(totalCount, searchDto.getPageSize(), searchDto.getPage());
            int offset = (searchDto.getPage()-1)*searchDto.getPageSize();
            searchDto.setOffset(offset);
            int pageSize = ph.getPageSize();
            int realOffSet = searchDto.getOffset();

            Map map = new HashMap<>();
            map.put("offset", realOffSet);
            map.put("pageSize",pageSize);

            List<EventDto> list = eventService.getEventListPage(map);

            model.addAttribute("map", map);
            model.addAttribute("ph", ph);
            model.addAttribute("list", list);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return "event";
    }


//    public List<EventDto> getEventListPage(Map map) {
//
//        List<EventDto> eventDto = eventDao.getEventListPage(map);
//
//        return eventDto;
//    }
//
//    public int getEventListPageCount() {
//
//        int count = eventDao.getEventListPageCount();
//
//        return count;
//    }

}
