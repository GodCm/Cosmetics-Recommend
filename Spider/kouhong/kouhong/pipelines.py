# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import json
import io
import sqlite3
from scrapy.utils.project import get_project_settings
class KouhongPipeline(object):
    def open_spider(self, spider):
        # self.fp = io.open('kouhong.txt', 'w',encoding="utf8")
        self.conn = sqlite3.connect('kouhong.sqlite')
    def close_spider(self, spider):
        self.fp.close()

    def process_item(self, Kouhong1, spider):
        dic = dict(Kouhong1)
        cursor = self.conn.cursor()
        sql = 'insert into Comment(c_username,c_comment,c_date) values("%s","%s","%s")'%(dic['username'],dic['commit'],dic['commitime'])
        try:
            cursor.execute(sql)
            self.conn.commit()
        except Exception as e:
            self.conn.rollback()
        return Kouhong1


