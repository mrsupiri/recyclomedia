# Generated by Django 3.0.7 on 2020-06-29 08:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0009_auto_20200629_1417'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='username',
            field=models.CharField(default='', max_length=100),
            preserve_default=False,
        ),
    ]
