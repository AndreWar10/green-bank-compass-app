class API {
  //Url base
  static const String baseUrl = 'https://bank-statement-bff.herokuapp.com';
  //headers API
  static const Map<String, String> defaultHeaders = {
    'token':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'
  };
  //saldo
  static String amount = '$baseUrl/myBalance';
  // Transações
  static String statement(int defautLimit, int offset) => '$baseUrl/myStatement/$defautLimit/$offset';
  static String statementDetail(String id) => '$baseUrl/myStatement/detail/$id';
}