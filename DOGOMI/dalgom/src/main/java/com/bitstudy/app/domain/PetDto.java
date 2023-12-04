package com.bitstudy.app.domain;

import java.util.Date;

public class PetDto {
    private int p_no;
    private int user_no;
    private String p_name;
    private String p_birth;
    private String p_size;
    private Double p_weight;
    private String p_vaccine;
    private String p_kind;
    private String p_gender;
    private String p_blood;

    public PetDto() {
    }

    public PetDto(int p_no, int user_no, String p_name, String p_birth, String p_size, Double p_weight, String p_vaccine, String p_kind, String p_gender, String p_blood) {
        this.p_no = p_no;
        this.user_no = user_no;
        this.p_name = p_name;
        this.p_birth = p_birth;
        this.p_size = p_size;
        this.p_weight = p_weight;
        this.p_vaccine = p_vaccine;
        this.p_kind = p_kind;
        this.p_gender = p_gender;
        this.p_blood = p_blood;
    }

    @Override
    public String toString() {
        return "PetDtoMap{" +
                "p_no=" + p_no +
                ", user_no=" + user_no +
                ", p_name='" + p_name + '\'' +
                ", p_birth=" + p_birth +
                ", p_size='" + p_size + '\'' +
                ", p_weight=" + p_weight +
                ", p_vaccine='" + p_vaccine + '\'' +
                ", p_kind='" + p_kind + '\'' +
                ", p_gender=" + p_gender +
                ", p_blood='" + p_blood + '\'' +
                '}';
    }

    public int getP_no() {
        return p_no;
    }

    public void setP_no(int p_no) {
        this.p_no = p_no;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_birth() {
        return p_birth;
    }

    public void setP_birth(String p_birth) {
        this.p_birth = p_birth;
    }

    public String getP_size() {
        return p_size;
    }

    public void setP_size(String p_size) {
        this.p_size = p_size;
    }

    public Double getP_weight() {
        return p_weight;
    }

    public void setP_weight(Double p_weight) {
        this.p_weight = p_weight;
    }

    public String getP_vaccine() {
        return p_vaccine;
    }

    public void setP_vaccine(String p_vaccine) {
        this.p_vaccine = p_vaccine;
    }

    public String getP_kind() {
        return p_kind;
    }

    public void setP_kind(String p_kind) {
        this.p_kind = p_kind;
    }

    public String getP_gender() {
        return p_gender;
    }

    public void setP_gender(String p_gender) {
        this.p_gender = p_gender;
    }

    public String getP_blood() {
        return p_blood;
    }

    public void setP_blood(String p_blood) {
        this.p_blood = p_blood;
    }
}
