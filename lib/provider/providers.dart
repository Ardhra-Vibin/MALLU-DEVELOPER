import 'package:flutter_developer/provider/for_loop_provider.dart';
import 'package:flutter_developer/provider/functions_providers.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'basics_provider.dart';

List<SingleChildWidget> providers(){
  return [
    ChangeNotifierProvider.value(value: BasicProvider()),
    ChangeNotifierProvider.value(value: ForLoopProvider()),
    ChangeNotifierProvider.value(value: FunctionProvider()),

  ];
}