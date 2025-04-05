package lanz.global.notificationservice.event;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;
import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
public class Event implements Serializable {

    @Serial
    private static final long serialVersionUID = -1331277936052041632L;

    public UUID eventId;
    public EventEnum type;
    public String locale;
}
