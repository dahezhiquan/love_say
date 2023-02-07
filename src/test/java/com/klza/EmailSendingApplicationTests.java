package com.klza;

import com.klza.utils.EmailSend;
import com.klza.utils.TimeInfo;
import com.klza.controller.TimingController;
import com.klza.controller.WhatSayController;
import com.klza.mapper.SayMapper;
import com.klza.pojo.EmailContent;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.mail.MessagingException;
import javax.sql.DataSource;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;

@SpringBootTest
class EmailSendingApplicationTests {
    @Autowired
    EmailSend emailSend;

    @Autowired
    EmailContent emailContent;

    @Autowired
    DataSource dataSource;

    @Autowired
    private SayMapper sayMapper;

    @Autowired
    TimeInfo timeInfo;

    @Autowired
    TimingController timingController;

    @Autowired
    WhatSayController whatSayController;


    /**
     * 邮件分发测试
     *
     * @throws MessagingException           MessagingException
     * @throws UnsupportedEncodingException UnsupportedEncodingException
     */
    @Test
    void emailSendTest() throws MessagingException, UnsupportedEncodingException {
        emailContent.setText("内容");
        emailContent.setSubject("主题");
        emailContent.setSendToEmail("your-email@qq.com");
        System.out.println(emailContent);
        emailSend.sendEmailByMime(emailContent);
    }

    /**
     * 数据源测试
     */
    @Test
    void dataSourceTest() {
        System.out.println(dataSource.getClass());
    }

    /**
     * SQL语句测试
     */
    @Test
    void sqlTest() {
        EmailContent sayById = sayMapper.querySayById(1);
        System.out.println(sayById);
        int i = sayMapper.queryCount();
        System.out.println(i);
    }

    /**
     * 测试时间工具类
     */
    @Test
    void timeTest() {
        LocalDate nowTime = timeInfo.getNowTime();
        System.out.println(nowTime);
        long timeDiff = timeInfo.getTimeDiff();
        System.out.println(timeDiff);
        long l = timeInfo.whatId();
        System.out.println(l);
    }

    /**
     * 今天说什么测试类
     */
    @Test
    void sayTest() {
        EmailContent say = whatSayController.say();
        System.out.println(say);
    }
}
