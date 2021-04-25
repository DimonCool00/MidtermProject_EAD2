package com.example.MidtermProject_EAD2.models;

public class Room {

    private String roomName;
    private String roomPrice;
    private String description;
    private String phoneNum;
    private String roomType;

    public Room(){

    }
    public Room(String roomName, String roomPrice, String description, String phoneNum, String roomType) {
        this.roomName = roomName;
        this.roomPrice = roomPrice;
        this.description = description;
        this.phoneNum = phoneNum;
        this.roomType = roomType;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(String roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }
}
