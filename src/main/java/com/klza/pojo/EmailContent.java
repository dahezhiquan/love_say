package com.klza.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * 邮件消息对象
 * subject：邮件主题
 * text：邮件内容
 * sendFromEmail：邮件发送者的邮箱
 * sendToEmail：邮件接受者的邮箱
 * sendFromName：邮件发送者的名字
 * imgSrc：邮件发送底部的图片URL
 */

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailContent {
    private String subject;
    private String text;
    @Value("${spring.mail.username}")
    private String sendFromEmail;
    private String sendToEmail;
    @Value("${recipient.sendFromName}")
    private String sendFromName;
    private String imgSrc;
}
