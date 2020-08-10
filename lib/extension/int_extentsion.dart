import 'package:Frodo/utils/size_fit.dart';

extension IntFit on int {

//  double px() {
//    return LDSizeFit.setPx(this);
//  }
//
//  double rpx() {
//    return LDSizeFit.setRpx(this);
//  }

  double get px {
    return LDSizeFit.setPx(this.toDouble());
  }
  
  double get rpx {
    return LDSizeFit.setRpx(this.toDouble());
  }
}