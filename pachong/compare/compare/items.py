# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class CompareItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    # 书名
    书名 = scrapy.Field()
    # 作者
    author = scrapy.Field()
    # 出版社
    publisher = scrapy.Field()
    # 出版时间
    release_time = scrapy.Field()
    # 价格
    price = scrapy.Field()
    # 评分
    rating = scrapy.Field()
    # 评价人数
    number_of_comments = scrapy.Field()
    # 简介
    simple_comment = scrapy.Field()
