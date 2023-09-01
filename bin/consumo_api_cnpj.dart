
import 'package:consumo_api_cnpj/repositories/empresa_repository.dart';
import 'package:consumo_api_cnpj/service/http_packege.dart';

void main(List<String> args) async {
  final client = HttpPackege();
  final repository = EmpresaRepository(client: client);

  final empresa = await repository.getCnpj(cnpj: 19131243000197);
  print(empresa);
}
