from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category


def edit(request, id):
    products = Product.objects.filter(id=id)
    print("ok **** ", products)
    categories = Category.objects.all()
    return render(request,'edit.html', {'products':products, 'categories':categories})

