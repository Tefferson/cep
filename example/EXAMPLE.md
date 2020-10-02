
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