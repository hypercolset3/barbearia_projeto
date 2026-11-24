import 'package:flutter/material.dart';
// 👇 Importa a tela de login (Verifique se a pasta é 'Telas' com T maiúsculo)
import 'Tela_login.dart'; 

class TelasBoasVindas extends StatelessWidget {
  const TelasBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. FOTO DE FUNDO (Ambiente de Barbearia)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1585747860715-2ba37e788b70?q=80&w=1000&auto=format&fit=crop'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. CAMADA ESCURA
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.8),
          ),

          // 3. BOTÃO DE LOGIN (CANTO SUPERIOR DIREITO)
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    // 👇 AQUI ESTÁ O COMANDO DE NAVEGAÇÃO CORRIGIDO
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaLogin(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFFD4AF37),
                  ),
                  child: const Text(
                    'Fazer Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // 4. CONTEÚDO CENTRAL
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  // Ícone da Tesoura
                  const Icon(
                    Icons.content_cut,
                    size: 80,
                    color: Color(0xFFD4AF37),
                  ),
                  
                  const SizedBox(height: 20),

                  // Título Principal
                  const Text(
                    'BARBER SHOP',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD4AF37),
                      letterSpacing: 4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 10),

                  // Subtítulo
                  const Text(
                    'Estilo e tradição em cada corte.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 30),

                  // Galeria de Cortes (Fotos Redondas)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _fotoCorte('https://images.unsplash.com/photo-1599351431202-1e0f0137899a?q=80&w=200&auto=format&fit=crop'),
                      const SizedBox(width: 15),
                      _fotoCorte('https://images.unsplash.com/photo-1622286342621-4bd786c2447c?q=80&w=200&auto=format&fit=crop'),
                      const SizedBox(width: 15),
                      _fotoCorte('https://images.unsplash.com/photo-1503951914875-452162b0f3f1?q=80&w=200&auto=format&fit=crop'),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Botão Principal
                  SizedBox(
                    width: 280,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'AGENDAR HORÁRIO',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Função auxiliar para criar as fotos redondas dos cortes
  Widget _fotoCorte(String url) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFD4AF37), width: 2),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}