part of 'auth_bloc.dart';
abstract class AuthState extends Equatable{

}
class Loading extends AuthState {
  @override
  List<Object?> get  props => [];
}

class Authenticated extends AuthState{
  final String sucess;

  Authenticated(this.sucess);

 @override
  List<Object?> get  props => [sucess];
}

class UnAuthenticated extends AuthState{
 @override
  List<Object?> get  props => [];
}

class AuthError extends AuthState {
  final String error;
  

  AuthError(this.error);
  @override
  List<Object?> get props => [error];
}