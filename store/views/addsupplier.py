from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category
from store.models.supplier import Supplier




def addsupplier(request):
    if request.method == "POST":
        suppliersave = Supplier()
        suppliersave.name = request.POST['name']
        suppliersave.cperson = request.POST['cperson']
        suppliersave.address = request.POST['address']
        suppliersave.phone = request.POST['phone']
        suppliersave.email = request.POST['email']
        suppliersave.save()
        return render(request,'addsupplier.html')
    else:
        return render(request, 'addsupplier.html')



