void main() {
  
  String customerName = 'Ana Reyes';
  bool isStudent = true;
  bool isPickup = false;

  String item1 = 'Iced Coffee';
  double price1 = 65.25;
  int qty1 = 2;

  String item2 = 'Chicken Sandwich';
  double price2 = 89.75;
  int qty2 = 1;

  String item3 = 'Choco Cookie';
  double price3 = 25.50;
  int qty3 = 3;

  double cash = 400.00;

  
  double line1 = price1 * qty1;
  double line2 = price2 * qty2;
  double line3 = price3 * qty3;
  int totalItems = qty1 + qty2 + qty3;
  double subtotal = line1;
  subtotal += line2;
  subtotal += line3;

  const voucherMinimum = 250;
  const voucherAmount = 15.50;
  const freeDeliveryMinimum = 300;
  const deliveryFee = 29.50;

  bool voucherApplies = isStudent && subtotal >= voucherMinimum;
  double afterVoucher = voucherApplies ? subtotal - voucherAmount : subtotal;

  bool freeDelivery = isPickup || afterVoucher >= freeDeliveryMinimum;
  double grandTotal = freeDelivery ? afterVoucher : afterVoucher + deliveryFee;

  double change = cash - grandTotal;
  int points = grandTotal ~/ 50;

  String voucherText = voucherApplies ? '-PHP ${voucherAmount.toStringAsFixed(2)}' : 'Not eligible';
  String deliveryText = freeDelivery ? 'FREE' : 'PHP ${deliveryFee.toStringAsFixed(2)}';

  
  print('===== Campus Brew =====');
  print('Customer: $customerName');
  print('$item1 x$qty1 @ ${price1.toStringAsFixed(2)} = PHP ${line1.toStringAsFixed(2)}');
  print('$item2 x$qty2 @ ${price2.toStringAsFixed(2)} = PHP ${line2.toStringAsFixed(2)}');
  print('$item3 x$qty3 @ ${price3.toStringAsFixed(2)} = PHP ${line3.toStringAsFixed(2)}');
  print('Items: $totalItems');
  print('Subtotal: PHP ${subtotal.toStringAsFixed(2)}');
  print('Student voucher: $voucherText');
  print('Delivery: $deliveryText');
  print('TOTAL: PHP ${grandTotal.toStringAsFixed(2)}');
  print('Cash: PHP ${cash.toStringAsFixed(2)}');
  print('Change: PHP ${change.toStringAsFixed(2)}');
  print('Points earned: $points');
  print('=======================');
}
