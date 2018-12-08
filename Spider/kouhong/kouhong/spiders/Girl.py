# -*- coding: utf-8 -*-
import scrapy
import json

from kouhong.items import KouhongItem
class GirlSpider(scrapy.Spider):
    name = 'Girl'
    allowed_domains = ['sclub.jd.com']
    start_urls = [r'https://sclub.jd.com/comment/productPageComments.action?callback=fetchJSON_comment98vv677&productId=15968567567&score=0&sortType=5&page=0&pageSize=10&isShadowSku=0&fold=1']
    page = 1
    url = 'https://sclub.jd.com/comment/productPageComments.action?callback=fetchJSON_comment98vv677&productId=15968567567&score=0&sortType=5&page={}&pageSize=10&isShadowSku=0&fold=1'
    def parse(self, response):
        response1 = response.text
        response_seconed=response1.strip("fetchJSON_comment98vv677();")
        obj = json.loads(response_seconed)
        comment_list=obj["comments"]
        for comment in comment_list:
            Kouhong1=KouhongItem()
            # 昵称
            Kouhong1['username'] = comment['nickname']
            # 评论
            Kouhong1["commit"] = comment['content']
            #评论时间
            Kouhong1["commitime"]=comment["creationTime"]
            yield Kouhong1
        if self.page <500:
            self.page += 1
            url = self.url.format(self.page)
            # 生成请求对象，扔给引擎
            # callback 就是处理响应的回调函数
            yield scrapy.Request(url=url, callback=self.parse)



