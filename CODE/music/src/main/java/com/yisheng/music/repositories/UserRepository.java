package com.yisheng.music.repositories;

import com.yisheng.music.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface UserRepository extends JpaRepository<User,Long> {

    User findByName(String username);
}
