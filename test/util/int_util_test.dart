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

  test('IntUtil.parseInt: deve retornar o valor default quando o parametro for um objeto que não pode ser convertido para um numero inteiro"', () {
    expect(IntUtil.parseInt(null, defaultValue: 1), 1);
    expect(IntUtil.parseInt("A", defaultValue: 2), 2);
    expect(IntUtil.parseInt(DateTime.now(), defaultValue: 3), 3);
    expect(IntUtil.parseInt([1, 2, 3], defaultValue: 4), 4);
    expect(IntUtil.parseInt({"valor": 1}, defaultValue: 5), 5);
    expect(IntUtil.parseInt("20.1", defaultValue: 6), 6);
    expect(IntUtil.parseInt(20.1, defaultValue: 7), 7);
  });
}
