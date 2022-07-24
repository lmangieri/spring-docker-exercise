package com.leandro.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.leandro.test" })
public class Application {
    
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
