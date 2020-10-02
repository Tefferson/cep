import 'dart:async';
import 'dart:convert';
import 'package:cep/src/model.dart';
import 'package:http/http.dart' as http;

class Postmon {
  static Future<Model> consultarCep(String cep) async {
    final url = 'https://api.postmon.com.br/v1/cep/$cep';
    var respostaHttp = await http.get(url);

    if (respostaHttp.statusCode != 200) return null;

    var decoded = json.decode(respostaHttp.body);

    var resposta = new Model();

    resposta.source = 'Postmon';
    resposta.cep = decoded['cep'];
    resposta.uf = decoded['estado'];
    resposta.bairro = decoded['bairro'];
    resposta.cidade = decoded['cidade'];
    resposta.logradouro = decoded['logradouro'];
    resposta.complemento = decoded['complemento'];
    resposta.estado = decoded['estado_info']['nome'];
    resposta.ibge = decoded['cidade_info']['codigo_ibge'];

    return resposta;
  }
}
