package com.bitstudy.app.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ReviewDto {
    private Integer re_no;
    private Integer tc_no;
    private Integer user_no;
    private String user_id;


    private String re_img;
    private String re_content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date re_update;

    public ReviewDto() {
    }

    public ReviewDto(Integer re_no, Integer tc_no, Integer user_no) {
        this.re_no = re_no;
        this.tc_no = tc_no;
        this.user_no = user_no;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "ReviewDto{" +
                "re_no=" + re_no +
                ", tc_no=" + tc_no +
                ", user_no=" + user_no +
                ", user_id='" + user_id + '\'' +
                ", re_img='" + re_img + '\'' +
                ", re_content='" + re_content + '\'' +
                ", re_update=" + re_update +
                '}';
    }

    public Integer getRe_no() {
        return re_no;
    }

    public void setRe_no(Integer re_no) {
        this.re_no = re_no;
    }

    public Integer getTc_no() {
        return tc_no;
    }

    public void setTc_no(Integer tc_no) {
        this.tc_no = tc_no;
    }

    public Integer getUser_no() {
        return user_no;
    }

    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }

    public String getRe_img() {
        return re_img;
    }

    public void setRe_img(String re_img) {
        this.re_img = re_img;
    }

    public String getRe_content() {
        return re_content;
    }

    public void setRe_content(String re_content) {
        this.re_content = re_content;
    }

    public Date getRe_update() {
        return re_update;
    }

    public void setRe_update(Date re_update) {
        this.re_update = re_update;
    }
}
