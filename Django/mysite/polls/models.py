import datetime
from django.utils import timezone
from django.db import models

class Question(models.Model):

    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return self.question_text

    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)


class Choice(models.Model):
    question = models.ForeignKey(Question, related_name='choices', on_delete=models.CASCADE) 
    # Since you have a foreign key from Choice model to the Question model, you will 
    # automatically get the inverse relation on instances of the question model 
    # back to the set of possible choices.
    # 'question.choice_set.all' is the queryset of choices which 
    # point to your question instance as the foreign key.
    # By default related_name is set to choice_set.
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)

    def __str__(self):
        return self.choice_text