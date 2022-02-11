import 'dart:io';

import 'operation_class.dart';
 
void main()
{
  //If user not enter any value it takes it as 0
  takeInputProcess() {
    var input =stdin.readLineSync();
    final double value = 0; 
     if(input?.isEmpty ?? true){
      return value;
    }
    return double.parse(input ?? '0');
  }
    print("Enter first number?");
    // Take first number from user
    
    double number1 = takeInputProcess();

    print("Enter second number?");
    // Take second number from user
    double number2 = takeInputProcess();
 
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