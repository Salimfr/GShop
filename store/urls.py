from django.contrib import admin
from django.urls import path
from .views.home import Index , store
from .views.signupp import Signupp
from .views.login import Login , logout
from .views.cartp import Cartp
from .views.checkout import CheckOut
from .views.orders import OrderView
from .views.adminp import AdminpView
from .views.product import ProductView
from .views.product import ProductSave
from .views.addcategory import AddCategorySave
from .views.pendingorder import PendingOrderView
from .middlewares.auth import  auth_middleware
from .views.edit import edit
from .views.update import update
from .views.deleteproduct import deleteproduct
from .views.completed import completed
from .views.message import messageto
from .views.purchase import purchase
from .views.addsupplier import addsupplier
from .views.cancelorder import cancelorder
from .views.contactus import contactus

from django.views.static import serve
from django.conf.urls import url

urlpatterns = [
    path('', Index.as_view(), name='homepage'),
    path('store', store , name='store'),
    path('signupp', Signupp.as_view(), name='signupp'),
    path('login', Login.as_view(), name='login'),
    path('logout', logout , name='logout'),
    path('cartp', auth_middleware(Cartp.as_view()) , name='cartp'),
    path('check-out', CheckOut.as_view() , name='checkout'),
    path('adminpage', AdminpView.as_view(), name='adminpage'),
    path('product', ProductView.as_view(), name='product'),
    path('addcategory', AddCategorySave, name='addcategory'),
    path('ProductSave', ProductSave, name='ProductSave'),
    path('orderpending', PendingOrderView.as_view(), name='orderpending'),
    path('orders', auth_middleware(OrderView.as_view()), name='orders'),
    path('edit/<int:id>', edit, name='edit'),
    path('update/<int:id>', update, name='update'),
    path('deleteproduct/<int:id>', deleteproduct, name='deleteproduct'),
    path('completed/<int:id>', completed, name='completed'),
    path('messageto/<int:id>', messageto, name='messageto'),
    path('purchase', purchase, name='purchase'),
    path('addsupplier', addsupplier, name='addsupplier'),
    path('cancelorder/<int:id>', cancelorder, name='cancelorder'),
    path('contactus', contactus, name='contactus'),

    url(r'^media/(?P<path>.*)$', serve,{'document_root':       settings.MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
]