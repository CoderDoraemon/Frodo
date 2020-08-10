import 'package:Frodo/utils/size_fit.dart';

extension DoubleFit on double {

//  double px() {
//    return LDSizeFit.setPx(this);
//  }
//
//  double rpx() {
//    return LDSizeFit.setRpx(this);
//  }

  double get px {
    return LDSizeFit.setPx(this);
  }

  double get rpx {
    return LDSizeFit.setRpx(this);
  }
}