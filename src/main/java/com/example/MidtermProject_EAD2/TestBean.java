package com.example.MidtermProject_EAD2;

import java.io.Serializable;

public class TestBean implements Serializable {
    private int id = 0;
    private String name = "null";
    public double CalculPrice(int num, int days, String room){
        double res=0;
        if(room.equals("standard")){
            res = num*days*30000;
        }
        else if(room.equals("lux")){
            res =num*days*50000;
        }
        else if(room.equals("presidential")){
            res =num*days*100000;
        }
        return res;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
