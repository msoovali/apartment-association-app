import 'package:apartment/translation/localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@immutable
class SelectModal<T> {
  final String title;
  final List<T> items;
  final String Function(T, BuildContext context) itemDisplay;

  const SelectModal({
    required this.title,
    required this.items,
    required this.itemDisplay,
  });
}

extension Present<T> on SelectModal<T> {
  Future<T?> present(BuildContext context) {
    return showModalBottomSheet<T?>(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        context: context,
        useSafeArea: true,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  AppLocalizations.of(context).translate(title),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return ListTile(
                      title: Text(itemDisplay(item, context),
                          textAlign: TextAlign.center),
                      onTap: () {
                        context.pop(item); // Close the bottom sheet
                      },
                    );
                  },
                ),
              )
            ],
          );
        });
  }
}
