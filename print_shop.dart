void main() {
  
  String studentName = 'Ana Reyes';
  int blackPages = 24;
  int colorPages = 6;
  bool isMember = true;
  bool wantsBinding = true;

  
  const blackRate = 2.50;
  const colorRate = 8.25;
  const memberDiscount = 5.25;
  const discountMinimum = 100;
  const bindingFee = 35.75;
  const pagesPerMinute = 8;

  double blackCost = blackPages * blackRate;
  double colorCost = colorPages * colorRate;
  int totalPages = blackPages + colorPages;
  double subtotal = blackCost + colorCost;

  bool discountApplies = isMember && subtotal >= discountMinimum;
  double afterDiscount = discountApplies ? subtotal - memberDiscount : subtotal;

  double bindingCost = wantsBinding ? bindingFee : 0.0;
  double total = afterDiscount + bindingCost;

  int waitMinutes = totalPages ~/ pagesPerMinute;

  String discountText = discountApplies ? '-PHP ${memberDiscount.toStringAsFixed(2)}' : 'Not eligible';
  String bindingText = wantsBinding ? 'PHP ${bindingFee.toStringAsFixed(2)}' : 'None';


  print('===== Campus Print Shop =====');
  print('Student: $studentName');
  print('B&W: $blackPages pages x ${blackRate.toStringAsFixed(2)} = PHP ${blackCost.toStringAsFixed(2)}');
  print('Color: $colorPages pages x ${colorRate.toStringAsFixed(2)} = PHP ${colorCost.toStringAsFixed(2)}');
  print('Total pages: $totalPages');
  print('Subtotal: PHP ${subtotal.toStringAsFixed(2)}');
  print('Member discount: $discountText');
  print('Binding: $bindingText');
  print('TOTAL: PHP ${total.toStringAsFixed(2)}');
  print('Waiting time: $waitMinutes minute(s)');
  print('=============================');
}
