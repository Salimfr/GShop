from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category
from store.models.supplier import Supplier



def purchase(request):
    suppliers = Supplier.objects.all()
    products = Product.objects.all()
    categories = Category.objects.all()
    return render(request,'purchase.html',{'products':products, 'categories': categories, 'suppliers': suppliers})

