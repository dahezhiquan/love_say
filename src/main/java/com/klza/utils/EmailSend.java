package com.klza.utils;

import com.klza.pojo.EmailContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;

/**
 * 关于邮件发送的工具
 */
@Component
public class EmailSend {
    @Autowired
    JavaMailSenderImpl mailSender;

    // 邮件模板引擎
    @Autowired
    private TemplateEngine templateEngine;

    /**
     * 发送邮件的工具类
     *
     * @param emailContent 邮件消息对象
     * @throws MessagingException           MessagingException
     * @throws UnsupportedEncodingException UnsupportedEncodingException
     */
    public void sendEmailByMime(EmailContent emailContent) throws MessagingException, UnsupportedEncodingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

        helper.setSubject(emailContent.getSubject());


        // 邮件内容，使用自定义的email_template邮件模板
        Context context = new Context();
        context.setVariable("sendFromName", emailContent.getSendFromName());
        context.setVariable("subject", emailContent.getSubject());
        context.setVariable("text", emailContent.getText());
        context.setVariable("imgSrc", emailContent.getImgSrc());
        String mail = templateEngine.process("email_template", context);

        helper.setText(mail, true);

        helper.setTo(emailContent.getSendToEmail());
        helper.setFrom(String.valueOf(new InternetAddress(emailContent.getSendFromEmail(), emailContent.getSendFromName(), "UTF-8")));

        mailSender.send(mimeMessage);
    }
}
