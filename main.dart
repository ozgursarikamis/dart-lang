main() {
  print(createOrderMessage());
}

String createOrderMessage() {
  fetchUserOrder();
  return 'Your order is...';
}

Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
}
