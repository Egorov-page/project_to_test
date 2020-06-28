from PageObjectLibrary import PageObject
from time import sleep
import logging
from robot.libraries.BuiltIn import BuiltIn


class ProjectPage(PageObject):
    PAGE_TITLE = "Todoist"
    PAGE_URL = "/app/#start"

    _locators = {
        "project_name": "id=edit_project_modal_field_name",
        "new_project": """xpath=//*[@id="projects_list_manager"]/div[1]/a""",
        "submit_project_button": """xpath=/html/body/reach-portal/div[3]/div/div/div/form/footer/button[2]""",
        "home_button": """xpath=//*[@id="top_bar_inner"]/div[1]/button[2]""",
        "new_task": """xpath=//*[@id="editor"]/div/div[2]/div/ul/li/div/div/div/button""",
        "task_name": """xpath=//*[@id="editor"]/div/div[2]/div/ul/li/div/div/ul/li/form/div[1]/div[1]/div/div[1]"""
    }

    def add_a_new_project(self, project_name):
        sleep(10)
        self.create_new_project()
        self.add_project_name(project_name)
        self.submit_project()


    def create_new_project(self):
        self.selib.click_element(self.locator.new_project)

    def add_project_name(self, project_name):
        self.selib.input_text(self.locator.project_name, project_name)

    def submit_project(self):
        self.selib.click_element(self.locator.submit_project_button)
