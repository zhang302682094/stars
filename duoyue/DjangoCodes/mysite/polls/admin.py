from django.contrib import admin
from .models import Question
from .models import Choice
# Register your models here.
# admin.site.register(Question)
admin.site.register(Choice)


class ChoiceInline(admin.TabularInline):
    model = Choice
    extra = 3


class QuestionAdmin(admin.ModelAdmin):
    list_display = ('question_text', 'pub_date', 'was_published_recently')
    # fields = ['pub_date', 'question_text']
    # inlines = [ChoiceInline]


admin.site.register(Question, QuestionAdmin)