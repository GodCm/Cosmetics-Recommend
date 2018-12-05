# -*- coding: utf-8 -*-
import scrapy
from scrapy import Request
from jdpro.items import jdproItem

num = 0


class MaskSpider(scrapy.Spider):
    name = 'mask'
    allowed_domains = ['list.jd.com']

    def __init__(self):
        self.urls = [
            "https://list.jd.com/list.html?cat=1316,1381,1392&sort=sort_totalsales15_desc&trans=1&page=60&JL=6_0_0#J_main"]

    def start_requests(self):
        for url_str in self.urls:
            yield Request(url=url_str, callback=self.parse, meta={"page": "0"}, dont_filter=True)

    def parse(self, response):
        # with open("jd.html","wb") as f:
        #     f.write(response.body)
        item = jdproItem()
        li_list = response.css('#plist > ul > li')
        page_next = response.css('#J_bottomPage > span.p-num > a.pn-next')
        print("li_list is :::::: ", li_list)
        for li in li_list:
            try:
                goods_name = li.xpath(r'./div/div/a/em/text()')[0].extract().strip("\n\t ")
                if goods_name == "":
                    goods_name = li.xpath(r'./div/div/a/em/text()')[1].extract().strip("\n\t ")
            except Exception as e:
                print(e)
            try:
                goods_price = li.xpath(r'.//div[@class="p-price"]/strong/i/text()')[0].extract()

            except Exception as e:
                print(e)
                goods_price = "0"
            try:
                goods_img = "https:" + li.xpath('.//div[contains(@class,"p-img")]/a/img/@src')[0].extract()
            except Exception as e:
                print(e)
                goods_img = "https:" + li.xpath('.//div[contains(@class,"p-img")]/a/img/@data-lazy-img')[0].extract()
            try:
                sales = li.xpath('.//div[contains(@class,"p-commit")]/strong/a/text()')[0].extract().strip("+")
                if sales[-1] == "万":
                    sales = str(float(sales[:-1]) * 10000)
            except Exception as e:
                print(e)
                sales = "0"
            try:
                shops = li.xpath('.//div[@class="p-shop"]/span/a/text()')[0].extract().strip(".")
            except Exception as e:
                print(e)
                shops = "暂无"
            item["goods_name"] = goods_name
            item["goods_price"] = goods_price
            item["goods_img"] = goods_img
            item["sales"] = sales
            item["shops"] = shops
            yield item

        global num
        if len(page_next) > 0:
            num += 1
            if num < 260:
                print("开始爬取第{}页".format(num))
                yield Request(url=response.url, callback=self.parse, meta={"page": "2"}, dont_filter=True)
            else:
                print("数据爬取完毕")
