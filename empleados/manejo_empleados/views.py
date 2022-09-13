from django.urls import reverse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from .models import Dato, Empleado, Estudio, Experiencia, Foto

# Create your views here.
def index(request):
    latest_question_list = Empleado.objects.all()
    return render(request, "manejo_empleados/index.html",{
        "latest_question_list":latest_question_list
    })

def detail(request, empleado_id):
    empleado = Empleado.objects.get(pk=empleado_id)
    return render(request, "manejo_empleados/detail.html",{
        "empleado":empleado
    })