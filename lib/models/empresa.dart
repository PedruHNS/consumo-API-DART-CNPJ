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
