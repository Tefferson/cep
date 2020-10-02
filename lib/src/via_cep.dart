import 'dart:async';
import 'package:cep/src/model.dart';
import 'package:cep/src/utils.dart';
import 'package:via_cep/via_cep.dart';

class ViaCep {
  static Future<Model> consultarCep(String cep) async {
    var viaCep = via_cep();

    await viaCep.searchCEP(cep, 'json', '');

    if (viaCep.getResponse() != 200) return null;

    var resposta = Model();

    resposta.source = 'ViaCEP';
    resposta.uf = viaCep.getUF();
    resposta.cep = viaCep.getCEP();
    resposta.ibge = viaCep.getIBGE();
    resposta.bairro = viaCep.getBairro();
    resposta.cidade = viaCep.getLocalidade();
    resposta.logradouro = viaCep.getLogradouro();
    resposta.complemento = viaCep.getComplemento();
    resposta.estado = Utils.converterUfParaEstado((resposta.uf));

    return resposta;
  }
}
