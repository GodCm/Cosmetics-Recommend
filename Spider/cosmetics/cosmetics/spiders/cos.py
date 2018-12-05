# -*- coding: utf-8 -*-
import json
import time

import scrapy
from scrapy import Request

from cosmetics.items import CosmeticsItem


num = 0
class CosSpider(scrapy.Spider):
    name = 'cos'
    # allowed_domains = ['www.jd.com']
    # start_urls = ['https://search.jd.com/Search?keyword=%E5%8F%A3%E7%BA%A2&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&stock=1&page=1&s=54&click=0']
    # 分页
    #url = 'https://search.jd.com/Search?keyword=%E5%8F%A3%E7%BA%A2&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E5%8F%A3%E7%BA%A2&stock=1&page={}&s=55&click=0'
    #page = 1

    def start_requests(self):
        star_url = 'https://search.jd.com'
        yield Request(url=star_url, callback=self.parse, dont_filter=True, meta={"data": "0"})

    def parse(self, response):
        # with open('ht.html','wb') as f:
        #     f.write(response.body)
        # print()
        item      = CosmeticsItem()
        ul_list   = response.css('#J_goodsList > ul > li')
        page_next = response.css('#J_bottomPage > span.p-num > a.pn-next')
        #print("ul_list is :::::::", ul_list)
        for i in ul_list:
            #al = ul.extract()
            print("ul is :::::", i)
            try:
                img = 'https:' + i.xpath('.//div[contains(@class,"p-img")]/a/img/@src')[0].extract()
            except Exception as e:
                print(e)
                img = 'https:' + i.xpath('.//div[contains(@class,"p-img")]/a/img/@data-lazy-img')[0].extract()
            price   = i.xpath('.//div[@class="p-price"]/strong/i/text()')[0].extract()

            name    = i.xpath('.//div[@class="p-name p-name-type-2"]/a/em/text()')[0].extract().strip(' ')
            saleses = i.xpath('.//div[@class="p-commit"]/strong/a/text()')[0].extract().strip('+')
            if saleses[-1] == "万":
                sales = str(float(saleses.strip('万')) * 10000)
            else:
                sales = saleses
            try:
                shops = i.xpath('.//div[@class="p-shop"]/span/a/text()')[0].extract()
            except Exception as ee:
                print(ee)
                shops = "未知"
            for field in item.fields.keys():
                item[field] = eval(field)
            yield item
        # global num
        # num += 60
        # global num
        # if len(page_next) > 0:
        #     #self.page += 2
        #     #print("开始爬取第{}页".format(self.page))
        #     num += 1
        #     if num < 100:
        #     # while a < 300:
        #     #     time.sleep(1)
        #         print("开始爬取：：：：第{}页".format(num))
        #         yield Request(url=response.url, callback=self.parse, dont_filter=True, meta={"data": "2"})
        #     else:
        #         print("数据爬取完毕")

# 加队列请求书count