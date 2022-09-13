from doctest import DocTestFailure
from unittest import result
from django.urls import  path

from . import views
#app_name = "manejo_empleados"
urlpatterns = [
    path("", views.index, name="index"),
    path("detail/<int:empleado_id>", views.detail, name="detail")
#     path("detail/<int:pk>", views.DetailView.as_view(), name="detail"),
#     path("results/<int:pk>", views.ResultsView.as_view(), name="results"),
#     path("vote/<int:question_id>", views.vote, name="vote")
]
