# Generated by Django 2.2.7 on 2019-11-19 03:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('orm', '0018_project_specific'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='distro',
            name='up_id',
        ),
        migrations.AlterField(
            model_name='build',
            name='recipes_parsed',
            field=models.IntegerField(default=1),
        ),
    ]
