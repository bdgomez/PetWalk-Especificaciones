# Especificaciones del proyecto:

## Problema

* La falta de verificación e intermediación formal en los canales actuales, como redes sociales y clasificados, expone a las mascotas y a los datos personales de dueños y cuidadores a riesgos evitables.
* Se requiere una plataforma digital de intermediación bajo demanda que conecte de forma segura, confiable y usable a dueños de mascotas con paseadores y cuidadores verificados en su zona.



## Stakeholders

* **Dueños de mascotas:** Su interés principal es encontrar un paseador/cuidador verificado de forma ágil y con certeza sobre la prestación del servicio. Presionan principalmente los atributos de Seguridad y Usabilidad.


* **Paseadores/Cuidadores:** Su interés principal es tener visibilidad ante nuevos clientes, gestionar su disponibilidad de forma ordenada y construir una reputación verificable. Presionan principalmente el atributo de Fiabilidad.


* **Administrador de la plataforma:** Su interés principal es garantizar que la plataforma opere de forma segura y auditable. Desempeña un rol interno/operativo y presiona el atributo de Seguridad.


* **Mascotas:** Son las beneficiarias finales del servicio, pero no se consideran stakeholders directos debido a que no interactúan con el sistema; su bienestar se representa a través del dueño.



## Actores

* **Dueño de mascota:** Usuario final que registra a su mascota, busca paseadores/cuidadores, solicita servicios, los monitorea, los califica y reporta incidencias.


* **Paseador/Cuidador:** Usuario final que registra sus datos de identidad, configura su disponibilidad (horario y zona), acepta o rechaza solicitudes, marca el inicio/fin del servicio y reporta incidencias.


* **Administrador:** Usuario interno que valida la identidad del paseador/cuidador, aprueba o rechaza los registros y gestiona los controles de la plataforma.


* **Sistema (PetWalk):** Entidad automatizada que controla reglas de negocio, cifrado, vencimiento de solicitudes a las 24 horas y trazabilidad de tiempos.

## Objetivo y metricas de exito

* **Objetivo principal:** Desarrollar el módulo de paseadores/cuidadores de la plataforma PetWalk para cubrir el ciclo completo de búsqueda, solicitud, aceptación, prestación y calificación del servicio de forma segura, fiable y usable.


* **Métricas de éxito / Indicadores de cumplimiento:**
* **Verificación de identidad:** 100% de paseadores/cuidadores activos con identidad validada antes de ofrecer su primer servicio.
* **Protección de datos:** 0 accesos no autorizados a datos personales detectados en pruebas de seguridad.
* **Perfil de mascota completo:** 100% de las solicitudes asociadas a un perfil de mascota con los campos obligatorios completos.
* **Aprobación administrativa:** Tiempo promedio de aprobación de registros por parte del administrador $\le 48$ horas hábiles y 0% de accesos no autorizados exitosos a funciones administrativas.
* **Gestión de disponibilidad:** 0% de solicitudes asignadas fuera del horario o zona declarados por el paseador/cuidador.
* **Búsqueda y selección:** $\ge 90\%$ de las búsquedas iniciadas terminan en una selección sin abandono.
* **Resolución de solicitudes:** 100% de las solicitudes resueltas (aceptadas, rechazadas o expiradas) en un plazo máximo de 24 horas.
* **Trazabilidad del servicio:** 100% de los servicios finalizados con registro de inicio/fin trazable e inmodificable.
* **Calificación y reseña:** $\ge 80\%$ de los servicios finalizados reciben calificación dentro de las 24 horas posteriores.
* **Reporte de incidencias:** Tiempo promedio para completar un reporte de incidencia $\le 1$ minuto.



## Restricciones

* **Restricción de verificación:** Un paseador/cuidador no puede publicar disponibilidad ni recibir solicitudes mientras su documento de identidad no esté validado por el administrador.
* **Restricción de perfil obligatorio:** El sistema debe bloquear el envío de cualquier solicitud si el perfil de la mascota carece de especie, tamaño y temperamento.
* **Exclusividad del rol administrativo:** Las funciones de configuración y control son accesibles única y exclusivamente por el rol de Administrador.
* **Límite de tiempo de solicitud:** Ninguna solicitud puede permanecer en estado ambiguo después de 24 horas sin respuesta; debe pasar automáticamente a "expirada".
* **Simplicidad en reportes:** El formulario de reporte de incidencias no puede exigir más de 3 campos obligatorios.

## Alcance

### Incluye

* Desarrollo del ciclo completo del módulo de paseadores/cuidadores.


