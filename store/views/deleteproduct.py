from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category




def deleteproduct(request, id):

    product = Product.objects.get(id=id)
    product.delete()


    return render(request,'admin.html')

