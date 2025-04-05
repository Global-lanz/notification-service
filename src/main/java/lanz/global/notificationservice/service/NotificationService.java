package lanz.global.notificationservice.service;

import lanz.global.notificationservice.event.EmailEvent;
import lanz.global.notificationservice.event.Event;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Locale;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class NotificationService {

    private final EmailService emailService;

    public void sendNotification(Event event) {
        switch (event.type) {
            case EMAIL: {
                emailService.sendEmail((EmailEvent) event, event.locale != null ? Locale.forLanguageTag(event.locale) : Locale.ENGLISH);
            }
        }
    }

}
