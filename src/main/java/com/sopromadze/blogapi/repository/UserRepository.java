package com.sopromadze.blogapi.repository;

import com.sopromadze.blogapi.model.user.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import javax.swing.text.html.Option;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends PagingAndSortingRepository<User, Long> {
    Optional<User> findByUsername(@NotBlank String username);
    Optional<User> findByEmail(@NotBlank String email);
    Boolean existsByUsername(@NotBlank String username);
    Boolean existsByEmail(@NotBlank String email);
    Optional<User> findByUsernameOrEmail(String username, String email);
}
