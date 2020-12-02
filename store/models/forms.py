from django import forms
from store.models.product import Product


class ProductForm(forms.ModelForm):
    """Form for the image model"""
    class Meta:
        model = Product
        fields = "__all__"