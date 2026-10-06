# Week 7 Lab – Dart Fundamentals

Name: Francisco, Christian Paul J.
Section: 3.7 BSIT

## Files
- campus_brew_receipt.dart – Campus Brew order receipt (Parts 2–8)
- print_shop.dart – Campus Print Shop bill (Part 10)

## How to run
Copy a file's code into https://dartpad.dev and click Run.

## Part 7 answers
1. Ana got the voucher because both conditions were true (`&&` needs both): she is a student (`isStudent` is `true`), and her subtotal of PHP 296.75 is at least PHP 250.
2. Delivery was not free because both conditions of `||` were false: her order was not a pickup (`isPickup` is `false`), and her total after the voucher (PHP 281.25) is below PHP 300. So she paid the PHP 29.50 fee.
3. We use `~/` instead of `/` because reward points must be whole numbers only. `/` gives a decimal (310.75 / 50 = 6.215), which can't be stored in an `int`, while `~/` keeps only the whole part (6).

## Part 8 results table

| Order | Student voucher | Delivery | TOTAL | Change | Points |
|---|---|---|---|---|---|
| A: Ana | -PHP 15.50 | PHP 29.50 | PHP 310.75 | PHP 89.25 | 6 |
| A with isStudent = false (Part 7 experiment) | Not eligible | PHP 29.50 | PHP 326.25 | PHP 73.75 | 6 |
| B: Ben | Not eligible | FREE | PHP 295.75 | PHP 4.25 | 5 |
| C: Carla | -PHP 15.50 | FREE | PHP 321.00 | PHP 179.00 | 6 |

Question 5: Carla got free delivery even though she is not picking up because her total after the voucher (PHP 321.00) is at least PHP 300, and the `||` rule only needs one condition to be true.

## Part 9 debugging table

| Bug | What DartPad said (or printed) | What was wrong | Your fixed line |
|---|---|---|---|
| 1 | Expected ';' after this. | Missing semicolon at the end of the line | `String drink = 'Iced Coffee';` |
| 2 | A value of type 'double' can't be assigned to a variable of type 'int'. | `int` can't hold a decimal value like 65.25 | `double price = 65.25;` |
| 3 | The final variable 'shop' can only be set once. | A `final` variable can't be reassigned | `String shop = 'Campus Brew';` |
| 4 | Printed: `Total: 25.5 * 3` | No `${ }`, so the multiplication was treated as plain text and never calculated | `print('Total: ${(price * qty).toStringAsFixed(2)}');` |
| 5 | A value of type 'double' can't be assigned to a variable of type 'int'. | `/` returns a decimal, but `boxes` is an `int`; `~/` is needed for whole boxes | `int boxes = cups ~/ 6;` |

Bonus (Bug 5): `print('Cups left over: ${cups % 6}');` prints `Cups left over: 5`.

## Part 10 test results

| Test | Student | blackPages | colorPages | isMember | wantsBinding | Member discount | TOTAL | Minutes |
|---|---|---|---|---|---|---|---|---|
| 1 | Ana Reyes | 24 | 6 | true | true | -PHP 5.25 | PHP 140.00 | 3 |
| 2 | Ben Cruz | 14 | 2 | false | false | Not eligible | PHP 51.50 | 2 |
| 3 | Carla Santos | 30 | 1 | true | false | Not eligible | PHP 83.25 | 3 |

Test 3 answer: Carla is a member, but her subtotal (PHP 83.25) is below PHP 100. The discount uses `&&`, so both conditions must be true, and since the subtotal condition is false, she gets no discount.
