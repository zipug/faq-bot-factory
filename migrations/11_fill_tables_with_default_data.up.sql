INSERT INTO users (state, name, lastname, email, password)
VALUES ('verified', 'Admin', 'Admin', 'admin@admin.com', '$2a$10$Eimi6mYCXTVvxgbm8bZo1.y58mwddcPKCTmterT.Hmnhj01nm4cdm'), -- admin
('verified', 'Support', 'Support', 'support@support.com', '$2a$10$gSinpyWRt.aUe/3aWhkgzeARD2DYfEgQwOlJ7s92Wj0.RSQZUX8Aa'), -- support
('registered', 'Name', 'Lastname', 'test@test.com', '$2a$10$EqnhRhSZsSjmHhP9FLONH.23oHBrTS0cXXGdvyfiPFReoNLceJk7W'); -- password 

INSERT INTO roles (name, description)
VALUES ('admin', 'Administrator with full features'),
('user', 'User with basic features'),
('support', 'Support with support features');

INSERT INTO permissions (name, description)
VALUES ('bots_feature', 'Вкладка с ботами'),
('roles_feature', 'Вкладка с ролями'),
('permissions_feature', 'Вкладка с возможностями'),
('projects_feature', 'Вкладка с проектами'),
('users_feature', 'Вкладка с пользователя'),
('articles_feature', 'Вкладка со статьями'),
('reports_feature', 'Вкладка с отчётами'),
('attachments_feature', 'Вкладка с файлами (приложения к статьям)');

INSERT INTO role_permissions (role_id, permission_id, do_create, do_read, do_update, do_delete)
VALUES (1, 1, true, true, true, true),
(1, 2, true, true, true, true),
(1, 3, false, true, false, false),
(1, 4, true, true, true, true),
(1, 5, true, true, true, true),
(1, 6, true, true, true, true),
(1, 7, true, true, true, true),
(1, 8, true, true, true, true),
(2, 1, true, true, true, true),
(2, 2, false, false, false, false),
(2, 3, false, false, false, false),
(2, 4, true, true, true, true),
(2, 5, false, false, false, false),
(2, 6, true, true, true, true),
(2, 7, true, true, true, true),
(2, 8, true, true, true, true),
(3, 1, false, true, false, false),
(3, 2, false, true, false, false),
(3, 3, false, false, false, false),
(3, 4, false, true, false, false),
(3, 5, false, true, false, false),
(3, 6, false, true, false, false),
(3, 7, false, true, true, false),
(3, 8, false, true, false, false);

INSERT INTO user_roles (role_id, user_id)
VALUES (1, 1),
(2, 2),
(3, 3);
