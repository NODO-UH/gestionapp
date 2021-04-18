import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gestionuh/src/presentation/widgets/buttons/default_button.dart';
import 'package:gestionuh/src/utils/constants/messages.dart';

class _MessageItem<T> {
  final String message;
  Completer<Future<T>> completer;

  _MessageItem(this.message) : completer = Completer<Future<T>>();
}

class FlashHelper {
  static Completer<BuildContext> _buildCompleter = Completer<BuildContext>();
  static final Queue<_MessageItem> _messageQueue = Queue<_MessageItem>();
  static Completer? _previousCompleter;

  static void init(BuildContext context) {
    if (_buildCompleter.isCompleted == false) {
      _buildCompleter.complete(context);
    }
  }

  static void dispose() {
    _messageQueue.clear();

    if (_buildCompleter.isCompleted == false) {
      _buildCompleter.completeError('NotInitialize');
    }
    _buildCompleter = Completer<BuildContext>();
  }

  static Future<T?> toast<T>(String message) async {
    final context = await _buildCompleter.future;

    // Wait previous toast dismissed.
    if (_previousCompleter?.isCompleted == false) {
      final item = _MessageItem<T>(message);
      _messageQueue.add(item);
      return await item.completer.future;
    }

    _previousCompleter = Completer();

    Future<T?> showToast(String message) {
      return showFlash<T>(
        context: context,
        builder: (context, controller) {
          return SafeArea(
            child: Flash.dialog(
              controller: controller,
              alignment: const Alignment(0, 0.5),
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              enableDrag: false,
              backgroundColor: Colors.black87,
              child: DefaultTextStyle(
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(message),
                ),
              ),
            ),
          );
        },
        duration: const Duration(seconds: 3),
      ).whenComplete(() {
        if (_messageQueue.isNotEmpty) {
          final item = _messageQueue.removeFirst();
          item.completer.complete(showToast(item.message));
        } else {
          _previousCompleter?.complete();
        }
      });
    }

