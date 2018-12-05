# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy
from scrapy import Item, Field
from scrapy.loader import ItemLoader
from scrapy.loader.processors import TakeFirst, MapCompose


class CosmeticsItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    img = scrapy.Field()
    price = scrapy.Field()
    name = scrapy.Field()
    sales = scrapy.Field()
    shops = scrapy.Field()


#
# class CosItemLoader(ItemLoader):
#     default_output_processor = TakeFirst()
#

# def img_clear(value):
#     return value
#
#
# def price_clear(value):
#     return value
#
#
# def name_clear(value):
#     return value.strip(' ')
#
#
# def com_counts_clear(value):
#     return value
#
#
# def shop_clear(value):
#     return value


# class CosItem(Item):
#     img = Field(
#         input_processor=MapCompose(img_clear),
#     )
#     price = Field(
#         input_processor=MapCompose(price_clear),
#     )
#     name = Field(
#         input_processor=MapCompose(name_clear),
#     )
#     commit_counts = Field(
#         input_processor=MapCompose(com_counts_clear)
#     )
#     shop = Field(
#         input_processor=MapCompose(shop_clear)
#     )


