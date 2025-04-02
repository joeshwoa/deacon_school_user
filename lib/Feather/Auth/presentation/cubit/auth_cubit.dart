import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final supabase = Supabase.instance.client;

  Future<bool> login(String phone) async {
    final user = await supabase.from('Students').select().eq('phone', phone).single();
    if (user.isNotEmpty ) {

      return true;
    } else {
      return false;
    }

  }

}
