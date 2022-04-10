
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
      child: Container(
        
        height: 100,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(20)
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(decoration:
                  BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(50)
          ),width: 4,),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title',style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Theme.of(context).colorScheme.primary
                    ),textAlign: TextAlign.left,),
                    SizedBox(height: 6,),
                    Row(children:[Icon(Icons.access_time_rounded,color: Theme.of(context).colorScheme.onSurface,size: 20,),SizedBox(width: 5,),Text('20/10/2022',style: Theme.of(context).textTheme.subtitle2)], )

                  ],
                ),
              ],
            ),

            FlatButton(color:Colors.transparent,onPressed: (){}, child: Container(width:65,height:35,decoration:BoxDecoration(color:Theme.of(context).colorScheme.primary,borderRadius: BorderRadius.circular(10)),child: Icon(Icons.check,size: 28,color: Theme.of(context).colorScheme.onSecondary,)))
          ],

        ),
      ),
    );
  }
}
