import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Progress Indicator'),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.pinkAccent,),
          SizedBox(height: 20,),
          Text('Circular Indicator controlled'),
          _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value + 2 ) / 100;  //valores entre 0.0 - 1.0
      }), 
      builder: (context, snapshot){
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator( 
                value:0.5, 
                strokeWidth: 2, 
                backgroundColor: Colors.purpleAccent,
              ),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progressValue,))
            ],
            )
          );
      }
    );
  }
}


