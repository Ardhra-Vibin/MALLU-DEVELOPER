import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'basics_provider.dart';

List<SingleChildWidget> providers(){
  return [
    ChangeNotifierProvider.value(value: BasicProvider())
  ];
}