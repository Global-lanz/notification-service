package lanz.global.notificationservice.service;

import freemarker.template.Configuration;
import freemarker.template.Template;
import io.mailtrap.model.request.emails.Address;
import io.mailtrap.model.request.emails.MailtrapMail;
import jakarta.mail.internet.MimeMessage;
import lanz.global.notificationservice.event.EmailEvent;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import java.io.StringWriter;
import java.time.LocalDate;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class EmailService {

    private final Configuration freemarkerConfig;

    private final JavaMailSender mailSender;


    public void sendEmail(EmailEvent event, Locale locale) {
        try {
            Map<String, Object> data = event.data;
            data.put("year", LocalDate.now().getYear());

            String language = locale != null ? locale.getLanguage() : "en";
            String templatePath = String.format("email/%s/%s.ftl", language, event.emailType.getTemplate());

            Template template = freemarkerConfig.getTemplate(templatePath);
            StringWriter stringWriter = new StringWriter();
            template.process(data, stringWriter);

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(event.email);
            helper.setSubject(event.subject);
            helper.setText(stringWriter.toString(), true);
            helper.setFrom("global.lanzendorf.technologies@gmail.com");

            mailSender.send(message);
        } catch (Exception e) {
            throw new RuntimeException("Error while sending the e-mail", e);
        }
    }

    public MailtrapMail createEmailRequest(EmailEvent event, String html, Map<String, String> headers) {
        Address from = new Address("global.lanzendorf.technologies@gmail.com", "Global Lanz Technologies");
        Address to = new Address(event.email, event.data.get("name").toString());
        return MailtrapMail.builder()
                .from(from)
                .to(List.of(to))
                .html(html)
                .text(html)
                .subject(event.subject)
                .headers(headers)
                .build();
    }
}
