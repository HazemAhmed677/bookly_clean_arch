// T is the param type that i will pass
import 'package:either_dart/either.dart';

import '../errors/faluire_class.dart';

abstract class UseCase<T, Param> {
  Future<Either<ServerFaluire, T>> call([Param? param]);
}