* Registro y verificación de identidad del paseador/cuidador.
* Almacenamiento cifrado y protección de datos personales de los usuarios.
* Registro y gestión del perfil de la mascota por parte del dueño.
* Aprobación y control de acceso por el Administrador.
* Configuración de disponibilidad, horarios y zonas de cobertura por el paseador/cuidador.
* Búsqueda y filtrado de paseadores/cuidadores según calificación, tarifa y tipo de servicio.
* Envío, aceptación, rechazo y expiración automática (24 horas) de solicitudes de servicio.
* Registro trazable e inmodificable de marcas de tiempo de inicio y fin del servicio.
* Módulo de calificación y reseñas posteriores al servicio.
* Formulario de reporte de incidencias simples durante o después del servicio.

### No incluye

* Módulo de transporte de mascotas.


* Módulo de domicilios para mascotas.


* Módulo de atención veterinaria.


* Módulo de hospedaje para mascotas.



## Conceptos del dominio

* **PetWalk:** Plataforma digital de intermediación bajo demanda inspirada en el modelo de aplicaciones de movilidad.


* **Módulo de Paseadores/Cuidadores:** Módulo inicial que abarca la búsqueda, solicitud, prestación y calificación del servicio de paseo/cuidado de mascotas.


* **Paseador/Cuidador Verificado:** Usuario prestador del servicio cuyo documento de identidad y datos de contacto han sido validados y aprobados por el administrador.


* **Perfil de la Mascota:** Conjunto de datos de la mascota que contiene campos obligatorios (especie, tamaño, temperamento) y opcionales (salud y cuidados especiales) requeridos para prestar el servicio.
* **Disponibilidad:** Días, horas y zonas geográficas configuradas por el paseador/cuidador en las que está apto para recibir solicitudes.
* **Estado de la Solicitud:** Condición en la que se encuentra la petición del servicio (aceptada, rechazada o expirada automáticamente a las 24 horas).
* **Registro Trazable:** Registro con marcas de tiempo inmodificables de inicio y fin del servicio visibles para el dueño y el paseador.
* **Incidencia:** Reporte de imprevistos u anomalías surgidas durante o después del servicio.

## Reglas de negocio

* **RN-01 (Habilitación por verificación):** El sistema no debe permitir que un paseador/cuidador publique disponibilidad o reciba solicitudes sin previo cifrado y validación de su documento de identidad.
* **RN-02 (Cifrado de datos sensibles):** Los datos personales sensibles (documento, ubicación, contacto) deben almacenarse cifrados y ser accesibles exclusivamente por roles autorizados.
* **RN-03 (Perfil de mascota completo):** No se permite el envío de solicitudes de servicio si los campos obligatorios del perfil de la mascota (especie, tamaño y temperamento) están incompletos.
* **RN-04 (Aprobación administrativa previa):** Ningún paseador/cuidador puede ser visible en búsquedas sin que el administrador haya aprobado su registro explícitamente tras la validación de su identidad.
* **RN-05 (Aislamiento de funciones administrativas):** Cualquier intento de acceso a funciones administrativas por parte de dueños o paseadores/cuidadores debe ser bloqueado y registrado automáticamente.
* **RN-06 (Restricción por disponibilidad):** El motor de solicitudes debe impedir el envío de peticiones fuera de los días, horas y zonas configuradas por el paseador/cuidador.
* **RN-07 (Expiración de solicitudes):** Si el paseador/cuidador no responde una solicitud en un lapso máximo de 24 horas, el sistema debe cambiar automáticamente su estado a "expirada" y notificar al dueño.
* **RN-08 (Inmodificabilidad de marcas de tiempo):** Los registros de inicio y fin de un servicio deben ser inmodificables y quedar visibles para el dueño y el paseador/cuidador.
* **RN-09 (Calificación pos-servicio):** El sistema debe solicitar la calificación del servicio de forma inmediata tras su finalización.
* **RN-10 (Límite de campos en incidencias):** El formulario de reporte de incidencias no debe exigir más de 3 campos obligatorios.

## Historias de usuario

