package lanz.global.notificationservice.event;

import lombok.Getter;

@Getter
public enum EmailTypeEnum {

    NEW_USER_REGISTERED("new_user_registered");

    final String template;


    EmailTypeEnum(String template) {
        this.template = template;
    }
}
