from django.shortcuts import render, redirect

from django.contrib.auth.hashers import check_password
from store.models.customer import Customer
from django.views import View

from store.models.product import Product
from store.models.ordermain import OrderMain
from store.models.orders import Order


class CheckOut(View):
    def post(self, request):
        x = OrderMain.objects.all().count()
        ordernos = x+1
        address = request.POST.get('address')
        phone = request.POST.get('phone')
        totalamt = request.POST.get('totalamt')
        customer = request.session.get('customer')
        cartp = request.session.get('cart')
        products = Product.get_products_by_id(list(cartp.keys()))

        ordermains = OrderMain(orderno=ordernos,
                      customer=Customer(id=customer),
                      address=address,
                      phone=phone,
                      totalamt = totalamt,
                      )

        ordermains.save()


        for product in products:
            print(cartp.get(str(product.id)))
            order = Order(orderno = ordernos,
                          customer=Customer(id=customer),
                          product=product,
                          price=product.price,
                          address=address,
                          phone=phone,
                          quantity=cartp.get(str(product.id)))
            order.save()
        request.session['cart'] = {}

        return redirect('orders')