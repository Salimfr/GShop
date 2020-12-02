from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category
from store.models.ordermain import OrderMain




def completed(request, id):

    ordermain = OrderMain.objects.get(id=id)
    ordermain.status = "d"
    ordermain.save()

    return render(request,'pendingorder.html', {'ordermain':ordermain})