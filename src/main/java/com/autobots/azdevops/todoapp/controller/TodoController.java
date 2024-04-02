package com.autobots.azdevops.todoapp.controller;

import com.autobots.azdevops.todoapp.entity.Todo;
import com.autobots.azdevops.todoapp.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/todos")
public class TodoController {

    @Autowired
    TodoRepository todoRepository;

    @GetMapping
    public List<Todo> getAllTodos(){
        List<Todo> todos = todoRepository.findAll();
        System.out.println(todos);
        return todos;
    }
}
