package com.bitstudy.app.domain;

public class JjimTeDto {
    private Integer jjim_no;
    private Integer te_no;
    private Integer user_no;

    private Integer tc_no;
    private String te_name;
    private String te_in;
    private String te_out;
    private String te_petsize;
    private int te_cost;

    private String tc_name;

    public JjimTeDto() {
    }

    public JjimTeDto(Integer jjim_no, Integer te_no, Integer user_no, Integer tc_no, String te_name, String te_in, String te_out, String te_petsize, int te_cost, String tc_name) {
        this.jjim_no = jjim_no;
        this.te_no = te_no;
        this.user_no = user_no;
        this.tc_no = tc_no;
        this.te_name = te_name;
        this.te_in = te_in;
        this.te_out = te_out;
        this.te_petsize = te_petsize;
        this.te_cost = te_cost;
        this.tc_name = tc_name;
    }

    public String getTe_petsize() {
        return te_petsize;
    }

    public void setTe_petsize(String te_petsize) {
        this.te_petsize = te_petsize;
    }

    public int getTe_cost() {
        return te_cost;
    }

    public void setTe_cost(int te_cost) {
        this.te_cost = te_cost;
    }

    public String getTe_name() {
        return te_name;
    }

    public void setTe_name(String te_name) {
        this.te_name = te_name;
    }

    public Integer getJjim_no() {
        return jjim_no;
    }

    public void setJjim_no(Integer jjim_no) {
        this.jjim_no = jjim_no;
    }

    public Integer getTe_no() {
        return te_no;
    }

    public void setTe_no(Integer te_no) {
        this.te_no = te_no;
    }

    public Integer getUser_no() {
        return user_no;
    }

    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }

    public Integer getTc_no() {
        return tc_no;
    }

    public void setTc_no(Integer tc_no) {
        this.tc_no = tc_no;
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

    public String getTc_name() {
        return tc_name;
    }

    public void setTc_name(String tc_name) {
        this.tc_name = tc_name;
    }

    @Override
    public String toString() {
        return "JjimTeDto{" +
                "jjim_no=" + jjim_no +
                ", te_no=" + te_no +
                ", user_no=" + user_no +
                ", tc_no=" + tc_no +
                ", te_name='" + te_name + '\'' +
                ", te_in='" + te_in + '\'' +
                ", te_out='" + te_out + '\'' +
                ", te_petsize='" + te_petsize + '\'' +
                ", te_cost=" + te_cost +
                ", tc_name='" + tc_name + '\'' +
                '}';
    }
}
