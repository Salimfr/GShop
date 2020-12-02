from django.db import models
from .product import Product
from .customer import Customer
import datetime


class OrderMain(models.Model):
    orderno = models.CharField(max_length=50, default='', blank=True)
    customer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    address = models.CharField(max_length=50, default='', blank=True)
    phone = models.CharField(max_length=50, default='', blank=True)
    date = models.DateField(default=datetime.datetime.today)
    totalamt = models.CharField(max_length=10)
    status = models.CharField(max_length=5, default='o')

    def placeOrderMain(self):
        self.save()

    @staticmethod
    def get_orders_by_customer(customer_id):
        return OrderMain.objects.filter(customer=customer_id).order_by('-orderno')


