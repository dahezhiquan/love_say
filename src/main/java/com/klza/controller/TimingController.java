package com.klza.controller;

import com.klza.utils.EmailSend;
import com.klza.pojo.EmailContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;

/**
 * 定时发送邮件的控制器
 * 为了防止邮件发送源因为频率问题发送邮件失败
 * 采取分批定时发送
 */
@Controller
public class TimingController {
    @Autowired
    EmailSend emailSend;

    @Autowired
    EmailContent emailContent;

    @Autowired
    WhatSayController whatSayController;

    /**
     * 每天晚上8点30，给小钱发邮件
     */
    @Scheduled(cron = "0 30 20 * * ?")
    public void xiaoQian() throws MessagingException, UnsupportedEncodingException {
        emailContent.setSubject(whatSayController.say().getSubject());
        emailContent.setText(whatSayController.say().getText());
        emailContent.setImgSrc(whatSayController.say().getImgSrc());
        emailContent.setSendToEmail("1341791452@qq.com");
        emailSend.sendEmailByMime(emailContent);
    }

    /**
     * 每天晚上8点30，给自己发一封测试邮件
     */
    @Scheduled(cron = "0 30 20 * * ?")
    public void mine() throws MessagingException, UnsupportedEncodingException {
        emailContent.setSubject(whatSayController.say().getSubject());
        emailContent.setText(whatSayController.say().getText());
        emailContent.setImgSrc(whatSayController.say().getImgSrc());
        emailContent.setSendToEmail("3390205563@qq.com");
        emailSend.sendEmailByMime(emailContent);
    }
}
