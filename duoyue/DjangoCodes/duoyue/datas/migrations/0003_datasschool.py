# Generated by Django 3.0.6 on 2020-05-17 02:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('datas', '0002_employee'),
    ]

    operations = [
        migrations.CreateModel(
            name='DatasSchool',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
                ('address', models.CharField(blank=True, max_length=255, null=True)),
            ],
        ),
    ]
