import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final String imageurl;
  final bool isread;
  final bool isdeliver;
  final bool isComing;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.imageurl,
    required this.isread,
    required this.isdeliver,
    required this.isComing,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isComing ? Alignment.topLeft : Alignment.topRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment:
                isComing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              // Image at the top of the bubble
              if (imageurl.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imageurl,
                      width: double.infinity,
                      // height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              // Message text
              Text(message, style: Theme.of(context).textTheme.bodyLarge),

              const SizedBox(height: 4),

              // Time and status row
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onPrimaryContainer.withOpacity(0.6),
                    ),
                  ),
                  if (!isComing) ...[
                    const SizedBox(width: 4),
                    Icon(
                      Icons.done_all,
                      size: 16,
                      color:
                          isread
                              ? Colors
                                  .blue // Color when read
                              : Theme.of(
                                context,
                              ).colorScheme.onPrimaryContainer.withOpacity(0.6),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
