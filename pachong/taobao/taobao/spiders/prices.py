# -*- coding: utf-8 -*-
import scrapy
from taobao.items import TaobaoItem

class PricesSpider(scrapy.Spider):
    name = 'prices'
    allowed_domains = ['taobao.com']
    start_urls = ['https://s.taobao.com/search?initiative_id=tbindexz_20170306&ie=utf8&'
                  'spm=a21bo.2017.201856-taobao-item.2&sourceId=tb.index&search_type=item&s'
                  'sid=s5-e&commend=all&imgfile=&q=%E7%BB%B4%E8%BE%BE&suggest='
                  'history_1&_input_charset=utf-8&wq=&suggest_query=&source=suggest']

    def parse(self, response):
        item = TaobaoItem()
        find_all = response.xpath("//div[@id='mainsrp-itemlist']")
        for section in find_all:
            name = response.xpath("//div[@class='price g_price g_price-highlight']/strong/text()")
            print('=====')
            print(name)
            item['name'] = name
            # price =
            yield item