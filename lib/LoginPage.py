from PageObjectLibrary import PageObject

from robot.libraries.BuiltIn import BuiltIn


class LoginPage(PageObject):
    PAGE_TITLE = "Войти в Todoist"
    PAGE_URL = "/users/showlogin"

    _locators = {
        "username": "id=email",
        "password": "id=password",
        "submit_button": """xpath=//*[@id="login_form"]/button""",
    }

    def user_logs_in_with_credentials(self, username, password):
        self.enter_username(username)
        self.enter_password(password)
        self.click_the_submit_button()

    def enter_username(self, username):
        """Enter the given string into the username field"""
        self.selib.input_text(self.locator.username, username)

    def enter_password(self, password):
        """Enter the given string into the password field"""
        self.selib.input_text(self.locator.password, password)

    def click_the_submit_button(self):
        """Click the submit button, and wait for the page to reload"""
        with self._wait_for_page_refresh():
            self.selib.click_button(self.locator.submit_button)