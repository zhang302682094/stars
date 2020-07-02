from django.shortcuts import render
from django.http import HttpResponse
from .models import *


def index(request):
    list = [
        '开发前的准备',
        '项目需求分析',
        '数据库设计分析',
        '创建项目',
        '基础配置',
        '欢迎页面',
        '创建数据库模型',
    ]
    sitename = 'Django中文网'
    url = 'www.django.cn'
    # 把两个变量封装到上下文里
    context = {
        'sitename': sitename,
        'url': url,
        'list': list,
    }

    # 把上下文传递到模板里
    return render(request, 'index.html', context)
