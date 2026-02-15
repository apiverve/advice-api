# Advice Generator API - Dart/Flutter Client

Advice Generator is a simple tool for generating random pieces of advice. It returns a random piece of advice.

[![pub package](https://img.shields.io/pub/v/apiverve_advice.svg)](https://pub.dev/packages/apiverve_advice)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Advice Generator API](https://apiverve.com/marketplace/advice?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_advice: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_advice/apiverve_advice.dart';

void main() async {
  final client = AdviceClient('YOUR_API_KEY');

  try {
    final response = await client.execute();

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "id": "1t39qBIy",
    "advice": "Seek ways to improve your financial literacy and make sound financial decisions.",
    "lang": "en"
  }
}
```

## API Reference

- **API Home:** [Advice Generator API](https://apiverve.com/marketplace/advice?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/advice](https://docs.apiverve.com/ref/advice?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
