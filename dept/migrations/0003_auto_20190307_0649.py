# Generated by Django 2.1.7 on 2019-03-07 06:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dept', '0002_auto_20190306_1259'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profilebox',
            name='employee_id',
        ),
        migrations.AlterField(
            model_name='profilebox',
            name='id',
            field=models.IntegerField(default=0, primary_key=True, serialize=False),
        ),
    ]
