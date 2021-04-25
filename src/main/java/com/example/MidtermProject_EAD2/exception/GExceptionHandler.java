package com.example.MidtermProject_EAD2.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
@Component
public class GExceptionHandler {
    @ExceptionHandler(value = EmailException.class)
    public ResponseEntity<ErrorResponse> handleDivideByZeroException(EmailException e) {

        ErrorResponse errorResponse = new ErrorResponse("DIVIDE_BY_ZERO_ERROR", e.getMessage());

        return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
    }
}
