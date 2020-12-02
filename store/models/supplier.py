from django.db import  models
from django.core.validators import MinLengthValidator

class Supplier(models.Model):
    name = models.CharField(max_length=50)
    cperson = models.CharField(max_length=50)
    address = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)
    email = models.EmailField()

    def register(self):
        self.save()

