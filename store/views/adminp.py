from django.shortcuts import render, redirect

from django.contrib.auth.hashers import check_password
from store.models.customer import Customer
from django.views import View

from store.models.product import Product
from store.models.category import Category
from store.models.ordermain import OrderMain

from store.middlewares.auth import auth_middleware
from store.models.ordermain import OrderMain


class AdminpView(View):


    def get(self , request ):
        category = Category.objects.all()
        product = Product.objects.all()
        ordermain = OrderMain.objects.all()
        return render(request, 'admin.html', {'product':product, 'ordermain':ordermain})