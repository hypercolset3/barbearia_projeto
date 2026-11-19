import 'package:flutter/material.dart';

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

          // 2. CAMADA ESCURA (Para dar o clima e destacar o conteúdo)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.7),
          ),

          // 3. CONTEÚDO DA TELA
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  // MOLDURA COM O ÍCONE DA TESOURA
                  Container(
                    width: 120,
                    height: 120,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4AF37).withOpacity(0.2), // Dourado transparente
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: const Color(0xFFD4AF37), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFD4AF37).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.content_cut, // Ícone de tesoura
                        size: 60,
                        color: Color(0xFFD4AF37), // Dourado
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),

                  // TÍTULO DA BARBEARIA
                  const Text(
                    'BARBER SHOP',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD4AF37), // Dourado
                      letterSpacing: 3,
                    ),
                  ),
                  
                  const SizedBox(height: 40),

                  // CAMPOS DE TEXTO
                  SizedBox(
                    width: 280,
                    child: Column(
                      children: [
                        // Campo Usuário
                        SizedBox(
                          height: 50,
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'E-mail ou Usuário',
                              hintStyle: const TextStyle(color: Colors.white54),
                              prefixIcon: const Icon(Icons.person, color: Color(0xFFD4AF37)),
                              filled: true,
                              fillColor: Colors.black54, // Fundo escuro translúcido
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xFFD4AF37)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.white24),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xFFD4AF37)),
                              ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 15),

                        // Campo Senha
                        SizedBox(
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Senha',
                              hintStyle: const TextStyle(color: Colors.white54),
                              prefixIcon: const Icon(Icons.lock, color: Color(0xFFD4AF37)),
                              filled: true,
                              fillColor: Colors.black54,
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xFFD4AF37)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.white24),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xFFD4AF37)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),

                  // BOTÃO DE ENTRAR (Dourado)
                  SizedBox(
                    width: 280,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37), // Fundo dourado
                        foregroundColor: Colors.black, // Texto preto
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'AGENDAR HORÁRIO',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  
                  // TEXTO DE CADASTRO
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ainda não tem conta? Cadastre-se',
                      style: TextStyle(color: Colors.white70),
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
}