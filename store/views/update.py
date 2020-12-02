from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category




def update(request, id):

    product = Product.objects.get(id=id)
    product.name = request.POST['name']
    product.price = request.POST['price']
    product.category = Category.objects.get(name=request.POST['category'])
    product.description = request.POST['description']

    product.save()


    return render(request,'admin.html')

