package com.example.demo;

import org.springframework.boot.SpringApplication;

public class TestGoldApplication {

  public static void main(String[] args) {
    SpringApplication.from(GoldApplication::main).with(TestcontainersConfiguration.class).run(args);
  }
}
