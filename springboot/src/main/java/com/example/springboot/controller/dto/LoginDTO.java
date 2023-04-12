package com.example.springboot.controller.dto;

import lombok.Data;

/**
 * @author MagicOVO
 */
@Data
public class LoginDTO {
    private Integer id;
    private String username;
    private String phone;
    private String email;
    private String token;
}
