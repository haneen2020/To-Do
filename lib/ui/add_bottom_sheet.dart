

import 'package:flutter/material.dart';

class AddSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
          Form(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'title'),),
              TextFormField(decoration: InputDecoration(labelText: 'description'),minLines: 4,maxLines: 4,),

            ],

          )),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Task Date ',style: Theme.of(context).textTheme.subtitle1,),
              Text('12/1/2022',style: Theme.of(context).textTheme.subtitle1,)
            ],
          ),
          SizedBox(height: 40,),
          Expanded(child: ElevatedButton(onPressed: (){}, child:Text('Add Task')))
        ],
      ),
    );
  }
}
