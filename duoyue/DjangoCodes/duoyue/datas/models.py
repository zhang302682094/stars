from django.db import models
from django.utils import timezone
import datetime


# Create your models here.


class Activity(models.Model):
    s = models.ForeignKey('School', models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    train_plan = models.CharField(max_length=255, blank=True, null=True)
    plan_time = models.DateTimeField(blank=True, null=True)
    materials = models.CharField(max_length=255, blank=True, null=True)
    personnel = models.CharField(max_length=255, blank=True, null=True)
    propaganda = models.CharField(max_length=255, blank=True, null=True)
    feedback = models.CharField(max_length=255, blank=True, null=True)
    sign_in = models.CharField(max_length=255, blank=True, null=True)
    serve_people = models.IntegerField(blank=True, null=True)
    scenes = models.IntegerField(blank=True, null=True)
    form = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'activity'


class Book(models.Model):
    s = models.ForeignKey('School', models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    numbering = models.CharField(max_length=255, blank=True, null=True)
    attrition_rate = models.CharField(max_length=255, blank=True, null=True)
    rotation_times = models.CharField(max_length=255, blank=True, null=True)
    use_record = models.CharField(max_length=255, blank=True, null=True)
    rotation_record = models.CharField(max_length=255, blank=True, null=True)
    feedback = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)
    flow_in = models.CharField(max_length=255, blank=True, null=True)
    flow_out = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return self.id

    class Meta:
        managed = False
        db_table = 'book'


class ChildrenResearch(models.Model):
    person_number = models.IntegerField(blank=True, null=True)
    form = models.CharField(max_length=255, blank=True, null=True)
    plan = models.CharField(max_length=255, blank=True, null=True)
    content = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'children_research'


class Class(models.Model):
    s = models.ForeignKey('School', models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    grade = models.CharField(max_length=255, blank=True, null=True)
    class_field = models.CharField(db_column='class', max_length=255, blank=True, null=True)  # Field renamed because it was a Python reserved word.
    student_number = models.IntegerField(blank=True, null=True)
    book_corner = models.CharField(max_length=255, blank=True, null=True)
    book_number = models.IntegerField(blank=True, null=True)
    use_frequency = models.CharField(max_length=255, blank=True, null=True)
    corner_image = models.CharField(max_length=255, blank=True, null=True)
    book_flow_round = models.CharField(max_length=255, blank=True, null=True)
    morning_read = models.CharField(max_length=255, blank=True, null=True)
    reading_frequency = models.CharField(max_length=255, blank=True, null=True)
    activity_time = models.CharField(max_length=255, blank=True, null=True)
    activity_frequency = models.CharField(max_length=255, blank=True, null=True)
    lesson_time = models.CharField(max_length=255, blank=True, null=True)
    lesson_frequency = models.CharField(max_length=255, blank=True, null=True)
    jon_survey_number = models.IntegerField(blank=True, null=True)
    charger = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'class'


class Community(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    n_people = models.IntegerField(blank=True, null=True)
    library = models.CharField(max_length=255, blank=True, null=True)
    contacter = models.CharField(max_length=255, blank=True, null=True)
    contacter_location = models.CharField(max_length=255, blank=True, null=True)
    contacter_tel = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'community'


class Coorperation(models.Model):
    s = models.ForeignKey('School', models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    resources = models.CharField(max_length=255, blank=True, null=True)
    willing = models.CharField(max_length=255, blank=True, null=True)
    needs = models.CharField(max_length=255, blank=True, null=True)
    project_name = models.CharField(max_length=255, blank=True, null=True)
    project_cycle = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'coorperation'


class Library(models.Model):
    #s = models.ForeignKey('School', models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    area = models.CharField(max_length=255, blank=True, null=True)
    book_number = models.IntegerField(blank=True, null=True)
    good_book_ratio = models.CharField(max_length=255, blank=True, null=True)
    manager = models.CharField(max_length=255, blank=True, null=True)
    open = models.CharField(max_length=255, blank=True, null=True)
    record = models.CharField(max_length=255, blank=True, null=True)
    electric = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'library'


class Project(models.Model):
    project_name = models.CharField(max_length=255, blank=True, null=True)
    object = models.CharField(max_length=255, blank=True, null=True)
    year = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'project'


class Punch(models.Model):
    school_name = models.CharField(max_length=255, blank=True, null=True)
    content = models.CharField(max_length=255, blank=True, null=True)
    days = models.IntegerField(blank=True, null=True)
    test_content = models.CharField(max_length=255, blank=True, null=True)
    person_number = models.IntegerField(blank=True, null=True)
    times = models.IntegerField(blank=True, null=True)
    prize = models.CharField(max_length=255, blank=True, null=True)
    winners = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'punch'


class Punch2(models.Model):
    student_name = models.CharField(max_length=255, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    grade = models.CharField(max_length=255, blank=True, null=True)
    class_field = models.CharField(db_column='class', max_length=255, blank=True, null=True)  # Field renamed because it was a Python reserved word.
    punch_times = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'punch2'


class School(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255, blank=True, null=True)
    found_time = models.CharField(max_length=255, blank=True, null=True)
    class_number = models.IntegerField(blank=True, null=True)
    teacher_number = models.IntegerField(blank=True, null=True)
    student_number = models.IntegerField(blank=True, null=True)
    library = models.CharField(max_length=255, blank=True, null=True)
    contacter = models.CharField(max_length=255, blank=True, null=True)
    contacter_tel = models.CharField(max_length=255, blank=True, null=True)
    contacter_location = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=255, blank=True, null=True)
    illustration = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return self.name


    class Meta:
        managed = False
        db_table = 'school'


class StaffEstimate(models.Model):
    school_name = models.CharField(max_length=255, blank=True, null=True)
    focus_co_school_focus_co_school_focus_co_school = models.CharField(db_column='focus_co_school\r\nfocus_co_school\r\nfocus_co_school', max_length=255, blank=True, null=True)  # Field renamed to remove unsuitable characters.
    willing = models.CharField(max_length=255, blank=True, null=True)
    project_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'staff_estimate'


# class Student(models.Model):
#     name = models.CharField(max_length=255, blank=True, null=True)
#     join_survey = models.CharField(max_length=255, blank=True, null=True)
#     s = models.ForeignKey(School, models.DO_NOTHING, blank=True, null=True)
#     class_field = models.CharField(db_column='class', max_length=255, blank=True, null=True)  # Field renamed because it was a Python reserved word.
#
#     class Meta:
#         managed = False
#         db_table = 'student'


class Survey(models.Model):
    s = models.ForeignKey(School, models.DO_NOTHING, blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    serve_people = models.CharField(max_length=255, blank=True, null=True)
    form = models.CharField(max_length=255, blank=True, null=True)
    period = models.CharField(max_length=255, blank=True, null=True)
    start_data = models.CharField(max_length=255, blank=True, null=True)
    end_data = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'survey'


class Visit(models.Model):
    time = models.DateTimeField(blank=True, null=True)
    school_name = models.CharField(max_length=255, blank=True, null=True)
    personnel = models.CharField(max_length=255, blank=True, null=True)
    serve_people = models.IntegerField(blank=True, null=True)
    docking = models.CharField(max_length=255, blank=True, null=True)
    content = models.CharField(max_length=255, blank=True, null=True)
    need_follow = models.CharField(max_length=255, blank=True, null=True)
    doc = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'visit'
