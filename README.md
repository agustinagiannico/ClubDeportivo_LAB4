# Trabajo práctico - Laboratorio de Computación 4
### Tema 1: **Club Deportivo**


Un club deportivo importante necesita un sitio web para llevar información acerca de **sus
actividades, socios, pago de cuotas, entre otras cosas.** 
El sitio web debe tener un portal público donde en la pantalla principal se vea información general del club,
publicidades y que además tenga un enlace a un portal de noticias del club. 
Las noticias deben estar relacionadas a las actividades del club y deben poder ser filtradas por las mismas.
Es decir, que el usuario pueda navegar todas las noticias seleccionando una actividad y que se filtren las correspondientes a la misma.

> Cada socio puede inscribirse a una o más actividades, cada una de las cuales tiene un precio preestablecido. 
Al pagar la cuota societaria, la misma se calcula como la suma de los precios de todas las actividades a las que el socio se inscribió.

El sitio debe tener una sección para administradores, a la cual se acceda mediante
autenticación, en donde existan las siguientes opciones:
+ **Carga de publicaciones.** Las mismas deben poder ser habilitadas o deshabilitadas. 
Las publicaciones habilitadas son las que se mostrarán en el portal de noticias del sitio.
+ **ABMC (Alta, Baja, Modificación y Consulta) de actividades** (por ejemplo escuela de fútbol, pileta, etc)
+ **ABMC de socios**
+ **Registrar el pago de cuotas de los socios**
+ **Inscripción y desinscripción de socios a actividades**
+ **Sección reportes:**
    - Monto total de ganancias en cuotas
    - Nombre y total de ganancias de las 3 actividades con mayor ganancia total.
    - Listado de socios inscriptos a una actividad en particular
    - Seleccionar un socio y ver un listado de sus cuotas pagas
