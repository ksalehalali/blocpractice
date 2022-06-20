import 'package:blocpractice/app/counter_cubit.dart';
import 'package:blocpractice/app/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    print('a===a');
    return BlocProvider(create: (BuildContext context)=> CounterCubit(),
    child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state){},
      builder: (BuildContext context , state){
        CounterCubit cubit = CounterCubit.get(context);

        return Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                          cubit.increaseNumber();

                        }, child: Icon(Icons.plus_one_sharp)),
                        SizedBox(width: 16,),
                        Text('${cubit.number}',style: TextStyle(fontSize: 44),),
                        SizedBox(width: 16,),
                        ElevatedButton(onPressed: (){
                          cubit.decreaseNumber();
                        }, child: Icon(Icons.exposure_minus_1)),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
      },
        )
    );
  }
}
