import '../bolum9/myStack.dart';

void main(List<String> argh) {
  MyStack myStack = MyStack();
  myStack.push(2);
  myStack.push("emre");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  //intMyStack.push("emre");
  //intMyStack.push(true);

  StringMyStack stringMyStack = StringMyStack();
  //stringMyStack.push(5);
  stringMyStack.push("emre");
  //stringMyStack.push(true);

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
  //genericStack.push(4);
  //genericStack.push(true);

}
