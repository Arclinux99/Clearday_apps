import 'package:clearday/theme.dart';
import 'package:flutter/material.dart';
import 'package:clearday/models/skinlog.dart';

class DayProgressCard extends StatelessWidget {
  final Map<int, Skinlog?> last7days;
  const DayProgressCard({super.key, required this.last7days});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20)
        children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
            
                    children: [
                      Text(
                        'This week', style: context.TextStyle.titleLarge,
                      )
                      const SizedBox(height: 4),
                      Text(
                        'keep your streak alive!',
                        style: context.TextStyle.bodyMedium?.withColor(
                          Theme.of(context).colorScheme.onSurfaceVariant,
                          //color?.withValues(alpha: 0.6)),
                      ),
                    ],
                  ),
            
            
                ],
                
                ),
            
            ],
            ),
            Container(
              Padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              Decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  const Icon(Icons.incomplete_circle, size: 16,),
                  const SizedBox(width: 4,),
                  Text('
                  7 days', 
                  style: context.TextStyle.labelLarge?.bold.withColor(
                    Theme.of(context).colorScheme.onPrimaryContainer
                  )
                  ),
                ],) 
              )
            
          ],
    
          // add another box in here 
          const SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(7,(waktu){
             // index 0 = today, index 6 = 7 days ago
             // we need to renther  the left -> rigth  as 6 days ago -> today
             final dayIndex = 6 - waktu;
             final log = last7days[dayIndex];
             final date = DateTime.now().subtract(Duration(days: dayIndex));
             final isToday = dayIndex == 0;

             return _DayPrgress(import 'package:clearday/models/skinlog.dart';

              date: date,
              isCompleted: log != null,
              isToday: isToday,
             )
             
            }),
          )
          
        ),
        
        ),
      ),


    );
  }
}

class _DayPrgress extends StatelessWidget {
  final DateTime date;
  final bool isCompleted;
  final bool isToday;

  const _DayPrgress({super.key, required this.date, required this.isCompleted, required this.isToday});

  @override
  Widget build(BuildContext context) {
   final ColorScheme colorScheme = Theme.of(context).colorScheme;
   Color bgColor;
   Color textColor;
   Border? border;

   if (isCompleted) {
    bgColor = colorScheme.primary;
    textColor
   }
    return Column(
      children: [
        
      ],
    );
  }
}
