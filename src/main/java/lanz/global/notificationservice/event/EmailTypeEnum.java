package lanz.global.notificationservice.event;

import lombok.Getter;

@Getter
public enum EmailTypeEnum {

    NEW_USER_REGISTERED("new_user_registered"),
    INVITED_USER_REGISTERED("invited_user_registered"),
    PASSWORD_RECOVERY("password_recovery"),;

    final String template;


    EmailTypeEnum(String template) {
        this.template = template;
    }
}
