# -*- coding: utf-8 -*-

import scrapy


class jdproItem(scrapy.Item):
    goods_name = scrapy.Field()
    goods_price = scrapy.Field()
    goods_img = scrapy.Field()
    sales = scrapy.Field()
    shops = scrapy.Field()

# import scrapy
# from scrapy.loader import ItemLoader
# from scrapy.item import Item
# from scrapy import Field
# from scrapy.loader.processors import MapCompose, TakeFirst
#
#
# def goods_name(value):
#     return value.strip("\n\t ")
#
#
# def goods_price(value):
#     return value.strip("\n\t ")
#
#
# def goods_img(value):
#     return value.strip("\n\t ")
#
#
# def platfrom(value):
#     return value.strip("\n\t ")
#
#
# def sales(value):
#     return value.strip("\n\t ")
#
#
# class JdproItemLoader(ItemLoader):
#     # 定义一个默认的输出处理器
#     default_output_processor = TakeFirst()
#
#
# class jdproItem(Item):
#     goods_name = Field(
#         input_processor=MapCompose(goods_name)
#     )
#     goods_price = Field(
#         input_processor=MapCompose(goods_price)
#     )
#     goods_img = Field(
#         input_processor=MapCompose(goods_img)
#     )
#     platfrom = Field(
#         input_processor=MapCompose(platfrom)
#     )
#     sales = Field(
#         input_processor=MapCompose(sales)
#     )
