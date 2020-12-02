from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category
from store.models.supplier import Supplier




def contactus(request):
    if request.method == "POST":
        return render(request,'contactus.html')
    else:
        return render(request, 'contactus.html')