* **HU-01 (Verificación de Identidad):** Como paseador/cuidador, quiero registrar mi documento de identidad y datos de contacto para ser validado por la plataforma y quedar habilitado para ofrecer mis servicios.
* **HU-02 (Protección de Datos):** Como usuario de la plataforma, quiero que mis datos sensibles estén cifrados para garantizar mi confidencialidad.
* **HU-03 (Perfil de Mascota):** Como dueño de mascota, quiero registrar la información de mi mascota (especie, tamaño, temperamento y cuidados) para que el paseador/cuidador sepa cómo atenderla correctamente.
* **HU-04 (Control y Aprobación Administrativa):** Como administrador, quiero validar los documentos de los paseadores/cuidadores y aprobar o rechazar sus cuentas para garantizar la seguridad del servicio.
* **HU-05 (Gestión de Disponibilidad):** Como paseador/cuidador, quiero configurar mis días, horas y zonas de atención para recibir únicamente solicitudes en mis horarios y cobertura disponibles.
* **HU-06 (Búsqueda y Filtrado):** Como dueño de mascota, quiero buscar y filtrar paseadores/cuidadores por ubicación, calificación, tarifa y tipo de servicio para seleccionar la mejor opción sin ayuda externa.
* **HU-07 (Solicitud de Servicio):** Como dueño de mascota, quiero enviar una solicitud a un paseador/cuidador específico para que acepte o rechace el servicio en un plazo máximo de 24 horas.
* **HU-08 (Trazabilidad del Servicio):** Como usuario, quiero que se registre la hora exacta de inicio y fin del servicio para contar con un respaldo inmodificable de la prestación.
* **HU-09 (Calificación y Reseña):** Como dueño de mascota, quiero calificar y reseñar de forma rápida al paseador/cuidador al finalizar el servicio para aportar a la reputación en la plataforma.
* **HU-10 (Reporte de Incidencias):** Como usuario, quiero reportar una incidencia a través de un formulario simple de máximo 3 campos obligatorios para notificar al administrador sin complicaciones.

## Casos de uso

* **CU-01: Registrar e ingresar datos de identidad (Paseador/Cuidador)**
* **CU-02: Validar y aprobar/rechazar cuenta de paseador (Administrador)**
* **CU-03: Crear/Editar perfil de mascota (Dueño)**
* **CU-04: Configurar horario y zona de servicio (Paseador/Cuidador)**
* **CU-05: Buscar y filtrar paseadores/cuidadores (Dueño)**
* **CU-06: Solicitar servicio de paseo/cuidado (Dueño)**
* **CU-07: Procesar solicitud de servicio (Paseador/Cuidador / Sistema por expiración de 24h)**
* **CU-08: Marcar inicio y fin del servicio (Paseador/Cuidador)**
* **CU-09: Calificar y reseñar servicio (Dueño)**
* **CU-10: Enviar reporte de incidencia (Dueño / Paseador/Cuidador)**

## Flujo de pantallas

1. **Pantalla de Registro y Carga de Documentos (Paseador/Cuidador):** Formulario para ingresar datos personales y subir documento de identidad para validación.
2. **Panel de Control y Aprobación (Administrador):** Interfaz para revisar documentos, validar identidad y aprobar/rechazar perfiles de paseadores.
3. **Pantalla de Gestión de Perfil de Mascota (Dueño):** Formulario de registro con validación de campos obligatorios (especie, tamaño, temperamento) y opcionales.
4. **Pantalla de Disponibilidad y Zonas (Paseador/Cuidador):** Calendario y selector de zonas geográficas para habilitar turnos de servicio.
5. **Pantalla de Búsqueda y Filtros (Dueño):** Vista con buscador, mapa/lista y filtros por calificación, tarifa y tipo de servicio.
6. **Pantalla de Detalle y Envio de Solicitud (Dueño):** Visualización del perfil del paseador y botón para confirmar el envío de la solicitud de servicio.
7. **Pantalla de Solicitudes Entrantes (Paseador/Cuidador):** Vista para aceptar o rechazar solicitudes dentro del límite de 24 horas.
8. **Pantalla de Monitoreo y Trazabilidad del Servicio (Dueño / Paseador):** Interfaz activa del servicio con botones de marcación de inicio/fin y visualización inmodificable del tiempo transcurrido.
9. **Pantalla/Pop-up de Calificación y Reseña (Dueño):** Formulario rápido (menos de 1 minuto) emergente al finalizar el servicio para calificar con estrellas y reseña.
10. **Pantalla de Reporte de Incidencias (Dueño / Paseador):** Formulario directo y ágil compuesto por un máximo de 3 campos obligatorios.

## Propuestas de diseno y mockups

* El documento se enfoca en la especificación de requisitos y atributos de calidad de la Entrega 1, por lo que no incluye prototipos o artefactos gráficos visuales (mockups/wireframes) directos.


* No obstante, el documento establece las siguientes pautas de usabilidad y diseño funcional requeridas para las interfaces:
* **Pantalla de Búsqueda:** Diseñada para permitir que usuarios no técnicos busquen y filtren por tarifa, calificación y ubicación de forma autónoma sin requerir asistencia.
* **Pantalla de Calificación:** Debe ser una interfaz inmediata al cierre del servicio, cuyo diligenciamiento requiera menos de 1 minuto de interacción.
* **Pantalla de Reporte de Incidencias:** Debe estructurarse con una interfaz simplificada que contenga como máximo 3 campos obligatorios de diligenciamiento.
* **Vista de Trazabilidad:** Debe mostrar de forma clara e inalterable las marcas de tiempo correspondientes al inicio y fin del servicio para ambas partes.