# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import json
import sqlite3

import pymysql
from scrapy.utils.project import get_project_settings


class CosmeticsPipeline(object):
    def open_spider(self, spider):
        self.fp = open('cos2.csv', 'w', encoding='utf8')

    def colse_spider(self, spider):
        self.fp.close()

    def process_item(self, item, spider):
        # 将item转化为字典
        dic = dict(item)
        string = json.dumps(dic, ensure_ascii=False)
        self.fp.write(string + '\n')
        return item


class CosMysqlPipeline(object):
    def open_spider(self, spider):
        # setting就是一个字典，字典的键值就是所有的配置选项
        settings = get_project_settings()
        self.db = pymysql.Connect(host=settings['HOST'], port=settings['PORT'], user=settings['USER'],
                                  password=settings['PWD'], database=settings['DB'], charset=settings['CHARSET'])

    def colse_spider(self, spider):
        self.db.close()

    def process_item(self, item, spider):
        self.save_to_mysql(item)
        return item

    def save_to_mysql(self, item):
        cursor = self.db.cursor()
        try:
            cursor.execute(
                'INSERT into Goods(goods_img, goods_price, goods_name, commits, shop) values ("%s","%s","%s","%s","%s")' % (
                    item['img'], item['price'], item['name'], item['commits'], item['shop']))
            self.db.commit()
        except Exception as e:
            print(e)
            # 回滚
            self.db.rollback()
# class CosMongodbpropeline(object):
#     def open_spider(self,spider):
#         self.client = pymongo.MongoClient(host='localhost', port=27017)
#     def close_spider(self,spider):
#         self.client.close()
#     def process_item(self, item, spider):
#         db = self.client.qhd1988
#         col = db.qhd1988
#         # 转化为字典
#         dic = dict(item)
#         col.insert(dic)
#
#         return item


class CosSqlite3Pipeline(object):
    def open_spider(self, spider):
        self.conn = sqlite3.connect('Goods.db')
        self.cursor = self.conn.cursor()

    def process_item(self, item, spider):

        self.cursor.execute("INSERT into Goods(goods_img, goods_price, goods_name, sales, shops) values ('%s','%s','%s','%s','%s') " % (
                    item['img'], item['price'], item['name'], item['sales'], item['shops']))
        self.conn.commit()
        return item

    def close_spider(self, spider):
        self.conn.close()

