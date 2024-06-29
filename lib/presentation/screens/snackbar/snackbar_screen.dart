import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        /*Ayuda a que la ventana modal no se cierre al dar click fuera de ella*/
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estás seguro?'),
              content: const Text(
                  'Occaecat reprehenderit sint nulla enim anim qui incididunt. Aliqua id sint exercitation labore sint eiusmod esse magna culpa eiusmod ea dolor laborum. Deserunt et aliquip fugiat irure elit magna Lorem. Enim et excepteur non adipisicing nostrud cillum. Mollit excepteur laboris do pariatur amet est exercitation deserunt est pariatur aliqua. Lorem dolore sunt proident laboris Lorem exercitation fugiat. Sunt ipsum fugiat dolore nulla consequat quis ea anim ullamco laboris amet qui reprehenderit.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cacelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'In laborum commodo aliquip sunt ullamco Lorem sit cillum eiusmod ut sunt aliqua adipisicing dolore. Lorem est cillum Lorem non quis laborum aliqua ad. Laboris non fugiat exercitation consectetur non non ullamco proident elit cupidatat officia magna eiusmod velit. Culpa deserunt duis enim quis. Laboris laborum proident enim amet qui. Excepteur excepteur occaecat eu sint esse culpa nulla fugiat elit.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar diálogo de pantallas')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
