import todoist.api
from todoist.api import TodoistAPI

class todoistApi():

    ## Функция для создания нового проекта
    def create_project(self, project_name):
        try:
            api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
            api.projects.add(project_name)
            return api.commit()['projects'][0]['id']
        except todoist.api.SyncError:
            return False


    ## Функция для получения информации о наличии проекта
    def get_project(self, id):
        api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
        l = len(api.state['projects'])
        id_all = []
        for i in range(l):
            id_all.append(api.state['projects'][i]['id'])
        if id in id_all:
            return True
        else:
            return False

    ## Функция для создания новой задачи
    def create_task(self, item_name):
        try:
            api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
            id = api.state['projects'][-1]['id']
            api.items.add(item_name, project_id = id)
            return api.commit()['items'][0]['id']
        except todoist.api.SyncError:
            return False

    ## Функция для создания новой задачи с датой
    def create_task_with_date(self, item_name, date):
        try:
            api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
            id = api.state['projects'][-1]['id']
            due = {"date": ""+date+""}
            api.items.add(item_name, project_id = id, due = due)
            return api.commit()['items'][0]['id']
        except todoist.api.SyncError:
            return False

    ## Функция для создания новой подзадачи
    def create_subtask(self, item_name):
        try:
            api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
            id = api.state['items'][-1]['id']
            api.items.add(item_name, parent_id = id)
            return api.commit()['items'][0]['id']
        except todoist.api.SyncError:
            return False


    ## Функция для получения информации о наличии задачи или подзадачи для проекта
    def get_task(self, id):
        api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
        if api.items.get_by_id(id) != None:
            return True
        else:
            return False

    ## Функция для создания заметки к проекту(всегда False, потому что нет премиум доступа)
    def create_notes(self, text):
        try:
            api = TodoistAPI('313f6bf203b35e7ac56e39561a80633e459c9c54')
            id = api.state['projects'][-1]['id']
            api.project_notes.add(id, text)
            return api.commit()
        except todoist.api.SyncError:
            return False