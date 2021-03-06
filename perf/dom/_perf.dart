import '../../test/_specs.dart' as perf;
import '../../test/jasmine_syntax.dart' as jasmine;
import '../_perf.dart' hide xtime, time;
import 'package:angular/mock/module.dart';

export '../../test/_specs.dart';
export 'package:angular/mock/module.dart';

_noop() => null;

time(name, body, {verify:_noop, cleanUp:_noop}) {
  body();
  verify();
  cleanUp();

  dump('$name: => ${statMeasure(() { body(); cleanUp(); })}');
}

main() {
  jasmine.main();
  perf.main();
}
