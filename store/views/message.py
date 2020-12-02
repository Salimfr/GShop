from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category
from store.models.ordermain import OrderMain
from store.models.orders import Order
from store.models.product import Product



def messageto(request, id):

    order = Order.objects.filter(orderno=id)

    return render(request,'messagepage.html', {'order': order})