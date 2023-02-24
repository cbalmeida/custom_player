import 'package:custom_player/util/int_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('IntUtil.parseInt: deve retornar o numero passado no parametro quando o objeto passado for um "numero inteiro"', () {
    expect(IntUtil.parseInt(10), 10);
  });

  test('IntUtil.parseInt: deve retornar o numero passado no parametro quando o objeto passado for um "objecto que pode ser convertido em um numero inteiro"', () {
    expect(IntUtil.parseInt("20"), 20);
    expect(IntUtil.parseInt("20.0"), 20);
    expect(IntUtil.parseInt(20.0), 20);
  });

  test('IntUtil.parseInt: deve retornar zero quando o parametro for um objeto que não pode ser convertido para um numero inteiro"', () {
    expect(IntUtil.parseInt(null), 0);
    expect(IntUtil.parseInt("A"), 0);
    expect(IntUtil.parseInt(DateTime.now()), 0);
    expect(IntUtil.parseInt([1, 2, 3]), 0);
    expect(IntUtil.parseInt({"valor": 1}), 0);
    expect(IntUtil.parseInt("20.1"), 0);
    expect(IntUtil.parseInt(20.1), 0);
  });
}
