package com.bitstudy.app.domain;

import java.util.Date;

public class EventDto {
    private Integer ev_no;
    private String ev_title;
    private String ev_img;
    private Date ev_update;
    private String ev_img2;

    public EventDto() {
    }

    public Integer getEv_no() {
        return ev_no;
    }

    public void setEv_no(Integer ev_no) {
        this.ev_no = ev_no;
    }

    public String getEv_title() {
        return ev_title;
    }

    public void setEv_title(String ev_title) {
        this.ev_title = ev_title;
    }

    public String getEv_img() {
        return ev_img;
    }

    public void setEv_img(String ev_img) {
        this.ev_img = ev_img;
    }

    public Date getEv_update() {
        return ev_update;
    }

    public void setEv_update(Date ev_update) {
        this.ev_update = ev_update;
    }

    public String getEv_img2() {
        return ev_img2;
    }

    public void setEv_img2(String ev_img2) {
        this.ev_img2 = ev_img2;
    }
}
