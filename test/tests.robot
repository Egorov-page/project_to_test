*** Settings ***

Library  ../lib/todoistApi.py
Resource  keywords.robot

*** Test Cases ***
## Позитивные сценарии

Create New Project  ## Создание нового проекта
    Create New Project and Verify it was created

Create New Task  ## Создание новой задачи
    Create New Task and Verify it was created

Create New Task with date  ## Создание новой задачи с датой
    Create New Task with date and Verify it was created

Create New Task with date and time  ## Создание новой задачи с датой и временем
    Create New Task with date and time Verify it was created

Create New SubTask  ## Создание новой подзадачи
    Create New Subtask and Verify it was created

## Негативные сценарии

Create New Project without name  ## Создание нового проекта без имени
    Create New Project without name

Create New Task with error date
    Create New Task with error date

Create New Task with error time
    Create New Task with error time

Create New Note
    Create New Note
#cd C:\Users\python\PycharmProjects\project_to_test
#/robot test\tTest.robot