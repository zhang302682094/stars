# -*- coding: utf-8 -*-
import scrapy
from compare.items import CompareItem


class FinanceSpider(scrapy.Spider):
    name = 'finance'
    allowed_domains = ['douban.com']
    start_urls = ['https://book.douban.com/top250?start=0']

    def parse(self, response):
        item = CompareItem()
        find_all = response.xpath('//div[@class="article"]/div[@class="indent"]/table/tr[@class="item"]')
        print(find_all)
        print('=====')
        for section in find_all:
            #try:
                #title = section.xpath("td[2]/div[@class='pl2']/a/text()").extract_first().strip()
                title = section.xpath("td[2]/div[@class='pl2']/a").attrib.get('title')
                print(title)
                author = section.xpath("td[2]/p[@class='pl']/text()").extract()[0].strip().split('/')[0]
                publisher = section.xpath("td[2]/p[@class='pl']/text()").extract()[0].strip().split('/')[-3]
                release_time = section.xpath("td[2]/p[@class='pl']/text()").extract()[0].strip().split('/')[-2]
                price = section.xpath("td[2]/p[@class='pl']/text()").extract()[0].strip().split('/')[-1]
                rating = section.xpath(
                    "td[2]/div[@class='star clearfix']/span[@class='rating_nums']/text()").extract_first()
                number_of_comments = section.xpath(
                    "td[2]/div[@class='star clearfix']/span[@class='pl']/text()").extract_first().strip('\n )(')
                simple_comment = section.xpath("td[2]/p[@class='quote']/span[@class='inq']/text()").extract_first()

                item['书名'] = title
                item['author'] = author
                item['publisher'] = publisher
                item['release_time'] = release_time
                item['price'] = price
                item['rating'] = rating
                item['number_of_comments'] = number_of_comments
                item['simple_comment'] = simple_comment
                yield item
            # except:
            #     print('error')
            #     pass

        urls = ['https://book.douban.com/top250?start={0}'.format(i) for i in range(25, 275, 25)]
        for url in urls:
            yield scrapy.Request(url, callback=self.parse)  # 递归调用自己的parse方法
