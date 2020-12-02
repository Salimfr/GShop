from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category




def AddCategorySave(request):
    if request.method == 'POST':
        categorysave = Category()
        if request.POST['name'] == "":
            return render(request, 'addcategory.html')
        else:
            categorysave.name = request.POST['name']
            categorysave.save()
            return render(request,'index.html')
    else:
        return render(request, 'addcategory.html')

