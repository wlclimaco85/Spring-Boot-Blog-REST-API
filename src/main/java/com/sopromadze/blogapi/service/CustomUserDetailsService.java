package com.sopromadze.blogapi.service;

import com.sopromadze.blogapi.model.user.User;
import com.sopromadze.blogapi.repository.UserRepository;
import com.sopromadze.blogapi.security.UserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class CustomUserDetailsService  implements UserDetailsService {
    private final UserRepository userRepository;

    @Autowired
    public CustomUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
        User user = userRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail).orElseThrow(() -> new UsernameNotFoundException(String.format("User not found with this username or email: %s", usernameOrEmail)));
        return UserPrincipal.create(user);
    }

    @Transactional
    public UserDetails loadUserById(Long id){
        User user = userRepository.findById(id).orElseThrow(() -> new UsernameNotFoundException(String.format("User not found with id: %s", id)));

        return UserPrincipal.create(user);
    }
}
