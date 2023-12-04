package com.bitstudy.app.domain;

import java.util.Date;

public class BookDto {
    private Integer b_no;
    private Integer user_no;
    private Date book_date;
    private Integer tc_no;
    private Integer te_no;
    private String book_etc;
    private String book_state;

    public BookDto() { }

    public BookDto(Integer b_no, Integer user_no, Date book_date, Integer tc_no, Integer te_no, String book_etc, String book_state) {
        this.b_no = b_no;
        this.user_no = user_no;
        this.book_date = book_date;
        this.tc_no = tc_no;
        this.te_no = te_no;
        this.book_etc = book_etc;
        this.book_state = book_state;
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

    @Override
    public String toString() {
        return "BookDto{" +
                "b_no=" + b_no +
                ", user_no=" + user_no +
                ", book_date=" + book_date +
                ", tc_no=" + tc_no +
                ", te_no=" + te_no +
                ", book_etc='" + book_etc + '\'' +
                ", book_state='" + book_state + '\'' +
                '}';
    }
}
