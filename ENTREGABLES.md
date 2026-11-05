# Festival de la Leyenda Vallenata 2027 - Sistema de Votaciones

Proyecto académico desarrollado con Django y MySQL para la gestión de concursos y votaciones del Festival de la Leyenda Vallenata. Este repositorio contiene la implementación final correspondiente al Eje 3, cumpliendo con los estándares de integridad de datos, interoperabilidad y experiencia de usuario.

## Estado del Proyecto - Eje 2 (Festival Vallenato 2027)

📌 Lo que ya está terminado (Backend & Infraestructura)

La base lógica y estructural requerida por la rúbrica ha sido completada:

Configuración Django: Arquitectura MVT, apps separadas (votaciones, usuarios).

Modelos de Datos: Creadas las entidades Edicion, Categoria, Votacion, Opcion ajustadas al feedback del cliente (permitiendo múltiples fases por categoría).

Autenticación Base: Sistema de Login, Logout y Registro completamente funcional y seguro.

Django Admin: Habilitado para gestionar los datos sin modificar código.

Vistas Públicas: Conexión de la base de datos a las plantillas HTML (listado de ediciones y categorías).

🛠️ Lo que hace falta (Tareas de Equipo)

Para alcanzar los 20/20 puntos de esta entrega, el equipo debe dividirse las siguientes tareas:

1. Diseño e Interfaz Pública (CSS) - Prioridad Alta

Responsables: Equipo de Frontend.

Tarea: Los HTML actuales están "crudos". Necesitamos aplicar estilos CSS para que se vean presentables para el cliente, utilizando los colores y la identidad cultural del Festival.

Nota: No tiene que ser el diseño final y perfecto, pero debe mostrar una propuesta visual coherente.

2. Migración a MySQL - Obligatorio para la Nota Técnica

Responsable: Desarrollador Backend / Infraestructura.

Tarea: Aunque actualmente usamos SQLite para velocidad, la rúbrica exige que los datos persistan en MySQL. Antes de la entrega final, debemos cambiar el diccionario DATABASES en settings.py, instalar el driver correspondiente y correr las migraciones en el servidor de MySQL.

3. Documento PDF Final - Entregable del Cliente

Responsables: Todos (Redacción colaborativa).

Contenido a redactar:

Introducción y objetivos (ya se tiene un borrador).

Desarrollo Técnico (Explicar cómo funciona nuestro patrón MVT y la conexión a la base de datos).

Código relevante (Pegar el código de nuestros models.py y views.py).

Capturas de pantalla comentadas: Debemos tomar fotos del Django Admin, las interfaces ya estilizadas, y explicar qué demuestra cada captura.

4. Video Demostrativo - Requisito de Evaluación

Responsables: Todos los integrantes del grupo (obligatorio).

Tarea: Grabar un video (puede ser por Zoom, Teams, Meet) donde los cuatro hablemos, mostremos el repositorio, cómo se ejecuta el proyecto, cómo funciona el inicio de sesión y cómo se ven los datos en la pantalla pública.

## 🚀 Novedades y Características del Eje 3

1. Migración a MySQL y Estabilidad

Motor Relacional: El proyecto migró exitosamente de SQLite a MySQL/MariaDB, garantizando mayor escalabilidad y concurrencia.

Conector PyMySQL: Implementación de pymysql como driver principal para asegurar la compatibilidad total en entornos Linux (WSL) y evitar errores de segmentación (C libraries) o fallos de sockets locales, forzando una conexión segura vía TCP/IP (127.0.0.1).

2. Regla de Negocio Central (Integridad de Datos)

Control de Votos (Unique Constraint): Se estableció una restricción a nivel de base de datos (UniqueConstraint) en el modelo Voto que vincula estrictamente usuario, categoria y edicion.

Prevención de Fraude: El sistema garantiza que un usuario no pueda emitir más de un voto en la misma categoría, incluso si esta tiene múltiples subeventos o fases (ej. Eliminatoria, Semifinal, Final).

Transacciones Atómicas: El guardado del voto se maneja con transaction.atomic(), capturando de manera controlada el IntegrityError de MySQL para retornar feedback amigable al usuario sin colapsar el servidor.

3. Interoperabilidad y API REST (JSON)

Endpoint de Consulta: Se habilitó la ruta pública /api/categorias/ que responde a peticiones GET.

Estructura de Datos: Retorna un objeto JSON completamente estructurado que expone las categorías activas y las opciones (candidatos) disponibles por fase. Esto permite que el sistema del Festival se pueda conectar a futuro con aplicaciones móviles u otras plataformas externas.

4. Interfaz de Usuario y Administración (UI/UX)

Feedback de Participación: Si un usuario autenticado ya emitió su voto en una categoría, la interfaz oculta automáticamente el formulario y despliega un mensaje de confirmación de participación.

Limpieza Visual: Se implementaron correcciones de compatibilidad universal (iconografía estándar para todas las plataformas) y se removieron los avisos de "Demostración" para presentar una interfaz oficial.

Auditoría (Admin): Los registros de votación son completamente consultables por la Fundación a través del panel nativo de Django Administration.

🛠️ Requisitos Técnicos

Python 3.11+

MySQL Server / MariaDB

Django 5.x

PyMySQL (Conector de base de datos)

⚙️ Instrucciones de Instalación Local

Sigue estos pasos para levantar el entorno de desarrollo y probar el sistema localmente.

1. Configurar la Base de Datos

Accede a tu servidor MySQL (vía terminal o XAMPP) y crea la base de datos y el usuario con privilegios:

CREATE DATABASE festival_vallenato CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'admin_festival'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON festival_vallenato.* TO 'admin_festival'@'localhost';
FLUSH PRIVILEGES;


2. Preparar el Entorno Virtual

Clona el repositorio, accede a la carpeta y activa tu entorno virtual:

python -m venv venv
source venv/bin/activate  # En Linux/Mac
# venv\Scripts\activate   # En Windows


3. Instalar Dependencias

Instala los paquetes requeridos por el proyecto:

pip install django pymysql


4. Migraciones y Superusuario

Construye la estructura de tablas en MySQL y crea tu usuario administrador:

python manage.py migrate
python manage.py createsuperuser


5. Poblar Datos de Demostración

Para inyectar los participantes oficiales de la edición 2027, abre la consola interactiva (python manage.py shell) y ejecuta el script de poblamiento inicial. (Asegúrate de importar los modelos Edicion, Categoria, Votacion, Opcion e inyectar el diccionario de prueba).

6. Ejecutar el Servidor

python manage.py runserver


Visita http://127.0.0.1:8000 para ver la aplicación web o http://127.0.0.1:8000/api/categorias/ para consultar el endpoint JSON.

Documentación estructurada para sustentar los requerimientos del Eje 3.