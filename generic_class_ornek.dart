import 'MyStack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("emre");
  myStack.push(true);
  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(2);

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("asd");

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("stre");
//  genericStack.push(1);         HATALAARRRR
//  int a = genericStack.pop();



}
