package lanz.global.notificationservice.consumer;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lanz.global.notificationservice.event.EmailEvent;
import lanz.global.notificationservice.service.NotificationService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class NotificationConsumer {

    private final NotificationService notificationService;
    private final ObjectMapper objectMapper;

    @KafkaListener(topics = "notification-topic", groupId = "notification-group")
    public void consume(String message) {
        try {
            EmailEvent event = objectMapper.readValue(message, EmailEvent.class);
            notificationService.sendNotification(event);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}
