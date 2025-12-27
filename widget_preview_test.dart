import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

// Simple text widget preview
@Preview(name: 'Simple Text')
Widget simpleText() {
  return const Text(
    'Hello, World!',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}

// Button preview
@Preview(name: 'Primary Button')
Widget primaryButton() {
  return ElevatedButton(
    onPressed: () {},
    child: const Text('Click Me'),
  );
}

// Multiple previews - Light mode
@Preview(
  name: 'Card - Light Mode',
  brightness: Brightness.light,
  group: 'Cards',
)
Widget cardLight() {
  return Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.favorite, color: Colors.red, size: 48),
          const SizedBox(height: 8),
          const Text(
            'Beautiful Card',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'This is a card widget',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    ),
  );
}

// Multiple previews - Dark mode
@Preview(
  name: 'Card - Dark Mode',
  brightness: Brightness.dark,
  group: 'Cards',
)
Widget cardDark() {
  return Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.favorite, color: Colors.red, size: 48),
          const SizedBox(height: 8),
          const Text(
            'Beautiful Card',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'This is a card widget',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ],
      ),
    ),
  );
}

// Preview with custom size
@Preview(
  name: 'Login Form',
  size: Size(350, 400),
)
Widget loginForm() {
  return Container(
    padding: const EdgeInsets.all(24),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Login',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            prefixIcon: const Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            prefixIcon: const Icon(Icons.lock),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Sign In', style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    ),
  );
}

// Custom text scale
@Preview(
  name: 'Accessible Text',
  textScaleFactor: 1.5,
)
Widget accessibleText() {
  return const Text(
    'This text is scaled 1.5x for accessibility testing',
    textAlign: TextAlign.center,
  );
}
