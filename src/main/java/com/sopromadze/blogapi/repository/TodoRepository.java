package com.sopromadze.blogapi.repository;

import com.sopromadze.blogapi.model.todo.Todo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TodoRepository extends CrudRepository<Todo, Long> {
    Page<Todo> findByCreatedBy(Long userId, Pageable pageable);
}
