package com.example.springboot;

import cn.hutool.crypto.SecureUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringbootApplicationTests {
    private static final String PASS_SALT = "book";
    @Test
    void contextLoads() {
    }
    @Test
    public void testContext(){
        String md5 = SecureUtil.md5("admin" + PASS_SALT);
        System.out.println("---------------"+md5+"---------------");
    }
}
