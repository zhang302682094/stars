from scrapy import cmdline

name = 'finance'
cmd = 'scrapy crawl {0}{1}'.format(name,'')
cmdline.execute(cmd.split())