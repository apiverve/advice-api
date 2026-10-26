# Advice Generator API - Dart/Flutter Client

Advice Generator supplies random pieces of advice on demand. Each response includes a unique advice identifier, the advice quote, and the language code.

[![pub package](https://img.shields.io/pub/v/apiverve_advice.svg)](https://pub.dev/packages/apiverve_advice)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Advice Generator API](https://apiverve.com/marketplace/advice?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_advice: ^1.2.3
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
    "id": "3xx4VZSZ",
    "advice": "Be creative and innovative.",
    "lang": "en"
  }
}
```

## API Reference

- **API Home:** [Advice Generator API](https://apiverve.com/marketplace/advice?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/advice](https://docs.apiverve.com/ref/advice?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
