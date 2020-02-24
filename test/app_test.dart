import 'package:aimaze/app_component.dart';
import 'package:aimaze/app_component.template.dart' as ng;
import 'package:angular/angular.dart';
@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

void main() {
  final testBed = NgTestBed.forComponent<AppComponent>(
      ng.AppComponentNgFactory as ComponentFactory<AppComponent>);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('My First AngularDart App'));
  });

  // Testing info: https://angulardart.dev/guide/testing
}
