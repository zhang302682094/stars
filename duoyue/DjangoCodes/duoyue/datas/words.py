import matplotlib as plt
import jieba
from wordcloud import WordCloud
import PIL.Image as image
import numpy as np


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
    save_path = 'C:/Users/30268/stars/duoyue/DjangoCodes/duoyue/datas/static/datas/images'
    wc.to_file('C:/Users/30268/stars/duoyue/DjangoCodes/duoyue/datas/static/datas/images/trial.png')
    return wc.to_file('trial.png')
# wc.to_file('trial.png')
# plt.figure('jay')
# plt.imshow(wc)
# plt.axis('off')
# plt.show()