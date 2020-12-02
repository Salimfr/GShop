from django.shortcuts import render , redirect , HttpResponseRedirect

from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import  View
from store.models.forms import ProductForm
from store.models.product import Product
from store.models.category import Category



class ProductView(View):
    return_url = None
    def get(self , request):
        Product.return_url = request.GET.get('return_url')
        form1 = ProductForm()
        form12 = Product.objects.all()
        categories = Category.objects.all()
        return render(request , 'product.html', {'form12' : form12, 'categories' : categories})

    def post(self , request):
        print('inside')
        products = Product.objects.all()
        form = ProductForm(request.POST, instance=products)
        if form.is_valid():
            try:
                print('salim')
                form.save()
                return render(request,'index.html')
            except:
                print('abdul')
                return render(request,'index.html')
        else:
            return render(request, 'index.html')


def ProductSave(request):
    productsave = Product()
    productsave.name = request.POST['name']
    productsave.price = request.POST['price']
    productsave.category = Category.objects.get(name=request.POST['category'])
    productsave.description = request.POST['description']
    productsave.image = request.FILES['image']

    productsave.save()

    return render(request,'index.html')

