import 'dart:io';

import 'operation_class.dart';
 
void main()
{
    print("Enter first number?");
    // Take first number from user
    double? number1 = double.parse(stdin.readLineSync()!);

    print("Enter second number?");
    // Take second number from user
    double? number2 = double.parse(stdin.readLineSync()!);
 
    print("Enter operation (+, -, *, /, %)");
    // Take operator from user
    String? operation = stdin.readLineSync();


    //According to operator make routing OperationClass methods
    switch (operation) {
      case '+':
        var result = Operation().additionOperation(number1, number2);
        print('Result of the operation : $number1 $operation $number2 = $result');
        break;
      case '-':
        var result = Operation().abstractionOperation(number1, number2);
        print('Result of the operation : $number1 $operation $number2 = $result');
        break;
      case '*':
        var result = Operation().multiplicationOperation(number1, number2);
        print('Result of the operation : $number1 $operation $number2 = $result');
        break;
      case '/':
        var result = Operation().divisionOperation(number1, number2);
        print('Result of the operation : $number1 $operation $number2 = $result');
        break;
      case '%':
        var result = Operation().modOperation(number1, number2);
        print('Result of the operation : $number1 $operation $number2 = $result');
        break;
      default:
        print('please enter valid operator');
    }
}