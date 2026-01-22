import 'package:clearday/theme.dart';
import 'package:flutter/material.dart';
import 'package:clearday/lib/models/skinlog.dart';
import 'package:intl/intl.dart';

class DayProgressCard extends StatelessWidget {
  final Map<int, Skinlog?> last7days;
  const DayProgressCard({super.key, required this.last7days});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
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
                      'This week',
                      style: context.TextStyle.titleLarge,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'keep your streak alive!',
                      style: context.TextStyle.bodyMedium?.withColor(
                        Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.incomplete_circle,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '7 days',
                        style: context.TextStyle.labelLarge?.bold.withColor(
                          Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (waktu) {
                // index 0 = today, index 6 = 7 days ago
                // we need to render the left -> right as 6 days ago -> today
                final dayIndex = 6 - waktu;
                final log = last7days[dayIndex];
                final date = DateTime.now().subtract(Duration(days: dayIndex));
                final isToday = dayIndex == 0;

                return _DayProgress(
                  date: date,
                  isCompleted: log != null,
                  isToday: isToday,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayProgress extends StatelessWidget {
  final DateTime date;
  final bool isCompleted;
  final bool isToday;

  const _DayProgress({
    super.key,
    required this.date,
    required this.isCompleted,
    required this.isToday,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color bgColor;
    Color textColor;
    Border? border;

    if (isCompleted) {
      bgColor = colorScheme.primary;
      textColor = colorScheme.onPrimary;
    } else if (isToday) {
      bgColor = colorScheme.secondaryContainer;
      textColor = colorScheme.onSecondaryContainer;
      border = Border.all(color: colorScheme.secondary, width: 2);
    } else {
      bgColor = colorScheme.surfaceContainerHighest;
      textColor = colorScheme.onSurfaceVariant.withValues(alpha: 0.5);
    }

    return Column(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
            border: border,
            boxShadow: isToday && !isCompleted
                ? [
                    BoxShadow(
                      color: colorScheme.secondary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ]
                : null,
          ),
          child: Center(
            child: isCompleted
                ? const Icon(Icons.check, size: 20, color: Colors.white)
                : Text(
                    DateFormat('d').format(date),
                    style: context.TextStyle.labelMedium?.bold.withColor(textColor),
                  ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          DateFormat('E').format(date).substring(0, 1),
          style: context.TextStyle.labelSmall?.withColor(
            isToday ? colorScheme.secondary : colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
