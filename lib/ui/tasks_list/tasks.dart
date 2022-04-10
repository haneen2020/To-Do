
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:to_do/ui/tasks_list/task_widget.dart';
class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(color:Colors.red,height:500,margin:EdgeInsets.all(10),child: ListView.builder(itemBuilder:(_,index){return TaskWidget();},itemCount:10, shrinkWrap: true,scrollDirection: Axis.vertical,)) ;
    return Column(
      children:[
        Stack(

        children:[
          Container(color: Theme.of(context).primaryColor, height: 116,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children:[
              Padding(
                 padding: const EdgeInsets.only(top: 25.0,left: 17.0),
                 child: Text('To Do List',textAlign: TextAlign.left,style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),),
               ),
              SizedBox(height: 15,),
              CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365)),
              lastDate: DateTime.now().add(Duration(days: 365)),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Theme.of(context).colorScheme.onSurface,
              dayColor:Theme.of(context).colorScheme.onSurface,

              activeDayColor:Theme.of(context).colorScheme.primary,
              activeBackgroundDayColor: Theme.of(context).colorScheme.onSecondary,
              dotsColor: Theme.of(context).colorScheme.primary,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en_ISO',
            ),
              // ListView.builder(itemBuilder:(_,index){return TaskWidget();},itemCount: 1,scrollDirection: Axis.vertical,
              //   shrinkWrap: true,)

            ]
          ),
          //ListView.builder(itemBuilder:(_,index){return TaskWidget();},itemCount: 12,scrollDirection: Axis.vertical, shrinkWrap: true,)

        ]
      ),
       // Expanded(flex:4,child: ListView.builder(itemBuilder:(_,index){return TaskWidget();},itemCount: 12,))
        Expanded(child: Container(child:
        ListView.separated(itemBuilder:(_,index){return TaskWidget();},itemCount:10, shrinkWrap: true,scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) { return Container(
            height: 0,
          ) ;},)))
      ]
    );
  }
}
