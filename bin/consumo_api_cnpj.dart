import 'package:consumo_api_cnpj/repositories/empresa_repository.dart';

void main(List<String> args) async {
  final repository = EmpresaRepository();

  final empresa = await repository.getCnpj(cnpj: 19131243000197);
  print(empresa);
  
}
