from django.contrib import admin

from .models import Dato, Empleado, Estudio, Experiencia, Foto

# Register your models here.
admin.site.register([Empleado,Foto,Dato,Experiencia,Estudio])