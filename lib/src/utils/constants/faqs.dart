const faqs = [
  Faq(
    question:
        '¿Qué hacer en caso de confrontar alguna dificultad en el momento de la matrícula?',
    answer:
        'Debe comunicarse con la Universidad de La Habana, a través de los teléfonos '
        '78734251 y 78788115, en días laborables, entre las 9:00AM y 1:00PM.',
  ),
  Faq(
    question: '¿Por qué da error cuando intento recuperar la contraseña?',
    answer:
        'El proceso de recuperar la contraseña solo esta disponible para los usuarios nuevos. '
        'Para los antiguos usuarios se encuentra en desarrollo aún.',
  ),
];

class Faq {
  final String question;
  final String answer;

  const Faq({required this.question, required this.answer});
}
