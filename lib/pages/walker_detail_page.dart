import 'package:flutter/material.dart';

import '../widgets/petwalk_logo.dart';

class WalkerDetailPage extends StatelessWidget {
  // El constructor recibe la información del paseador seleccionado
  // desde la pantalla de búsqueda.
  const WalkerDetailPage({
    super.key,
    required this.name,
    required this.sector,
    required this.distance,
    required this.rating,
    required this.price,
    required this.initials,
    required this.color,
    required this.description,
    required this.services,
    required this.schedule,
    required this.availability,
  });

  // Datos que se mostrarán en el perfil.
  final String name;
  final String sector;
  final String distance;
  final String rating;
  final String price;
  final String initials;
  final Color color;
  final String description;
  final String services;
  final String schedule;
  final String availability;

  @override
  Widget build(BuildContext context) {
    // Scaffold organiza el contenido principal y la barra inferior fija.
    return Scaffold(
      backgroundColor: const Color(0xFF17151E),

      // Fondo general de la pantalla.
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF211D28), Color(0xFF17151E)],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              // Encabezado personalizado con el botón para volver
              // y el logo compacto de PetWalk.
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.07),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.09),
                        ),
                      ),
                      child: IconButton(
                        tooltip: 'Volver',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                    const Expanded(
                      child: Center(child: PetWalkLogo(compact: true)),
                    ),
                    const SizedBox(width: 44),
                  ],
                ),
              ),
              Expanded(
                // Permite desplazar el contenido si la pantalla es pequeña.
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tarjeta principal con avatar, nombre, verificación,
                      // calificación y distancia del paseador.
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.055),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.09),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 76,
                              height: 76,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                initials,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: -0.4,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 9,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(
                                        0xFF366CC9,
                                      ).withValues(alpha: 0.18),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.verified_rounded,
                                          color: Color(0xFF78A2EB),
                                          size: 16,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Perfil verificado',
                                          style: TextStyle(
                                            color: Color(0xFFB9D0FA),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFC9AC36),
                                        size: 19,
                                      ),
                                      Text(
                                        ' $rating',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 14),
                                      const Icon(
                                        Icons.near_me_outlined,
                                        color: Colors.white60,
                                        size: 17,
                                      ),
                                      Text(
                                        ' $distance',
                                        style: const TextStyle(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 26),

                      // Descripción personal del paseador.
                      const Text(
                        'ACERCA DE MÍ',
                        style: TextStyle(
                          color: Color(0xFFC9AC36),
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Color(0xFFD7D3DC),
                          height: 1.55,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 26),

                      // Información relacionada con la prestación del servicio.
                      const Text(
                        'INFORMACIÓN DEL SERVICIO',
                        style: TextStyle(
                          color: Color(0xFFC9AC36),
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          color: const Color(0xFF24202B),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.07),
                          ),
                        ),
                        child: Column(
                          children: [
                            _InformationRow(
                              icon: Icons.pets_rounded,
                              title: 'Servicios',
                              value: services,
                            ),
                            const Divider(height: 28),
                            _InformationRow(
                              icon: Icons.calendar_month_rounded,
                              title: 'Disponibilidad',
                              value: availability,
                            ),
                            const Divider(height: 28),
                            _InformationRow(
                              icon: Icons.schedule_rounded,
                              title: 'Horario',
                              value: schedule,
                            ),
                            const Divider(height: 28),
                            _InformationRow(
                              icon: Icons.map_outlined,
                              title: 'Zona de cobertura',
                              value: sector,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),

                      // Explica qué sucede después de enviar la solicitud.
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.info_outline_rounded,
                            size: 18,
                            color: Colors.white54,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'La solicitud quedará pendiente hasta que $name la acepte o la rechace.',
                              style: const TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Barra fija que muestra la tarifa y la acción principal.
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
        decoration: BoxDecoration(
          color: const Color(0xFF211D28),
          border: Border(
            top: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'POR PASEO',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '\$$price COP',
                      style: const TextStyle(
                        color: Color(0xFFF0D466),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),

              // Envía una solicitud simulada y muestra la confirmación.
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Solicitud enviada a $name. Tendrá hasta 24 horas para responder.',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.send_rounded, size: 19),
                label: const Text('Solicitar paseo'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 15,
                  ),
                  backgroundColor: const Color(0xFFC9AC36),
                  foregroundColor: const Color(0xFF211D28),
                  elevation: 0,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Componente reutilizable para mostrar un dato del servicio
// acompañado por su icono, título y valor.
class _InformationRow extends StatelessWidget {
  const _InformationRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: const Color(0xFFC9AC36).withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xFFC9AC36), size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFFF3EFF7),
                  fontWeight: FontWeight.w600,
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
