import matplotlib as plt
import jieba,os
from wordcloud import WordCloud
import PIL.Image as image
import numpy as np
import string,random
from time import strftime,localtime
# from libs.randomName import getKey


# text = open('trial2.txt', 'r').read()
def generate_wc(text):
    cut_text = jieba.cut(text)
    result = ' '.join(cut_text)
    mask = np.array(image.open('C:/Users/30268/stars/duoyue/DjangoCodes/duoyue/datas/QQ截图20200602130757.png'))
    wc = WordCloud(
        # background_color = 'white',
        # height = 500,
        # width = 350,
        max_font_size=100,
        min_font_size=10,
        mask=mask,
        # mode='RGBA',
        # font_path = "C:/Windows/Fonts/simhei.ttf",
        font_path='G:\BaiduNetdiskDownload\字体\素材集市康康体.ttf'
    )
    wc = wc.generate(result)
    image_produce = wc.to_image()
    # image_produce.show()
    save_path = r'C:\Users\30268\stars\duoyue\DjangoCodes\duoyue\datas\static\datas\images'
    a = string.ascii_letters + string.digits
    key = []
    def getKey():
        key = random.sample(a, 8)
        keys = ''.join(key)
        return keys
    tmpT = strftime("%Y%m%d%H%M%S", localtime())
    randomStr = getKey()
    save_name = str(tmpT) + getKey() + '.png'
    total_name = os.path.join(save_path, save_name)
    print(save_name)
    # print(os.path.join(save_path,save_name))
    wc.to_file(total_name)
    return total_name
print(generate_wc(text='你好吗'))
# generate_wc(text='你好吗')
    # return wc.to_file('trial.png')
# wc.to_file('trial.png')
# plt.figure('jay')
# plt.imshow(wc)
# plt.axis('off')
# plt.show()