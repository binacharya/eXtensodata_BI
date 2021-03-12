from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
# from logger import logger
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.chrome.options import Options


class console_debug:
    def web_console_log(self):
        capabilities = DesiredCapabilities.CHROME
         #capabilities['loggingPrefs'] = {'browser': 'ALL'}
        capabilities['loggingPrefs'] = ("browser", 'SEVERE')

        #driver = webdriver.Chrome(desired_capabilities=capabilities)


        # options = Options()
        # options.add_argument('log-level=3')
        sl = BuiltIn().get_library_instance('SeleniumLibrary')

        # sl.driver.get(log)
        list_entry = []
        for entry in sl.driver.get_log('browser'):
            print(entry)
            list_entry.append(entry)
            logger.console(entry)

        logger.console(len(list_entry))

    #
    # class console_debug:
    #     def web_console_log(self):
    #         capabilities = DesiredCapabilities.CHROME
    #         capabilities['loggingPrefs'] = {'browser': 'ALL'}
    #         driver = webdriver.Chrome(desired_capabilities=capabilities)
    #         sl = BuiltIn().get_library_instance('SeleniumLibrary')
    #
    #         # sl.driver.get(log)
    #         for entry in sl.driver.get_log('browser'):
    #             print(entry)
    #             logger.console(entry)
#
# def get_log(self):
#     sl = BuiltIn().get_library_instance('SeleniumLibrary')
#     # #
# logger.console(sl.driver.get_log(log))
#     # return sl.driver.get_log(log)
#     # # for entry in driver.get_log('browser'):
#     # # print(entry)
#     # def log_console(self):
#
#      logger.console('log', params={'type': 'browser'})
#
#
#
# from selenium import webdriver
# from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
#     # def log_console():
#     # enable browser logging
#     d = DesiredCapabilities.CHROME
#     d['loggingPrefs'] = {'browser': 'ALL'}
#     driver = webdriver.Chrome(desired_capabilities=d)
#
# # load the desired webpage
#     driver.get('http://foo.com')
#
# # print messages
#     for entry in driver.get_log('browser'):
#     print(entry)
# enable browser logging

# def log_console():
#     d = DesiredCapabilities.CHROME
#     d['loggingPrefs'] = { 'browser':'ALL' }
#     driver = webdriver.Chrome(desired_capabilities=d)
#
#         #load the desired webpage
#     driver.get('http://foo.com')
#
# # print messages
#     for entry in driver.get_log('browser'):
#         print(entry)
# from selenium import webdriver
# from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
# def log():
#     capabilities = DesiredCapabilities.CHROME
#     capabilities['loggingPrefs'] = {'browser': 'ALL'}
#     driver = webdriver.Chrome(desired_capabilities=capabilities)
#     driver.get('https://www.amazon.com/Amazon-Essentials-Lightweight-Water-Resistant-Packable/dp/B07C8VGWT1/ref=sr_1_1?dchild=1&pf_rd_i=16225018011&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=e9a7a2cd-d373-460c-8c25-702')
#     for entry in driver.get_log('browser'):
#
#         print(entry)
#
#
# if  __name__ == "__main__":
#     log()
