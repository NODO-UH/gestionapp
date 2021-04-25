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
        link: 'https://github.com/maximoalejandro',
      ),
      DeveloperInfo(
        name: 'Andy González Peña',
        role: 'Infraestructura y Conectividad',
        link: 'https://github.com/andyglez',
      ),
      DeveloperInfo(
        name: 'Juan Jose Roque Cires',
        role: 'Desarrollador de Servicios',
        link: 'https://github.com/jr638091',
      ),
      DeveloperInfo(
        name: 'Christian Rodriguez Diaz',
        role: 'Desarrollador de Servicios',
        link: 'https://github.com/WrathXL',
      ),
    ],
    'Grupo de Redes y Sistemas - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Adrian Tubal Páez Ruiz',
        role: 'Desarrollador de Servicios',
        link: 'https://github.com/stdevAdrianPaez',
      ),
      DeveloperInfo(
        name: 'Marcos Antonio Maceo Reyes',
        role: 'Desarrollador de Servicios',
        link: 'https://github.com/stdevMac',
      ),
      DeveloperInfo(
        name: 'Roberto Marti Cedeño',
        role: 'Desarrollador',
        link: 'https://github.com/rmarticedeno',
      ),
    ],
    'Facultad de Matemática y Computación - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Carlos Bermúdez Porto',
        role: 'Desarrollador',
        link: 'https://github.com/cbermudez97',
      ),
      DeveloperInfo(
        name: 'Leonel Alejandro García López',
        role: 'Desarrollador',
        link: 'https://github.com/lagcleaner',
      ),
      DeveloperInfo(
        name: 'Leynier Gutiérrez González',
        role: 'Desarrollador',
        link: 'https://github.com/leynier',
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
