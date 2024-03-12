import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const name = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Row(
          children: [
            AccountCard(option: 'Cuenta conjunta'),
            Row(
              children: [
                OptionCard(option: 'Listado de Gastos'),
                OptionCard(option: 'Registro de gasto')
              ],
            ),
            Row(
              children: [
                OptionCard(option: 'Meta de gastos'),
                OptionCard(option: 'Registro de tarjetas')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String option;
  const OptionCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text(option),
          ),
        ),
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  final String option;
  const AccountCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text(option),
          ),
        ),
      ),
    );
  }
}
