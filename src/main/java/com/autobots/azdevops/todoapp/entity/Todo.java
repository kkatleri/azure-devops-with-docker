package com.autobots.azdevops.todoapp.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "todos")
public final class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String task;
    private Boolean completed;

    @Override
    public String toString() {
        return "Todo[" +
                "id=" + id + ", " +
                "task=" + task + ", " +
                "completed=" + completed + ']';
    }
}
