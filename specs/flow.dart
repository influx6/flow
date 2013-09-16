library flow.specs;

import 'package:flow/flow.dart';
import 'package:flow/components.dart';

void main(){
  
  var toPort = Port.create('out');
  var fromPort = Port.create('in');

  var ip = IP.create('hull',{
    'NAME':'name','AGE':'age'
  },'1');

  fromPort.attach(toPort);

  fromPort.send('love');
  fromPort.beginGroup('<note>');
  fromPort.send('i need a woman who heart understands the honesty in form,love and heart');
  fromPort.endGroup('</note>');
  

  toPort.listen((n){
    print('#toPort recieves: $n');
  });
  
  fromPort.send('think');
  fromPort.send('straight');
  fromPort.detach();
  fromPort.send('my');
  fromPort.send('people');
  fromPort.send('!');


}
