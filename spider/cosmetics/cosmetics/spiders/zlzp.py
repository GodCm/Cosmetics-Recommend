# -*- coding: utf-8 -*-
import time

import scrapy
import lxml.html
from scrapy import Request

class JovDes(object):
    def __init__(self):
        self.detail_url = ""
        self.title      = ""

def parse_lxml_zhilian(html_str):
    tree = lxml.html.fromstring(html_str)
    job_url = tree.xpath('//a[@class="contentpile__content__wrapper__item__info__boxle"]/@href')
    job_name = tree.xpath('//a[@class="contentpile__content__wrapper__item__info__boxle"]/@title')

    print(job_url)
    print(job_name)
    return job_url
a = 0
class ZlzpSpider(scrapy.Spider):
    name = 'zlzp'
    # allowed_domains = ['ts.zhaopin.com']
    # start_urls = ['http://ts.zhaopin.com/']

    def start_requests(self):
        url_str = 'https://sou.zhaopin.com/?pageSize=60&jl=489&kw=python&kt=3'
        yield Request(url=url_str, callback=self.parse, meta={"page": "0"})

    def parse(self, response):
        #print(response.text)
        #1.使用模拟器翻页下载ajax页面
        #2.在模拟器弹出的页面分析抓取内容
        #3.抓取内容不是一成不变的，谨慎使用浏览器中带数字的css选择器
        #4.使用简单可调试的页面去调试模拟器选取
        #5.如何处理队列溢出问题
        #6.selenium能做自动化测试
        rs = response.css('div.contentpile__content__wrapper:nth-child(1) > div:nth-child(1)').extract()
        page_next = response.xpath(r'//div[@class="soupager"]/button[2]').extract()
        print("rs is :::::", rs)
        print("page_next is :::::", page_next)
# listContent > div:nth-child(1)
# pagination_content > div > button:nth-child(7)
        # pagination_content > div > button:nth-child(8)
        # pagination_content > div > button:nth-child(7)
        global a
        a += 60
        for r in rs:
            job_url = parse_lxml_zhilian(r)
            yield Request(url=job_url, callback=self.parse_detail, meta={"page": "3"}, dont_filter=True)

        if len(page_next) > 0:
            while a > 300:
                time.sleep(1)
            yield Request(url=response.url, callback=self.parse, meta={"page": "2"}, dont_filter=True)

    def parse_detail(self, response):
        a -= 1
        pass
