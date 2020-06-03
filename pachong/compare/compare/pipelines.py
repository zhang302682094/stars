# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import csv,json

class ComparePipeline:
    def __init__(self):
        path = 'D://douban_book_Top250.csv'
        self.file = open(path, 'a+', encoding='utf-8')
        self.writer = csv.writer(self.file)

    def process_item(self, item, spider):
        with open('data_cn1.json', 'a') as f:
            json.dump(dict(item), f, ensure_ascii=False)
            f.write(',\n')
        self.writer.writerow(
            (item['title'], item['author'],
             item['publisher'], item['release_time'], item['price'],
             item['rating'], item['number_of_comments'], item['simple_comment']
             )
        )
        return item

    def close_spider(self, spider):
        self.file.close()
