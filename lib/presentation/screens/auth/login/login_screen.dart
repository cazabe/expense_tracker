import 'package:expense_tracker/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  static const name = 'Login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Expense tracker',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              const Image(
                image: AssetImage('assets/images/expense-wallet.png'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'usuario',
                    errorText: loginForm.isFormPosted
                        ? loginForm.email.errorMessage
                        : null),
                onChanged: (value) =>
                    ref.read(loginFormProvider.notifier).onEmailChange(value),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    errorText: loginForm.isFormPosted
                        ? loginForm.password.errorMessage
                        : null),
                onChanged: (value) => ref
                    .read(loginFormProvider.notifier)
                    .onPasswordChange(value),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: FilledButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                  onPressed: () {
                    ref.read(loginFormProvider.notifier).onFormSubmit();
                  },
                  child: const Text('Guardar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
