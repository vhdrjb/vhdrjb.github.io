import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase.dart';

abstract class SupplierUsecase<T> extends UseCase<T> {
  const SupplierUsecase();
  @override
  FutureOr<T> perform() {
   return task();
  }

  @protected
  FutureOr<T> task();
}
