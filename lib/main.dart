import 'package:flutter/material.dart';
import 'container/container_page.dart';
import 'stack/stack_page.dart';
import 'layout/layout_page2.dart';
import 'provider/provider_page.dart';
import 'package:provider/provider.dart';
import 'provider/counter_model.dart';
 void main() {
 
  runApp( ChangeNotifierProvider(create: (context) => Counter(),
  child:ProviderPage() ,
 ));
}
