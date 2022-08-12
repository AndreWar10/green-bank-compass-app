import 'package:bloc/bloc.dart';
import 'package:desafio/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository})
      : super(
          UnAuthenticated(),
        ) {

    on<SignInRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        try {
          await authRepository.signIn(
              email: event.email, password: event.password);
          emit(
            Authenticated('Sucesso!'),
          );
        } catch (e) {
          emit(
            AuthError(
              e.toString(),
            ),
          );
          emit(
            UnAuthenticated(),
          );
        }
      },
    );

    on<SignUpRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        try {
          await authRepository.signUp(
              email: event.email, password: event.password);
          emit(Authenticated('Sucesso!'));
        } catch (e) {
          emit(
            AuthError(
              e.toString(),
            ),
          );
          emit(
            UnAuthenticated(),
          );
        }
      },
    );

    on<SignOutRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        await authRepository.signOut();
        emit(
          UnAuthenticated(),
        );
      },
    );
  }
}
