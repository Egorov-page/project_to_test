*** Settings ***

Library  ../lib/todoistApi.py

*** Keywords ***

Create New Project and Verify it was created

    ${Project} =  create project  project  ## Создаем новый проект
    log  ${Project}
    ${check_project} =  get project  ${Project}  ## Получаем последий проект
    log  ${check_project}
    should be equal as strings  ${check_project}   True  ##ID созданного и последнего проекта должны совпадать

Create New Task and Verify it was created

    ${Item} =  create task  task  ##Создаем новую задачу и получаем ее ID
    log  ${Item}
    ${check_item} =  get task  ${Item}
    log  ${check_item}
    should be equal as strings  ${check_item}   True  ##Проверяем есть ли задача с таким ID


Create New Subtask and Verify it was created

    ${Item} =  create subtask  subtask
    log  ${Item}
    ${check_item} =  get task  ${Item}
    log  ${check_item}
    should be equal as strings  ${check_item}   True

Create New Task with date and Verify it was created

    ${Item} =  create task with date  task with date  2021-12-14
    log  ${Item}
    ${check_item} =  get task  ${Item}
    log  ${check_item}
    should be equal as strings  ${check_item}   True

Create New Task with date and time Verify it was created

    ${Item} =  create task with date  task with datetime  2021-12-14T10:00:00
    log  ${Item}
    ${check_item} =  get task  ${Item}
    log  ${check_item}
    should be equal as strings  ${check_item}   True

Create New Project without name

    ${Project} =  create project  ${None}
    should be equal as strings  ${Project}   False

Create New Task with error date

    ${Item} =  create task with date  task with date  2021-22-14
    should be equal as strings  ${Item}   False

Create New Task with error time

    ${Item} =  create task with date  task with date  2021-12-14T10:70:00
    should be equal as strings  ${Item}   False

Create New Note

    ${Note} =  create notes  Note1
    should be equal as strings  ${Note}   False
