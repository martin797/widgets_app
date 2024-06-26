import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'button_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Eleveted')),
            const ElevatedButton(
                onPressed: null, child: Text('Eleveted Disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_time),
                label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_home_work),
                label: const Text('Outline Icon')),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.face_2_rounded),
                label: const Text("Text Icon")),

            const CustomButton(),


            IconButton(onPressed: (){}, icon: const Icon(Icons.wallet_giftcard)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.wallet_giftcard),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color.primary), 
                ),),
          ],
        ),
      ),
    );
  }
}

/* Botón Personalizado */
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: colors.primary,
        child:  InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:  Text('Hola Mundo', style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}


