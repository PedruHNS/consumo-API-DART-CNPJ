import 'dart:convert';

import '../models/empresa.dart';

class EmpresaAdapter {
  static Map<String, dynamic> toMap(EmpresaModel empresaModel) {
    return <String, dynamic>{
      'cnpj': empresaModel.cnpj,
      'uf': empresaModel.uf,
      'cep': empresaModel.cep,
      'porte': empresaModel.porte,
      'logradouro': empresaModel.logradouro,
      'numero': empresaModel.numero,
      'complemento': empresaModel.complemento,
      'bairro': empresaModel.bairro,
      'razaoSocial': empresaModel.razaoSocial,
    };
  }

  static EmpresaModel fromMap(Map<String, dynamic> map) {
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

  String toJson(EmpresaModel empresaModel) => json.encode(toMap(empresaModel));

  static EmpresaModel fromJson(String source) => fromMap(json.decode(source));
}
