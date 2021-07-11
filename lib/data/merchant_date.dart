import 'package:flutter_lecture_11/model/merchant.dart';

class MerchantData {
  MerchantData._();

  static MerchantData merchantData = MerchantData._();
  List<String> categories = ['A', 'B', 'C', 'D', 'E'];
  Merchant merchant = Merchant();
}
