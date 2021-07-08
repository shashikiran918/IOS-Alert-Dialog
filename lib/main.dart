import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _openDialog(ctx) {
    showCupertinoDialog(
        context: ctx,
        builder: (_) => CupertinoAlertDialog(
          title: Text("This is the title"),
          content: Text("This is the content"),
          actions: [
            // Close the dialog
            // You can use the CupertinoDialogAction widget instead
            CupertinoButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                }),
            CupertinoButton(
              child: Text('I agree'),
              onPressed: () {
                // Do something
                print('I agreed');
              },
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            CupertinoButton(
                onPressed: () => _openDialog(context),
                child: Text('Open CupertinoAlertDialog'))
          ],
        ),
      ),
    );
  }
}