# -*- coding: utf-8 -*-

# Define here the models for your spider middleware
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/spider-middleware.html
import time


from scrapy import signals
from scrapy.http import HtmlResponse
from selenium import webdriver



class CosmeticsSpiderMiddleware(object):
    # Not all methods need to be defined. If a method is not defined,
    # scrapy acts as if the spider middleware does not modify the
    # passed objects.

    @classmethod
    def from_crawler(cls, crawler):
        # This method is used by Scrapy to create your spiders.
        s = cls()
        crawler.signals.connect(s.spider_opened, signal=signals.spider_opened)
        return s

    def process_spider_input(self, response, spider):
        # Called for each response that goes through the spider
        # middleware and into the spider.

        # Should return None or raise an exception.
        return None

    def process_spider_output(self, response, result, spider):
        # Called with the results returned from the Spider, after
        # it has processed the response.

        # Must return an iterable of Request, dict or Item objects.
        for i in result:
            yield i

    def process_spider_exception(self, response, exception, spider):
        # Called when a spider or process_spider_input() method
        # (from other spider middleware) raises an exception.

        # Should return either None or an iterable of Response, dict
        # or Item objects.
        pass

    def process_start_requests(self, start_requests, spider):
        # Called with the start requests of the spider, and works
        # similarly to the process_spider_output() method, except
        # that it doesn’t have a response associated.

        # Must return only requests (not items).
        for r in start_requests:
            yield r

    def spider_opened(self, spider):
        spider.logger.info('Spider opened: %s' % spider.name)


class CosmeticsDownloaderMiddleware(object):
    # Not all methods need to be defined. If a method is not defined,
    # scrapy acts as if the downloader middleware does not modify the
    # passed objects.

    @classmethod
    def from_crawler(cls, crawler):
        # This method is used by Scrapy to create your spiders.
        s = cls()
        crawler.signals.connect(s.spider_opened, signal=signals.spider_opened)
        return s

    def process_request(self, request, spider):
        # Called for each request that goes through the downloader
        # middleware.

        # Must either:
        # - return None: continue processing this request
        # - or return a Response object
        # - or return a Request object
        # - or raise IgnoreRequest: process_exception() methods of
        #   installed downloader middleware will be called
        return None

    def process_response(self, request, response, spider):
        # Called with the response returned from the downloader.

        # Must either;
        # - return a Response object
        # - return a Request object
        # - or raise IgnoreRequest
        return response

    def process_exception(self, request, exception, spider):
        # Called when a download handler or a process_request()
        # (from other downloader middleware) raises an exception.

        # Must either:
        # - return None: continue processing this exception
        # - return a Response object: stops process_exception() chain
        # - return a Request object: stops process_exception() chain
        pass

    def spider_opened(self, spider):
        spider.logger.info('Spider opened: %s' % spider.name)


class SeleniumMiddlewareA(object):
    def __init__(self):
        self.option = webdriver.ChromeOptions()
        self.option.add_argument('--ignore-certificate-errors')
        self.option.add_argument('-headless')
        self.browser = webdriver.Chrome(executable_path="F:\pc\chromedriver.exe", chrome_options=self.option)

    def process_request(self, request, spider):
        if int(request.meta['data']) == 2:
            self.browser.find_element_by_css_selector('#J_bottomPage > span.p-num > a.pn-next').click()
            time.sleep(3)
            js = "window.scrollTo(0,document.body.scrollHeight)"
            self.browser.execute_script(js)
            time.sleep(3)
            return HtmlResponse(url=self.browser.current_url, body=self.browser.page_source, encoding="utf-8",
                                request=request)
        elif int(request.meta['data']) == 3:
            return None
        else:
            if int(request.meta['data']) == 0:
                try:
                    print("url is :::::", request.url)
                    self.browser.get(request.url)
                except TimeoutError as e:
                    time.sleep(5)
                self.browser.find_element_by_css_selector('#keyword').send_keys("YSL口红")
                time.sleep(2)
                self.browser.find_element_by_css_selector('body > div.searchbox > form > input.input_submit').click()
                time.sleep(6)
                js = "window.scrollTo(0,document.body.scrollHeight)"
                self.browser.execute_script(js)
                time.sleep(10)
                return HtmlResponse(url=self.browser.current_url, body=self.browser.page_source, encoding="utf-8",
                                        request=request)



class SeleniumMiddlewareB(object):
    def __init__(self):
        self.options = webdriver.ChromeOptions()
        self.options.add_argument('-headless')
        self.browser = webdriver.Chrome(executable_path="F:\pc\chromedriver.exe", chrome_options=self.options)

    def process_request(self, request, spider):
        if int(request.meta['page']) == 2:
            #执行javascript使浏览器滚动条滚动到最后
            self.browser.execute_script("window.scrollTo(0,document.body.scrollHeight)")
            time.sleep(6)
            page = self.browser.find_element_by_xpath(r'//div[@class="soupager"]/button[2]')
            #page.click()
            #time.sleep(10)
        elif int(request.meta['page']) == 3:
            return None
        else:
            if int(request.meta['page']) == 0:
                try:
                    print("url is ::::", request.url)
                    self.browser.get(request.url)
                except TimeoutError as e:
                    print("超时")
                time.sleep(5)
                return HtmlResponse(url=self.browser.current_url, body=self.browser.page_source,
                            encoding="utf-8", request=request)