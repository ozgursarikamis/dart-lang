Future<void> main() async {
  countSeconds(3);
  await printOrderMessage();
}

Future<void> printOrderMessage() async {
  print('awiting user order');
  var order = await fetchUserOrder();
  print('Your order is $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 3), () => 'Large Latte');
}

void countSeconds(int s) {
  for (var i = 0; i < s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
