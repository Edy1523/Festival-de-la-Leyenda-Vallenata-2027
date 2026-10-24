from django.shortcuts import render
from .models import Edicion, Categoria, Votacion

def index(request):
    # Traemos todas las ediciones activas desde la base de datos
    ediciones = Edicion.objects.filter(activa=True)
    return render(request, 'votaciones/index.html', {'ediciones': ediciones})

def lista_categorias(request):
    # Traemos todas las categorías activas
    categorias = Categoria.objects.filter(estado=True)
    return render(request, 'votaciones/categorias.html', {'categorias': categorias})
