import 'package:aimaze/app_component.dart';
import 'package:aimaze/app_component.template.dart' as ng;
import 'package:angular/angular.dart';

void main() {
  runApp<AppComponent>(
      ng.AppComponentNgFactory as ComponentFactory<AppComponent>);
}
