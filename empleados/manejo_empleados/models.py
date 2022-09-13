from django.db import models
import datetime
from django.utils import timezone


class  Empleado(models.Model):
    nombre = models.CharField(max_length=400)
    
    def __str__(self):
        return self.nombre
    
    
class Foto(models.Model):
    empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)
    foto = models.ImageField()
   
    
class Dato(models.Model):
    empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    tipo_documento = models.CharField(max_length=100)
    numero_documento = models.CharField(max_length=100)
    correo = models.CharField(max_length=100)
    telefono = models.CharField(max_length=100)
    tipo_sangre = models.CharField(max_length=10)
    
class Estudio(models.Model): 
    empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)
    año_est = models.IntegerField()
    mes_est = models.IntegerField()
    estudio = models.CharField(max_length=100)
    institucion = models.CharField(max_length=100)
    titulo = models.CharField(max_length=100)


class Experiencia(models.Model): 
    empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)
    año_lab = models.IntegerField()
    mes_lab = models.IntegerField()
    empresa = models.CharField(max_length=100)
    jefe_inmediato = models.CharField(max_length=100)
    cargo = models.CharField(max_length=100)
    responsabilidades = models.CharField(max_length=500)
    logros = models.CharField(max_length=500)
