import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
const verde = Color(0xFFC8F54E);
const negro = Color(0xFF202020);
const gris = Color(0xFFF1F2F3);
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PantallaAgregar(),
    );
  }
}
class PantallaAgregar extends StatelessWidget {
  const PantallaAgregar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 18, 0, 25),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.chevron_left, size: 28),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Add money',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 42),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'Select card',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tarjeta('Debit card', '•••• 4568', verde, negro,
                      Icons.account_balance_wallet_outlined, true),
                  const SizedBox(width: 12),
                  tarjeta('Credit card', '•••• 2478',
                      const Color(0xFF252525), Colors.white,
                      Icons.credit_card, false),
                  const SizedBox(width: 12),
                  tarjeta('Bank card', '•••• 7312',
                      const Color(0xFF595959), Colors.white,
                      Icons.account_balance, false),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Add money to Neobank',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  metodo(Icons.account_balance_wallet_outlined,
                      'Move your direct deposit'),
                  const SizedBox(height: 10),
                  metodo(Icons.swap_horiz, 'Transfer from other banks'),
                  const SizedBox(height: 10),
                  metodo(Icons.phone_iphone, 'Apple Pay'),
                  const SizedBox(height: 10),
                  metodo(Icons.credit_card_outlined, 'Debit / Credit Card'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tarjeta(
  String titulo,
  String numero,
  Color color,
  Color colorTexto,
  IconData icono,
  bool seleccionada,
) {
  return Container(
    width: 126,
    padding: const EdgeInsets.all(11),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(18),
      border: seleccionada ? Border.all(color: negro, width: 4) : null,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 9,
              backgroundColor: seleccionada ? negro : Colors.white,
            ),
            const Spacer(),
            Icon(icono, color: colorTexto, size: 23),
          ],
        ),
        const Spacer(),
        Text(
          titulo,
          style: TextStyle(
            fontSize: 11,
            color: seleccionada
                ? const Color(0xFF65703F)
                : Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          numero,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: colorTexto,
          ),
        ),
      ],
    ),
  );
}

Widget metodo(IconData icono, String texto) {
  return Container(
    height: 55,
    decoration: BoxDecoration(
      color: gris,
      borderRadius: BorderRadius.circular(13),
    ),
    child: ListTile(
      leading: Icon(icono, color: negro, size: 21),
      title: Text(
        texto,
        style: const TextStyle(fontSize: 14, color: negro),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
    ),
  );
}