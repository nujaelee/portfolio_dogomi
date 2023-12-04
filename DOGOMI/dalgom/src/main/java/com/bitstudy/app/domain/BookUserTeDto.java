package com.bitstudy.app.domain;

import java.util.Date;

public class BookUserTeDto {
//    book
    private Integer b_no;
    private Integer user_no;
    private Date book_date;
    private Integer tc_no;
    private Integer te_no;
    private String book_etc;
    private String book_state;
//      user_info
    private String user_name;
    private String user_call;
//      te_info
    private String te_name;
    private String te_in;
    private String te_out;

    public BookUserTeDto(Integer b_no, Integer user_no, Date book_date, Integer tc_no, Integer te_no, String book_etc, String book_state, String user_name, String user_call, String te_name, String te_in, String te_out) {
        this.b_no = b_no;
        this.user_no = user_no;
        this.book_date = book_date;
        this.tc_no = tc_no;
        this.te_no = te_no;
        this.book_etc = book_etc;
        this.book_state = book_state;
        this.user_name = user_name;
        this.user_call = user_call;
        this.te_name = te_name;
        this.te_in = te_in;
        this.te_out = te_out;
    }

    public BookUserTeDto() {
    }

    @Override
    public String toString() {
        return "BookUserTeDto{" +
                "b_no=" + b_no +
                ", user_no=" + user_no +
                ", book_date=" + book_date +
                ", tc_no=" + tc_no +
                ", te_no=" + te_no +
                ", book_etc='" + book_etc + '\'' +
                ", book_state='" + book_state + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_call='" + user_call + '\'' +
                ", te_name='" + te_name + '\'' +
                ", te_in='" + te_in + '\'' +
                ", te_out='" + te_out + '\'' +
                '}';
    }

    public Integer getB_no() {
        return b_no;
    }

    public void setB_no(Integer b_no) {
        this.b_no = b_no;
    }

    public Integer getUser_no() {
        return user_no;
    }

    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }

    public Date getBook_date() {
        return book_date;
    }

    public void setBook_date(Date book_date) {
        this.book_date = book_date;
    }

    public Integer getTc_no() {
        return tc_no;
    }

    public void setTc_no(Integer tc_no) {
        this.tc_no = tc_no;
    }

    public Integer getTe_no() {
        return te_no;
    }

    public void setTe_no(Integer te_no) {
        this.te_no = te_no;
    }

    public String getBook_etc() {
        return book_etc;
    }

    public void setBook_etc(String book_etc) {
        this.book_etc = book_etc;
    }

    public String getBook_state() {
        return book_state;
    }

    public void setBook_state(String book_state) {
        this.book_state = book_state;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_call() {
        return user_call;
    }

    public void setUser_call(String user_call) {
        this.user_call = user_call;
    }

    public String getTe_name() {
        return te_name;
    }

    public void setTe_name(String te_name) {
        this.te_name = te_name;
    }

    public String getTe_in() {
        return te_in;
    }

    public void setTe_in(String te_in) {
        this.te_in = te_in;
    }

    public String getTe_out() {
        return te_out;
    }

    public void setTe_out(String te_out) {
        this.te_out = te_out;
    }
}
