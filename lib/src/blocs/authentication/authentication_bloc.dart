import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'authentication.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>{

//    final UserRepository userRepository;
//
//    AuthenticationBloc({@required this.userRepository})
//        : assert(userRepository != null);
//
//    @override
//    AuthenticationState get initialState => AuthenticationUninitialized();
    @override
    AuthenticationState get initialState => AuthenticationUninitialized();

    @override
    Stream<AuthenticationState> mapEventToState(
            AuthenticationEvent event,
        ) async* {

        if(event is AppStarted){
                //replace with a memory call
            //final bool hasToken = await userRepository.hasToken();
            final bool hasToken = false;

            if(hasToken){
                yield AuthenticationAuthenticated();
            } else {
                yield AuthenticationUnauthenticated();
            }
        }

        if (event is LoggedIn) {
            yield AuthenticationLoading();
            // store in memory
//            await userRepository.persistToken(event.token);
            yield AuthenticationAuthenticated();
        }

        if (event is LoggedOut) {
            yield AuthenticationLoading();

//      Navigator.of(context).pushNamed('/Pages', arguments: 1);
//            print('in the authenticaation bloc');
//            Navigator.of(event.currentContext).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
//            await userRepository.deleteToken();
            yield AuthenticationUnauthenticated();
        }
    }
}