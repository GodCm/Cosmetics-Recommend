# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

# 写入文件
import json


class writeFilesPipeline(object):

    def open_spider(self, spider):
        self.fp = open("data.txt", "w", encoding="utf8")

    def close_spider(self, spider):
        self.fp.close()

    def process_item(self, item, spider):
        dic = dict(item)
        string = json.dumps(dic, ensure_ascii=False)
        self.fp.write(string + "\n")
        return item


# 存入sqlite数据库
import sqlite3


class saveSqlitePipeline(object):

    def open_spider(self, spider):
        # 连接数据库
        self.conn = sqlite3.connect("Goods.db")

    def close_spider(self, spider):
        # 关闭数据库
        self.conn.close()

    def process_item(self, item, spider):
        self.cursor = self.conn.cursor()
        sql = 'insert into Goods(goods_name,goods_price,goods_img,sales,shops) values("%s","%s","%s","%s","%s")' % (
            item['goods_name'], item['goods_price'], item['goods_img'], item['sales'], item['shops'])
        # 执行sql语句
        try:
            self.cursor.execute(sql)
            self.conn.commit()
        except Exception as e:
            print("数据插入失败...请等待")
            print(e)
            self.conn.rollback()
        return item


# 存入mysql数据库
import pymysql


class saveMysqlPipeline(object):
    def open_spider(self, spider):
        # 连接数据库
        self.conn = pymysql.Connect(host="xxxxxx", port="3306", user="root", password="xxxxxx", database="xxxxxx",
                                    charset="utf8")

    def colse_spider(self, spider):
        # 关闭数据库
        self.conn.close()

    def process_item(self, item, spider):
        self.cursor = self.conn.cursor()

        sql = 'insert into Goods(goods_name,goods_price,goods_img,sales,shops) values("%s","%s","%s","%s","%s")' % (
            item['goods_name'], item['goods_price'], item['goods_img'], item['sales'], item['shops'])
        try:
            self.cursor.execute(sql)
            self.conn.commit()
        except Exception as e:
            print("数据插入失败...请等待")
            print(e)
            self.conn.rollback()
        return item


# 存入mongodb数据库
import pymongo


class saveMongodbPipeline(object):
    def open_spider(self, spider):
        # 连接数据库
        self.client = pymongo.MongoClient(host="localhost", port=27017)

    def close_spider(self, spider):
        # 关闭数据库
        self.client.close()

    def process_item(self, item, spider):
        # 选择数据库
        db = self.client.job51
        # 选择集合
        col = db.job51
        # #将item转化为字典
        print(item)
        dic = dict(item)

        col.insert(dic)

        return item
