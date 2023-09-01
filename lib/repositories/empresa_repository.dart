// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:consumo_api_cnpj/adapter/empresa_adapter.dart';
import 'package:consumo_api_cnpj/service/http_client_interface.dart';
import 'package:consumo_api_cnpj/models/empresa.dart';

class EmpresaRepository {
  final IHttpClient client;

  EmpresaRepository({required this.client});

  Future<EmpresaModel> getCnpj({required int cnpj}) async {
    final url = 'https://brasilapi.com.br/api/cnpj/v1/$cnpj';
    // final response = await http.get(Uri.parse(url));

    final response = await client.get(url: url);

    return EmpresaAdapter.fromJson(response.body);
  }
}
