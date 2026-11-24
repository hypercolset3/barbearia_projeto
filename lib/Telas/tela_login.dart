import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E), // Fundo escuro elegante (quase preto)
      
      // Botão de voltar no canto superior esquerdo
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)), // Seta dourada
      ),

      // Permite rolar a tela quando o teclado abrir
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // Ícone da Tesoura com um fundo circular sutil
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFD4AF37).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.content_cut,
                size: 60,
                color: Color(0xFFD4AF37),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Título e Subtítulo
            const Text(
              'BEM-VINDO',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37),
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Acesse sua conta para agendar',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            
            const SizedBox(height: 50),

            // Campo de E-mail
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.email, color: Color(0xFFD4AF37)),
                filled: true,
                fillColor: const Color(0xFF2A2A2A), // Fundo do campo um pouco mais claro
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Bordas bem arredondadas
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2), // Borda dourada ao clicar
                ),
              ),
            ),
            
            const SizedBox(height: 20),

            // Campo de Senha
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.lock, color: Color(0xFFD4AF37)),
                filled: true,
                fillColor: const Color(0xFF2A2A2A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2),
                ),
              ),
            ),

            // Botão de Esqueceu a Senha
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Botão de Entrar
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  // Aqui você pode colocar o Navigator para ir para a Tela Principal
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4AF37), // Botão Dourado
                  foregroundColor: Colors.black, // Texto Preto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5, // Sombra no botão
                ),
                child: const Text(
                  'ENTRAR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Link para cadastro
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Não tem uma conta? ',
                  style: TextStyle(color: Colors.white70),
                ),
                GestureDetector(
                  onTap: () {
                    // Navegação para a tela de cadastro
                  },
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}