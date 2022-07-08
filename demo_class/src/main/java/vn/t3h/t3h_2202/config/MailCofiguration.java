//package vn.t3h.t3h_2202.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.JavaMailSenderImpl;
//import vn.t3h.t3h_2202.MyConstants;
//
//import java.util.Properties;
//@Configuration
//public class MailCofiguration {
//    @Bean
//    public JavaMailSender getJavaMailSender() {
//        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
//        mailSender.setHost("smtp.gmail.com");
//        mailSender.setPort(587);
//
//        mailSender.setUsername(MyConstants.MY_EMAIL);
//        mailSender.setPassword(MyConstants.MY_PASSWORD);
//
//        Properties props = mailSender.getJavaMailProperties();
//        props.put("mail.transport.protocol", "smtp");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.
//        return mailSendedebug", "true");
////r;
//    }
//}
