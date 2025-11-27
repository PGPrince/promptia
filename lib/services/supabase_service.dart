import 'package:get/get.dart';
import 'package:promptia/utils/supabase_constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService extends GetxService {
  @override
  void onInit() async {
    await Supabase.initialize(url: appUrl, anonKey: appKey);
    super.onInit();
  }

  static final SupabaseClient supbase = Supabase.instance.client;
}
