package com.example.springboot.controller.request;

import lombok.Data;
/**
* @author MagicOVO
*/
@Data
public class PasswordRequest {
    private String username;
    private String password;
    private String newPass;
}