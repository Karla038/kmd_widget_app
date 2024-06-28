import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar( content: Text('Hola Mundo'),
       action: SnackBarAction(
        label: 'Aceptar', 
        onPressed: (){}),
        duration: const Duration(seconds: 3),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Commodo laboris ex tempor sit velit ad commodo quis commodo cillum. Veniam tempor excepteur reprehenderit officia amet exercitation cillum. Proident fugiat occaecat exercitation laboris occaecat qui elit esse aliquip adipisicing duis officia eiusmod aute.'),
                  ]
                );
              },
            ),
            FilledButton.tonal(
              child: const Text('Mostrar Dialogo'),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}