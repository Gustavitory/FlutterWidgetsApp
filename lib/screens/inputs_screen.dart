import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': "Gustavo",
      'last_name': "Riera",
      'email': 'ggrieraya@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            onChanged: () {},
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nombre',
                  // helperText: 'Solo texto',
                  // icon: Icon(Icons.abc),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Apellido',
                  // helperText: 'Solo texto',
                  // icon: Icon(Icons.abc),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Email',
                  type: TextInputType.emailAddress,
                  // helperText: 'Solo texto',
                  // icon: Icon(Icons.abc),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Password',
                  type: TextInputType.visiblePassword,
                  // helperText: 'Solo texto',
                  // icon: Icon(Icons.abc),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }
                    },
                    child: const Center(
                      child: Text("Guardar"),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
