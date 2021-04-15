class About {
  static const shortDescription =
      '''Aplicación desarrollada para la gestión de los recursos digitales en la Universidad de La Habana.''';
}

class Developers {
  static const Map<String, List<DeveloperInfo>> teams = {
    'Nodo Central de Red - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Jesús Luis Guerrero Campins',
        role: 'Infraestructura y Conectividad',
      ),
      DeveloperInfo(
        name: 'Máximo Alejandro Alfonso Fernández',
        role: 'Infraestructura y Conectividad',
      ),
      DeveloperInfo(
        name: 'Andy González Peña',
        role: 'Infraestructura y Conectividad',
      ),
      DeveloperInfo(
        name: 'Juan Jose Roque Cires',
        role: 'Desarrollador de Servicios',
      ),
      DeveloperInfo(
        name: 'Christian Rodriguez Diaz',
        role: 'Desarrollador de Servicios',
      ),
    ],
    'Grupo de Redes y Sistemas - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Adrian Tubal Páez Ruiz',
        role: 'Desarrollador de Servicios',
      ),
      DeveloperInfo(
        name: 'Marcos Antonio Maceo Reyes',
        role: 'Desarrollador de Servicios',
      ),
      DeveloperInfo(
        name: 'Roberto Marti Cedeño',
        role: 'Desarrollador',
      ),
    ],
    'Facultad de Matemática y Computación - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Carlos Bermúdez Porto',
        role: 'Desarrollador',
      ),
      DeveloperInfo(
        name: 'Leonel Alejandro García López',
        role: 'Desarrollador',
      ),
      DeveloperInfo(
        name: 'Leynier Gutiérrez González',
        role: 'Desarrollador',
      ),
    ]
  };
}

class DeveloperInfo {
  final String name;
  final String role;
  final String? link;

  const DeveloperInfo({
    required this.name,
    required this.role,
    this.link,
  });
}
