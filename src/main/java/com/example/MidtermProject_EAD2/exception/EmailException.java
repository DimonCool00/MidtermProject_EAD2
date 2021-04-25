package com.example.MidtermProject_EAD2.exception;

public class EmailException extends ArithmeticException{
    public EmailException() {
        super("Incorrect format of the date");
    }

    public EmailException(String s) {
        super(s);
    }
}