    return showToast(message);
  }

  static Color _backgroundColor(BuildContext context) {
    final theme = Theme.of(context);
    return theme.dialogTheme.backgroundColor ?? theme.dialogBackgroundColor;
  }

  static TextStyle _titleStyle(BuildContext context, [Color? color]) {
    final theme = Theme.of(context);
    return (theme.dialogTheme.titleTextStyle ?? theme.textTheme.headline6)
            ?.copyWith(color: color) ??
        const TextStyle(fontSize: 21.0, fontWeight: FontWeight.w700);
  }

  static TextStyle _contentStyle(BuildContext context, [Color? color]) {
    final theme = Theme.of(context);
    return (theme.dialogTheme.contentTextStyle ?? theme.textTheme.bodyText2)
            ?.copyWith(color: color) ??
        const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400);
  }

  static Future<T?> infoBar<T>(
    BuildContext context, {
    String? title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    return showFlash<T>(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return SafeArea(
          child: Flash(
            controller: controller,
            horizontalDismissDirection: HorizontalDismissDirection.horizontal,
            backgroundColor: Colors.black87,
            child: FlashBar(
              title: title == null
                  ? null
                  : Text(title, style: _titleStyle(context, Colors.white)),
              message:
                  Text(message, style: _contentStyle(context, Colors.white)),
              icon: Icon(Icons.info_outline, color: Colors.green[300]),
              leftBarIndicatorColor: Colors.green[300],
            ),
          ),
        );
      },
    );
  }

  static Future<T?> successBar<T>(
    BuildContext context, {
    String? title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    return showFlash<T>(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return SafeArea(
          child: Flash(
            controller: controller,
            horizontalDismissDirection: HorizontalDismissDirection.horizontal,
            backgroundColor: Colors.black87,
            child: FlashBar(
              title: title == null
                  ? null
                  : Text(title, style: _titleStyle(context, Colors.white)),
              message:
                  Text(message, style: _contentStyle(context, Colors.white)),
              icon: Icon(Icons.check_circle, color: Colors.blue[300]),
              leftBarIndicatorColor: Colors.blue[300],
            ),
          ),
        );
      },
    );
  }

  static Future<T?> errorBar<T>(
    BuildContext context, {
    String? title,
    required String message,
    ChildBuilder<T>? primaryAction,
    Duration duration = const Duration(seconds: 3),
  }) {
    return showFlash<T>(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return StatefulBuilder(builder: (context, setState) {
          return SafeArea(
            child: Flash(
              controller: controller,
              horizontalDismissDirection: HorizontalDismissDirection.horizontal,
              backgroundColor: Colors.black87,
              child: FlashBar(
                title: title == null
                    ? null
                    : Text(title, style: _titleStyle(context, Colors.white)),
                message:
                    Text(message, style: _contentStyle(context, Colors.white)),
                primaryAction:
                    primaryAction?.call(context, controller, setState),
                icon: Icon(Icons.warning, color: Colors.red[300]),
                leftBarIndicatorColor: Colors.red[300],
              ),
            ),
          );
        });
      },
    );
  }

  static Future<T?> actionBar<T>(
    BuildContext context, {
    String? title,
    required String message,
    required ChildBuilder<T> primaryAction,
    Duration duration = const Duration(seconds: 3),
  }) {
    return showFlash<T>(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return StatefulBuilder(builder: (context, setState) {
          return SafeArea(
            child: Flash(
              controller: controller,
              horizontalDismissDirection: HorizontalDismissDirection.horizontal,
              backgroundColor: Colors.black87,
              child: FlashBar(
                title: title == null
                    ? null
                    : Text(title, style: _titleStyle(context, Colors.white)),
                message:
                    Text(message, style: _contentStyle(context, Colors.white)),
                primaryAction:
                    primaryAction.call(context, controller, setState),
              ),
            ),
          );
        });
      },
    );
  }

  static Future<T?> simpleDialog<T>(
    BuildContext context, {
    String? title,
    required String message,
    Color? messageColor,
    ChildBuilder<T>? negativeAction,
    ChildBuilder<T>? positiveAction,
  }) {
    return showFlash<T>(
      context: context,
      persistent: false,
      onWillPop: () async => false,
      builder: (_context, controller) {
        return StatefulBuilder(
          builder: (context, setState) {
            return SafeArea(
              child: Flash<T>.dialog(
                boxShadows: kElevationToShadow[6],
                barrierBlur: 1,
                controller: controller,
                backgroundColor: _backgroundColor(_context),
                margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: FlashBar(
                  title: title == null
                      ? null
                      : Text(title, style: _titleStyle(_context)),
                  message: Text(message,
                      style: _contentStyle(_context, messageColor)),
                  actions: <Widget>[
                    if (negativeAction != null)
                      negativeAction(_context, controller, setState),
                    if (positiveAction != null)
                      positiveAction(_context, controller, setState),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Future<T?> customDialog<T>(
    BuildContext context, {
    ChildBuilder<T>? titleBuilder,
    required ChildBuilder messageBuilder,
    ChildBuilder<T>? negativeAction,
    ChildBuilder<T>? positiveAction,
  }) {
    return showFlash<T>(
      context: context,
      persistent: false,
      builder: (context, controller) {
        return StatefulBuilder(
          builder: (context, setState) {
            return SafeArea(
              child: Flash.dialog(
                controller: controller,
                backgroundColor: _backgroundColor(context),
                margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: FlashBar(
                  title: titleBuilder == null
                      ? null
                      : DefaultTextStyle(
                          style: _titleStyle(context),
                          child:
                              titleBuilder.call(context, controller, setState),
                        ),
                  message: DefaultTextStyle(
                    style: _contentStyle(context),
                    child: messageBuilder.call(context, controller, setState),
                  ),
                  actions: <Widget>[
                    if (negativeAction != null)
                      negativeAction(context, controller, setState),
                    if (positiveAction != null)
                      positiveAction(context, controller, setState),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Future<T?> blockDialog<T>(
    BuildContext context, {
    required Completer<T> dismissCompleter,
  }) {
    final controller = FlashController<T>(
      context,
      (context, FlashController<T> controller) {
        return SafeArea(
          child: Flash.dialog(
            controller: controller,
            barrierDismissible: false,
            backgroundColor: Colors.black87,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(strokeWidth: 2.0),
            ),
          ),
        );
      },
      persistent: false,
      onWillPop: () => Future.value(false),
    );
    dismissCompleter.future.then((value) => controller.dismiss(value));
    return controller.show();
  }

  static Future<String?> inputDialog(
    BuildContext context, {
    String? title,
    String? message,
    String? defaultValue,
    bool persistent = true,
    WillPopCallback? onWillPop,
  }) {
    final editingController = TextEditingController(text: defaultValue);
    return showFlash<String>(
      context: context,
      persistent: persistent,
      onWillPop: onWillPop,
      builder: (context, controller) {
        final theme = Theme.of(context);
        return SafeArea(
          child: Flash<String>.bar(
            controller: controller,
            barrierColor: Colors.black54,
            borderWidth: 3,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: FlashBar(
              title: title == null
                  ? null
                  : Text(title, style: const TextStyle(fontSize: 24.0)),
              message: Column(
                children: [
                  if (message != null) Text(message),
                  Form(
                    child: TextFormField(
                      controller: editingController,
                      autofocus: true,
                    ),
                  ),
                ],
              ),
              leftBarIndicatorColor: theme.primaryColor,
              primaryAction: IconButton(
                onPressed: () {
                  final message = editingController.text;
                  controller.dismiss(message);
                },
                icon: Icon(Icons.send, color: theme.colorScheme.secondary),
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> aceptDeclineDialog(BuildContext context) {
    bool acceptAvailable = false;
    final scrollController = ScrollController();
    return showFlash<bool>(
      context: context,
      persistent: false,
      onWillPop: () async => false,
      builder: (context, controller) {
        final theme = Theme.of(context);

        return StatefulBuilder(
          builder: (context, setState) {
            scrollController.addListener(() {
              final maxScroll = scrollController.position.maxScrollExtent;
              final currentScroll = scrollController.position.pixels;
              if (!acceptAvailable && maxScroll == currentScroll) {
                setState(() {
                  acceptAvailable = true;
                });
              }
            });
            WidgetsBinding.instance!.addPostFrameCallback((_) {
              // in case that there is no need to scroll
              if (!acceptAvailable &&
                  scrollController.position.pixels ==
                      scrollController.position.maxScrollExtent) {
                setState(() {
                  acceptAvailable = true;
                });
              }
            });

            return SafeArea(
              child: Flash<bool>.dialog(
                controller: controller,
                borderWidth: 3,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: FlashBar(
                  title: Text(TERMS_AND_CONDITIONS_OF_USE_TITLE,
                      style: theme.textTheme.headline6?.copyWith(
                          fontSize: 20.0, color: theme.primaryColor)),
                  message: Container(
                    height: MediaQuery.of(context).size.height * 0.58,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              color: theme.primaryColor.withOpacity(0.05),
                              blurRadius: 1)
                        ]),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(TERMS_AND_CONDITIONS_OF_USE_SUBTITLE,
                                  style: theme.textTheme.bodyText1
                                      ?.copyWith(color: theme.primaryColor)),
                              Text(TERMS_AND_CONDITIONS_OF_USE_ENUM_TERMS,
                                  style: theme.textTheme.bodyText2),
                            ],
                          ),
                        ),
                        if (!acceptAvailable)
                          Positioned(
                              bottom: 10,
                              right: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                ),
                                onPressed: () {
                                  scrollController.animateTo(
                                    scrollController.position.maxScrollExtent,
                                    curve: Curves.easeOut,
                                    duration: const Duration(milliseconds: 300),
                                  );
                                },
                                child: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black45,
                                  size: 30,
                                ),
                              )),
                      ],
                    ),
                  ),
                  leftBarIndicatorColor: theme.primaryColor,
                  actions: [
                    GestionUhDefaultButton(
                      isSecundary: true,
                      onPressed: () {
                        scrollController.dispose();
                        controller.dismiss(false);
                      },
                      text: 'No Acepto',
                      // child: const Text('No acepto'),
                    ),
                    GestionUhDefaultButton(
                      onPressed: acceptAvailable
                          ? () {
                              scrollController.dispose();
                              controller.dismiss(true);
                            }
                          : null,
                      text: 'Acepto',
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

typedef ChildBuilder<T> = Widget Function(
    BuildContext context, FlashController<T> controller, StateSetter setState);
