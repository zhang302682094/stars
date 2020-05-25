from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render
from django.template import loader
from django.db import connection
from django.urls import reverse
from django.views import generic

from .models import *


# Create your views here.


class IndexView(generic.ListView):
    template_name = 'datas/index.html'
    context_object_name = 'school_list'

    def get_queryset(self):
        return School.objects.order_by('name')


def detail(request, school_id):
    # School.objects.filter(id=school_id)

    cursor = connection.cursor()
    cursor.execute("select * from school where id=%s" % school_id)
    result = cursor.fetchone()
    school = result[1]
    addr = result[2]
    image = result[11]
    # def get_queryset(self):
    #     return School.objects.order_by('name')
    return render(request, 'datas/detail.html', {'school': school, 'addr': addr, 'image': image})


def report(request):
    cursor = connection.cursor()
    # cursor.execute('SELECT count(DISTINCT school_name) 服务学校 FROM `activity`')
    execute_list = [
        '''SELECT sum(服务学校) 服务学校 FROM (
    SELECT count(DISTINCT school_name) 服务学校 FROM `activity` union all
    SELECT count(DISTINCT school_name) 服务学校 FROM `survey` union all
    SELECT count(DISTINCT school_name) 服务学校 FROM `visit` union all
    SELECT count(DISTINCT school_name) 服务学校 FROM `punch`
    ) as a''',
        '''select sum(服务学生) from(
    select sum(serve_people) 服务学生 from activity where form='嘉年华' union all
    select sum(serve_people) 服务学生 from visit union all
    select sum(person_number) 服务学生 from punch
    ) as a''',
        "select sum(serve_people) 家长培训人次 from activity where form='家长培训'",
        "select sum(serve_people) 教师培训人次 from activity where form='教师培训'",
        "select sum(rotation_times) 书箱轮转次数 from book",
        "select sum(numbering) 书箱轮转册次 from book",
        "select sum(person_number) 线上打卡人数 from punch",
        "select sum(times) 线上打卡次数 from punch",
        "select sum(winners) 线上打卡获奖人次 from punch",
        "select sum(person_number) 儿童调研人次 from children_research"]
    results = []

    for i in execute_list:
        cursor.execute(i)
        result = cursor.fetchone()[0]
        results.append(int(result))
    items = ['服务学校个数：', '服务学生人次：', '家长陪训人次：', '教师陪训人次：', '书箱流转次数：', '书箱流转册次：',
             '线上打卡人数：', '线上打卡次数：', '线上打卡获奖人次：', '调研人次：']
    data = dict(zip(items, results))
    return render(request, 'datas/report.html', {'data': data, 'results': results, 'items': items})


# class ReportView(generic.DetailView):
#     template_name = 'datas/report.html'
#     model = School


# def index(request):
#     latest_question_list = Question.objects.order_by('-pub_date')[:5]
#     context = {'latest_question_list': latest_question_list}
#     return render(request, 'datas/index.html', context)
#
#
# def detail(request, question_id):
#     question = get_object_or_404(Question, pk=question_id)
#     return render(request, 'datas/detail.html', {'question': question})
#
#
# def results(request, question_id):
#     question = get_object_or_404(Question, pk=question_id)
#     return render(request, 'datas/results.html', {'question': question})


# def vote(request, question_id):
#     question = get_object_or_404(Question, pk=question_id)
#     try:
#         selected_choice = question.choice_set.get(pk=request.POST['choice'])
#     except (KeyError, Choice.DoesNotExist):
#         return render(request, 'datas/detail.html', {'question': question,
#                                                      'error_message': "至少选择一项才能投票"})
#     else:
#         selected_choice.votes += 1
#         selected_choice.save()
#     return HttpResponseRedirect(reverse('datas:results', args=(question.id,)))
