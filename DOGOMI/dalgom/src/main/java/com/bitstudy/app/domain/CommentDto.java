package com.bitstudy.app.domain;

import java.util.Date;

public class CommentDto {
    private Integer co_no;
    private Integer user_no;
    private String user_id;


    private Integer cu_no;
    private String co_comment;
    private Date co_update;

    public CommentDto() {
    }

    public Integer getCo_no() {
        return co_no;
    }

    public void setCo_no(Integer co_no) {
        this.co_no = co_no;
    }

    public Integer getUser_no() {
        return user_no;
    }

    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public Integer getCu_no() {
        return cu_no;
    }

    public void setCu_no(Integer cu_no) {
        this.cu_no = cu_no;
    }

    public String getCo_comment() {
        return co_comment;
    }

    public void setCo_comment(String co_comment) {
        this.co_comment = co_comment;
    }

    public Date getCo_update() {
        return co_update;
    }

    public void setCo_update(Date co_update) {
        this.co_update = co_update;
    }

    @Override
    public String toString() {
        return "CommentDto{" +
                "co_no=" + co_no +
                ", user_no=" + user_no +
                ", user_id='" + user_id + '\'' +
                ", cu_no=" + cu_no +
                ", co_comment='" + co_comment + '\'' +
                ", co_update=" + co_update +
                '}';
    }
}
