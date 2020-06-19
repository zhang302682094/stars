from django.urls import path
from .import views

app_name = 'datas'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('<int:school_id>/', views.detail, name='detail'),
    path('report/', views.report, name='report'),
    path('uploadFile/', views.upload_file, name='upload'),
    path('tools/', views.tools, name='tools'),
    path('tools/wordcloud', views.WordCloud, name='wordcloud'),
    path('tools/wordcloud/show', views.WordCloudShow, name='wordcloudshow'),
    path('tools/concatPDF', views.concatPDF, name='concatPDF'),
    # path('tools/uploadFile', views.concatPDF, name='concatPDF'),
    path('community/', views.community, name='community')
    # path('<int:question_id>/vote/', views.vote, name='vote'),
]