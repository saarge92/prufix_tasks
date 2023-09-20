CREATE TABLE user_group
(
    id          INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(255) NOT NULL UNIQUE,
    field_rules JSON         NOT NULL COMMENT '{
                                    "display_on_login_name": true,
                                    "display_on_register_name": false,
                                    "display_on_login_email": true,
                                    "display_on_register_email": false
                            }'
);

CREATE TABLE user
(
    id            INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_group_id INT UNSIGNED NOT NULL,
    name          VARCHAR(255) NOT NULL,
    email         VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_group_id) REFERENCES user_group (id)
)
