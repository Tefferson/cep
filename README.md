# CEP

Package que integra com mais de uma API de consulta CEP.
Retorna os dados da primeira requisição que devolver resultados.

## Uso

```dart
import 'package:cep/cep.dart';

main() async {
  var result = await Cep.consultarCep('90020004');
  
  print('UF ${result.uf}');
  print('CEP ${result.cep}');
  print('IBGE ${result.ibge}');
  print('Bairro ${result.bairro}');
  print('Cidade ${result.cidade}');
  print('Estado ${result.estado}');
  print('Logradouro ${result.logradouro}');
  print('Complemento ${result.complemento}');
}
```

## APIs consultadas
ViaCEP (https://www.viacep.com.br)

Postmon (https://postmon.com.br/)

## Bugs e melhorias

Para bugs e melhorias [issue tracker][tracker].

[tracker]: https://github.com/tefferson/cep/issues