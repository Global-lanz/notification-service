package lanz.global.notificationservice.event;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.util.Map;

@AllArgsConstructor
@NoArgsConstructor
public class EmailEvent extends Event {

    @Serial
    private static final long serialVersionUID = -2696991140900785931L;

    public String email;
    public String subject;
    public EmailTypeEnum emailType;
    public Map<String, Object> data;

}
