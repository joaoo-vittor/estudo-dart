class MyException {
  String message;

  MyException(this.message);

  @override
  String toString() {
    return 'MyException: $message';
  }
}

void main(List<String> args) {

  try {
    throw MyException('Error');
  } catch (e) {
    print(e);
  }

  try {
    throw MyException('Error');
  } on MyException {
    print('Caso -> MyException');
  } catch (e) {
    print(e);
  }

  try {
    throw MyException('Error');
  } catch (e, s) {
    // print(e);
    print('Stack Trace: $s');
  }

  try {
    throw MyException('Error');
  } catch (e) {
    print(e);
    // print('Stack Trace: $s');
  } finally {
    print('Sempre estou aqui');
  }

}
