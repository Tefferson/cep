import 'dart:async';
import 'package:cep/src/model.dart';
import 'package:cep/src/postmon.dart';
import 'package:cep/src/via_cep.dart';

class Cep {
  static Future<Model> consultarCep(String cep) async {
    var viaCep = ViaCep.consultarCep(cep);
    var postmon = Postmon.consultarCep(cep);

    var resposta = await Future.any([viaCep, postmon]);

    if (resposta == null) {
      var respostaPostmon = await postmon;
      if (respostaPostmon != null) return respostaPostmon;
      return viaCep;
    }

    return resposta;
  }
}
