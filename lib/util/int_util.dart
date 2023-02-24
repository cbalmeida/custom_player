class IntUtil {
  static int parseInt(dynamic value, {int defaultValue = 0}) {
    if (value == null) return defaultValue;
    if (value is int) return value;
    double? doubleValue = double.tryParse(value.toString());
    if (doubleValue == null) return defaultValue;
    if (doubleValue.truncateToDouble() == doubleValue) return doubleValue.truncate();
    return defaultValue;
  }
}
