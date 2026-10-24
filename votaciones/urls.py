from django.urls import path
from . import views

app_name = 'votaciones'

urlpatterns = [
    path('', views.index, name='index'), # La página principal
    path('categorias/', views.lista_categorias, name='categorias'),
]