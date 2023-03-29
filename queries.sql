-- Section1
   CREATE TABLE events (id bigint UNSIGNED PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) , description TEXT ,
    date DATETIME ,  created_at DATETIME DEFAULT CURRENT_TIMESTAMP );

-- Section2
 create table event_user(
    user_id bigint unsigned,
    event_id bigint unsigned,

  constraint event_user_fk_users
    foreign key (user_id) references users (id) ON DELETE CASCADE,

  constraint event_user_fk_events
    foreign key (event_id) references events (id) ON DELETE CASCADE);