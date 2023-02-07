package com.klza.controller;

import com.klza.utils.TimeInfo;
import com.klza.mapper.SayMapper;
import com.klza.pojo.EmailContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * 今天该说什么了？
 */
@Controller
public class WhatSayController {
    @Autowired
    TimeInfo timeInfo;

    @Autowired
    private SayMapper sayMapper;

    @Autowired
    private EmailContent emailContent;

    /**
     * 今天说什么
     *
     * @return 今天说的内容
     */
    public EmailContent say() {
        int id = (int) timeInfo.whatId();

        // 防止id值大于数据库表记录数导致的查询错误
        int i = sayMapper.queryCount();
        if (id > i) {
            emailContent.setSubject("人家找不到啦");
            emailContent.setText("我的肚子里已经没有更多的情话了/(ㄒoㄒ)/~~");
            emailContent.setImgSrc("https://inews.gtimg.com/newsapp_bt/0/14219697140/641");
            return emailContent;
        }

        return sayMapper.querySayById(id);
    }
}
