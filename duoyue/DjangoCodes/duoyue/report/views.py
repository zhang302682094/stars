from django.shortcuts import render
from django.views import generic

# Create your views here.


class IndexView(generic.ListView):
    template_name = 'report/index.html'

    def get_queryset(self):
        return