// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class EmpresaModel {
  final String cnpj;
  final String uf;
  final String cep;
  final String porte;
  final String logradouro;
  final String numero;
  final String complemento;
  final String bairro;
  final String razaoSocial;

  EmpresaModel({
    required this.cnpj,
    required this.uf,
    required this.cep,
    required this.porte,
    required this.bairro,
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.razaoSocial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnpj': cnpj,
      'uf': uf,
      'cep': cep,
      'porte': porte,
      'logradouro': logradouro,
      'numero': numero,
      'complemento': complemento,
      'bairro': bairro,
      'razaoSocial': razaoSocial,
    };
  }

  factory EmpresaModel.fromMap(Map<String, dynamic> map) {
    return EmpresaModel(
      cnpj: (map['cnpj'] ?? '') as String,
      uf: (map['uf'] ?? '') as String,
      cep: (map['cep'] ?? '') as String,
      porte: (map['porte'] ?? '') as String,
      logradouro: (map['logradouro'] ?? '') as String,
      numero: (map['numero'] ?? '') as String,
      complemento: (map['complemento'] ?? '') as String,
      bairro: (map['bairro'] ?? '') as String,
      razaoSocial: (map['razaoSocial'] ?? '') as String,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory EmpresaModel.fromJson(String source) =>
      EmpresaModel.fromMap(jsonDecode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return '''cnpj: $cnpj 
                  uf: $uf
                  cep: $cep
                  porte: $porte
                  logradouro: $logradouro
                  numero: $numero
                  complemento: $complemento
                  bairro: $bairro
                  razaoSocial: $razaoSocial
          ''';
  }
}
