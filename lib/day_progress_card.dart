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
        child: Column(
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
                    const SizedBox(height: 4,),
                    Text(
                      'keep your streak alive!',
                      style: context.TextStyle.bodyMedium?.withColor(
                        Theme.of(context).colorScheme.onSurfaceVariant
                        //color?.withValues(alpha: 0.6)),
                    ),
                  ],
                )


              ],
              
              )

          ],
          container(
            Padding: const EdgeInsets.symmetric())
          )
        ),
        
        ),
      ),


    );
  }
}
