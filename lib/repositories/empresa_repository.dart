import 'package:http/http.dart' as http;
import 'package:consumo_api_cnpj/models/empresa.dart';

class EmpresaRepository {
  Future<Empresa> getCnpj({required int cnpj}) async {
    final url = 'https://brasilapi.com.br/api/cnpj/v1/$cnpj';
    final response = await http.get(Uri.parse(url));

    return Empresa.fromJson(response.body);
  }
}
