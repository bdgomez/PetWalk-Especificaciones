import 'package:flutter/material.dart';

import '../widgets/petwalk_logo.dart';
import 'walker_detail_page.dart';

class SearchWalkersPage extends StatelessWidget {
  const SearchWalkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final walkers = [
      {
        'nombre': 'Laura Gómez',
        'sector': 'Laureles',
        'distancia': '0.8 km',
        'calificacion': '4.9',
        'precio': '18.000',
        'iniciales': 'LG',
        'color': const Color(0xFF5F36C9),
        'descripcion':
            'Me encanta compartir con los perros y cuidar cada detalle durante sus paseos. Tengo experiencia con mascotas pequeñas y medianas.',
        'servicios': 'Paseos individuales y cuidado por horas',
        'horario': '8:00 a. m. a 6:00 p. m.',
        'disponibilidad': 'Lunes a sábado',
      },
      {
        'nombre': 'Carlos Ruiz',
        'sector': 'Estadio',
        'distancia': '1.6 km',
        'calificacion': '4.8',
        'precio': '16.000',
        'iniciales': 'CR',
        'color': const Color(0xFF366CC9),
        'descripcion':
            'Paseador responsable con experiencia en perros activos. Me enfoco en recorridos seguros, ejercicio y bienestar.',
        'servicios': 'Paseos individuales y grupales',
        'horario': '6:00 a. m. a 4:00 p. m.',
        'disponibilidad': 'Lunes a viernes',
      },
      {
        'nombre': 'Valentina Ortiz',
        'sector': 'Belén',
        'distancia': '2.4 km',
        'calificacion': '4.9',
        'precio': '20.000',
        'iniciales': 'VO',
        'color': const Color(0xFFC9AC36),
        'descripcion':
            'Cuidadora paciente y atenta. Disfruto acompañar mascotas de todas las edades y seguir sus rutinas de cuidado.',
        'servicios': 'Paseos y cuidado de mascotas mayores',
        'horario': '9:00 a. m. a 7:00 p. m.',
        'disponibilidad': 'Martes a domingo',
      },
      {
        'nombre': 'Andrés López',
        'sector': 'El Poblado',
        'distancia': '3.7 km',
        'calificacion': '4.7',
        'precio': '15.000',
        'iniciales': 'AL',
        'color': const Color(0xFF7E57C2),
        'descripcion':
            'Apasionado por el ejercicio y los animales. Ofrezco paseos tranquilos o recorridos con mayor actividad.',
        'servicios': 'Paseos, ejercicio y visitas a domicilio',
        'horario': '7:00 a. m. a 5:00 p. m.',
        'disponibilidad': 'Todos los días',
      },
      {
        'nombre': 'Sofía Martínez',
        'sector': 'Envigado',
        'distancia': '4.8 km',
        'calificacion': '5.0',
        'precio': '22.000',
        'iniciales': 'SM',
        'color': const Color(0xFF3E8E7E),
        'descripcion':
            'Tengo experiencia cuidando perros con necesidades especiales. Mi prioridad es que se sientan cómodos y seguros.',
        'servicios': 'Paseos y cuidados especiales',
        'horario': '8:00 a. m. a 8:00 p. m.',
        'disponibilidad': 'Miércoles a domingo',
      },
    ];

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2A2435), Color(0xFF171520)],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const PetWalkLogo(),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 9,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFC9AC36).withValues(alpha: 0.14),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFC9AC36)),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Color(0xFFC9AC36),
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '5 km',
                          style: TextStyle(
                            color: Color(0xFFC9AC36),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              const Text(
                'Encuentra tu paseador ideal',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                'Personas disponibles cerca de ti para cuidar a tu mejor amigo.',
                style: TextStyle(color: Colors.white70, height: 1.4),
              ),
              const SizedBox(height: 18),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar por nombre o sector',
                  prefixIcon: const Icon(Icons.search_rounded),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${walkers.length} paseadores encontrados',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: walkers.length,
                  itemBuilder: (context, index) {
                    final walker = walkers[index];

                    return Card(
                      color: const Color(0xFF2A2335),
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                radius: 28,
                                backgroundColor: walker['color'] as Color,
                                child: Text(
                                  walker['iniciales'].toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(
                                walker['nombre'].toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                '${walker['sector']} · ${walker['distancia']}',
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFFC9AC36),
                                    size: 20,
                                  ),
                                  Text(walker['calificacion'].toString()),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '\$${walker['precio']} COP por paseo',
                                    style: const TextStyle(
                                      color: Color(0xFFC9AC36),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) => WalkerDetailPage(
                                          name: walker['nombre'].toString(),
                                          sector: walker['sector'].toString(),
                                          distance: walker['distancia']
                                              .toString(),
                                          rating: walker['calificacion']
                                              .toString(),
                                          price: walker['precio'].toString(),
                                          initials: walker['iniciales']
                                              .toString(),
                                          color: walker['color'] as Color,
                                          description: walker['descripcion']
                                              .toString(),
                                          services: walker['servicios']
                                              .toString(),
                                          schedule: walker['horario']
                                              .toString(),
                                          availability: walker['disponibilidad']
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('Ver perfil'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
