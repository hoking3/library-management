package com.example.springboot.controller.request;

import lombok.Data;

/**
 * @author MagicOVO
 */
@Data
public class AdminPageRequest extends BaseRequest{
    private String username;
    private String phone;
    private String email;
}