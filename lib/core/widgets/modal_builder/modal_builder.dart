import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../../navigator_key.dart';
import '../wip_overlay.dart';
import 'long_modal/side_sheet_old.dart';

part 'long_modal/side_sheet.dart';
part 'short_modal/dialog.dart';
part 'long_modal/full_screen_dialog.dart';
part 'short_modal/bottom_sheet.dart';
part 'long_modal/long_modal.dart';
part 'short_modal/short_modal.dart';

abstract class ModalBuilder<T extends Bloc> {
  T? get bloc;
  Stream<bool> get isBusyStream;
  Widget content(BuildContext context);

  Future show();
}
