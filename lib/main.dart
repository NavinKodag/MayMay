import 'package:flutter/material.dart';
import 'package:maymay/blocks/scrape.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers: [
            ChangeNotifierProvider<Getameme>.value(
              value: Getameme(),
            )
          ],
          child: MaterialApp( 
            debugShowCheckedModeBanner: false,
        home:Meme(),
      ),
    );
  }

}