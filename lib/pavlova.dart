import 'package:flutter/material.dart';

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abueva',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cake photo only (top part of the card image)
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.592,
                child: Image.asset(
                  'assets/images/cake_card.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFFF8F3FA),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Chocolate Fudge Cake',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'A rich and decadent chocolate cake layered with moist '
                    'chocolate sponge, smooth chocolate ganache, and topped '
                    'with chocolate shavings and fresh strawberries. Perfect '
                    'for any celebration or sweet craving!',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star, color: Color(0xFFFFD600)),
                      Icon(Icons.star, color: Color(0xFFFFD600)),
                      Icon(Icons.star, color: Color(0xFFFFD600)),
                      Icon(Icons.star, color: Color(0xFFFFD600)),
                      Icon(Icons.star_border, color: Color(0xFFFFD600)),
                      SizedBox(width: 16),
                      Text(
                        '87 Reviews',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(
                        icon: Icons.timer_outlined,
                        label: 'PREP',
                        value: '30 min',
                      ),
                      InfoItem(
                        icon: Icons.restaurant,
                        label: 'COOK',
                        value: '35 min',
                      ),
                      InfoItem(
                        icon: Icons.people_outline,
                        label: 'FEEDS',
                        value: '8-10 hrs',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 44, color: const Color(0xFFFFD600)),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}