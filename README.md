# CEP

Package que integra com mais de uma API de consulta CEP.
Retorna os dados da primeira requisição que devolver resultados.

## Uso

```dart
import 'package:cep/cep.dart';

main() async {
  var resultado = await Cep.consultarCep('90020004');
  
  print('UF ${resultado.uf}');
  print('CEP ${resultado.cep}');
  print('IBGE ${resultado.ibge}');
  print('Bairro ${resultado.bairro}');
  print('Cidade ${resultado.cidade}');
  print('Estado ${resultado.estado}');
  print('Logradouro ${resultado.logradouro}');
  print('Complemento ${resultado.complemento}');
}
```

## APIs consultadas
ViaCEP (https://www.viacep.com.br)

Postmon (https://postmon.com.br/)

## Bugs e melhorias

Para bugs e melhorias [issue tracker][tracker].

[tracker]: https://github.com/tefferson/cep/issues