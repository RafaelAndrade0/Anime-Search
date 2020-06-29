import 'package:anime_search/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:anime_search/presentation/loader/loader.dart';
import 'package:anime_search/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (some) => some.fold((failure) {
            Flushbar(
              margin: const EdgeInsets.all(8),
              borderRadius: 8,
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Invalid email and password combination',
              ),
              icon: Icon(
                Icons.info_outline,
                size: 28.0,
                color: Colors.red[300],
              ),
              duration: const Duration(seconds: 4),
            ).show(context);
          }, (r) {
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.homepage);
          }),
        );
      },
      builder: (context, state) {
        return state.isSubmitting
            ? Loader()
            : Form(
                autovalidate: state.showErrorMessages,
                child: Center(
                    child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 320,
                        child: Image.asset(
                          'assets/images/logo3.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          autocorrect: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (value) => context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.emailChanged(value)),
                          validator: (_) => context
                              .bloc<SignInFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () => null,
                                      ),
                                  (_) => null),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                          ),
                          onChanged: (value) => context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.passwordChanged(value)),
                          validator: (_) => context
                              .bloc<SignInFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                        shortPassword: (_) => 'Short Password',
                                        orElse: () => null,
                                      ),
                                  (_) => null),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                context.bloc<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .signInWithEmailAndPasswordPressed());
                              },
                              child: const Text(
                                'LOG IN',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: OutlineButton(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                context.bloc<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .registerWithEmailAndPasswordPressed());
                              },
                              child: const Text(
                                'CREATE ACCOUNT',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      // GoogleSignInButton(
                      //   borderRadius: 20,
                      //   text: 'Log in with google',
                      //   onPressed: () {},
                      //   darkMode: true,
                      // ),
                      const Text(
                        'By Using Anime Search you are agreeing to our terms & Privacy Policy. And you confirm that you are at least 18 years or age.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
              );
      },
    );
  }
}
