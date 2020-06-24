import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class Getameme extends ChangeNotifier{ 

String _newlink= "https://i.ya-webdesign.com/images/my-legs-spongebob-png-8.png";
String get thelink => _newlink;

set thelink(String val){
_newlink=val;
notifyListeners();

}

getit(){
  http.read('https://meme-api.herokuapp.com/gimme').then((contents) {
    
    RegExp exp = new RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
  Iterable<RegExpMatch> matches = exp.allMatches(contents);
    
    matches.forEach((match) {
    _newlink=contents.substring(match.start, match.end);
    
    return _newlink;
  });   
  print(_newlink);
  notifyListeners();
  });
}


}