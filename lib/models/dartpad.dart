Future<String> goidoan() async {
  var doan = await lamdoan();
  return 'Đồ ăn của bạn là $doan';
}

Future<void> main() async {
  print("Bat dau goi do an...");
  print(await goidoan());
}

Future<String> lamdoan() {
  return Future.delayed(const Duration(seconds: 5), () {
    return 'Com ga';
  });
}
