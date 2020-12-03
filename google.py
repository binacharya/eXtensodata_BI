from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from robot.api import logger


class google():

    def google_search_text(self):
        driver = webdriver.Chrome(executable_path="D:\selenium\chromeDriver\chromedriver.exe")
        driver.get('https://www.google.com')
        driver.find_element_by_xpath('//input[@name="q"]').send_keys('Bina'+Keys.ENTER)

    def bina_test(self, text):

        logger.console(text)
