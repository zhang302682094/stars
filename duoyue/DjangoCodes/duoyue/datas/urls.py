from django.urls import path
from .import views

app_name = 'datas'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('<int:school_id>/', views.detail, name='detail'),
    path('report/', views.report, name='report'),
    # path('<int:question_id>/vote/', views.vote, name='vote'),
]