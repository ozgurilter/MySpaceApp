import 'dart:convert';
import 'package:http/http.dart' as http;

class PlanetTemperature {
  final String apiKey;
  final String baseUrl = 'https://api.nasa.gov/planetary/apod';

  PlanetTemperature(this.apiKey);

  Future<Map<String, dynamic>> getPlanetTemperatures() async {
    final response = await http.get(
      Uri.parse('$baseUrl?api_key=$apiKey'),
    );

    // İstek başarılıysa verileri dön
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      // İstek başarısızsa boş bir map dön
      return {};
    }
  }
}

void main() async {
  // API anahtarı
  final apiKey = 'your_api_key_here';

  // PlanetTemperature sınıfı örneği oluştur
  final planetTemperature = PlanetTemperature(apiKey);

  // Gezegen sıcaklıklarını al
  final planetTemperatures = await planetTemperature.getPlanetTemperatures();

  // Alınan verileri yazdır
  print('Gezegen Sıcaklıkları: $planetTemperatures');
}
