from django.shortcuts import render
from django.views.generic import ListView, DetailView
from .models import ProfileBox

# Create your views here.

def index(request):
    prof = ProfileBox.objects.order_by('id')
    return render(request, 'dept/index.html', {'prof': prof})
