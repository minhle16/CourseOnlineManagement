REPLACE INTO `role` VALUES (1,'ADMIN');

INSERT INTO `user` (`user_id`, `active`, `email`, `username`, `password`) VALUES
(1, 1, 'heohust@gmail.com', 'Nguyen Thi Hoai', '$2a$10$IACSy.d9e1eEKlyobvccEuncK4XsoxrsppPcUUYrdx14/Do/.oZya');

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES(1, 1);

