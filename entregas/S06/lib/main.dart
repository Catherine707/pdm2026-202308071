import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesión de Estudio',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F4FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6D5AA8),
          brightness: Brightness.light,
        ),
      ),
      home: const PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Saludo
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5DFF4),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      color: Color(0xFF62518F),
                      size: 30,
                    ),
                  ),

                  const SizedBox(width: 14),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola, Yasmin',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF352E4D),
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          'Esperamos que tengas una sesión tranquila',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF827A96),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Color(0xFF6D5AA8),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Sesión de estudio
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF675499),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.auto_awesome_outlined,
                          color: Colors.white,
                        ),

                        SizedBox(width: 8),

                        Text(
                          'Tu espacio de estudio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      '¿Lista para comenzar?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 7),

                    const Text(
                      'Prepara tu música y concéntrate en lo importante.',
                      style: TextStyle(
                        color: Color(0xFFE7E1F5),
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow_rounded),
                        label: const Text(
                          'Comenzar sesión',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF62518F),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // Biblioteca
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tu biblioteca',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF352E4D),
                    ),
                  ),

                  Text(
                    'Ver todo',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6D5AA8),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAE5F5),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.queue_music_rounded,
                            color: Color(0xFF62518F),
                            size: 32,
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Playlist 1',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A4260),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDCD4EE),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.library_music_outlined,
                            color: Color(0xFF62518F),
                            size: 32,
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Playlist 2',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A4260),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0EAF7),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.music_note_rounded,
                            color: Color(0xFF7967AA),
                            size: 32,
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Relax',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A4260),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6DEF1),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.headphones_rounded,
                            color: Color(0xFF62518F),
                            size: 32,
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Focus',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A4260),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // Recientes
              const Text(
                'Escuchado recientemente',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF352E4D),
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD8E5E4),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Icon(
                        Icons.music_note,
                        size: 32,
                        color: Color(0xFF668886),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9DDEB),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Icon(
                        Icons.music_note,
                        size: 32,
                        color: Color(0xFF8B668D),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E2D6),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Icon(
                        Icons.music_note,
                        size: 32,
                        color: Color(0xFF8F8068),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4D5DC),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Icon(
                        Icons.music_note,
                        size: 32,
                        color: Color(0xFF946B7B),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // Música actual
              const Text(
                'Música actual',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF352E4D),
                ),
              ),

              const SizedBox(height: 15),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: const Color(0xFFE3DDED),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9CEE9),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Icon(
                            Icons.music_note_rounded,
                            size: 42,
                            color: Color(0xFF6D5AA8),
                          ),
                        ),

                        const SizedBox(width: 16),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nombre de la canción',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF352E4D),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'Nombre del artista',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF827A96),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                'Playlist de concentración',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6D5AA8),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF827A96),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const LinearProgressIndicator(
                      value: 0.45,
                      minHeight: 5,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      backgroundColor: Color(0xFFE6E0EF),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF6D5AA8),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1:32',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9189A3),
                          ),
                        ),

                        Text(
                          '3:45',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9189A3),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_previous_rounded,
                            size: 32,
                            color: Color(0xFF62518F),
                          ),
                        ),

                        const SizedBox(width: 10),

                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: const Color(0xFF675499),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.pause_rounded,
                              color: Colors.white,
                              size: 31,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_next_rounded,
                            size: 32,
                            color: Color(0xFF62518F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // Mensaje final
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFECE7F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Color(0xFF765FA1),
                      size: 30,
                    ),

                    SizedBox(width: 14),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recuerda tomar un descanso',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF453B5B),
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Estudiar con pequeñas pausas puede ayudarte a mantener la concentración.',
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.4,
                              color: Color(0xFF756D86),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}