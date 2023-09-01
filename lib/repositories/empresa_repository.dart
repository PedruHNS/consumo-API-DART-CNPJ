// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:consumo_api_cnpj/adapter/http_client.dart';
import 'package:consumo_api_cnpj/models/empresa.dart';

import '../adapter/empresa_adapter.dart';

class EmpresaRepository {
  final IHttpClient client;

  EmpresaRepository({required this.client});

  Future<EmpresaModel> getCnpj({required int cnpj}) async {
    final url = 'https://brasilapi.com.br/api/cnpj/v1/$cnpj';
    // final response = await http.get(Uri.parse(url));

    final response = await client.get(url: url);
    return EmpresaModel.fromJson(response.body);
  }
}
