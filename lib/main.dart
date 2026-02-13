import 'package:flutter/material.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212), // Fondo profundo
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INVESTECH',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E), // Gris Oxford
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.insights, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_balance_wallet, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
          child: Column(
            children: [
              // Fila 1: Portafolio y Cripto
              Expanded(
                child: Row(
                  children: [
                    _buildFinanceCard(
                      label: "Portafolio",
                      icon: Icons.pie_chart_outline,
                      color: Colors.orange.shade700,
                    ),
                    _buildFinanceCard(
                      label: "Mercados",
                      icon: Icons.public,
                      color: Colors.amber.shade600,
                    ),
                  ],
                ),
              ),
              // Fila 2: Acciones y Divisas
              Expanded(
                child: Row(
                  children: [
                    _buildFinanceCard(
                      label: "Acciones",
                      icon: Icons.trending_up,
                      color: Colors.purple.shade400,
                    ),
                    _buildFinanceCard(
                      label: "Divisas",
                      icon: Icons.currency_exchange,
                      color: Colors.green.shade600,
                    ),
                  ],
                ),
              ),
              // Fila 3: Configuración y Notificaciones
              Expanded(
                child: Row(
                  children: [
                    _buildFinanceCard(
                      label: "Ahorro",
                      icon: Icons.savings_outlined,
                      color: Colors.blue.shade600,
                    ),
                    _buildFinanceCard(
                      label: "Alertas",
                      icon: Icons.notifications_active_outlined,
                      color: Colors.red.shade400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget optimizado para una estética de inversión profesional
  Widget _buildFinanceCard({
    required String label,
    required IconData icon,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E), // Fondo de tarjeta oscuro
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: color, // Borde del color temático para elegancia
            width: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icono con círculo de fondo sutil
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2A2A),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}