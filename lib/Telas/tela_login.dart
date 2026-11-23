import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  bool _ocultarSenha = true;

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://unsplash.com'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.85),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFFD4AF37)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.content_cut, size: 65, color: Color(0xFFD4AF37)),
                  const SizedBox(height: 16),
                  const Text(
                    'BEM-VINDO',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37), letterSpacing: 3),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Acesse sua conta para agendar',
                    style: TextStyle(fontSize: 15, color: Colors.white70, letterSpacing: 1),
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white),
                    decoration: _estiloInput('E-mail', Icons.email_outlined),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _senhaController,
                    obscureText: _ocultarSenha,
                    style: const TextStyle(color: Colors.white),
                    decoration: _estiloInput('Senha', Icons.lock_outline).copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(_ocultarSenha ? Icons.visibility_off : Icons.visibility, color: Colors.white54),
                        onPressed: () => setState(() => _ocultarSenha = !_ocultarSenha),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(foregroundColor: const Color(0xFFD4AF37)),
                      child: const Text('Esqueci minha senha?'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4AF37),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text('ENTRAR', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
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

  InputDecoration _estiloInput(String label, IconData icone) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white70),
      prefixIcon: Icon(icone, color: const Color(0xFFD4AF37)),
      filled: true,
      fillColor: Colors.white.withOpacity(0.08),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.white24),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2),
      ),
    );
  }
}
