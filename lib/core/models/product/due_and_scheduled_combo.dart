import 'package:flutter/material.dart';

enum DueAndNextCombo {
  scheduled(Color(0xff016db1)),
  overdue(Color(0xff721e21)),
  dueIn3(Color(0xffbf291c)),
  dueIn7(Color(0xfff19520)),
  dueAfter7(Color(0xff0b8542)),
  noDueDate(Color(0xff838383)),
  inactive(null);

  final Color? color;
  const DueAndNextCombo(this.color);
}

class Rating {
  static NeedForScheduling get scheduled =>
      const NeedForScheduling(Color(0xff016db1));
  static NeedForService get overdue => const NeedForService(Color(0xff721e21));
  static NeedForService get dueIn3 => const NeedForService(Color(0xffbf291c));
  static NeedForService get dueIn7 => const NeedForService(Color(0xfff19520));
  static NeedForService get dueAfter7 =>
      const NeedForService(Color(0xff0b8542));
  static NeedForService get noDueDate =>
      const NeedForService(Color(0xff838383));
  static NeedForService get inactive => const NeedForService(null);
}

class NeedForService {
  final Color? color;
  const NeedForService(this.color);
}

class NeedForScheduling extends NeedForService {
  const NeedForScheduling(super.color);
}

NeedForScheduling get scheduled => const NeedForScheduling(Color(0xff016db1));
NeedForService get overdue => const NeedForService(Color(0xff721e21));
NeedForService get dueIn3 => const NeedForService(Color(0xffbf291c));
NeedForService get dueIn7 => const NeedForService(Color(0xfff19520));
NeedForService get dueAfter7 => const NeedForService(Color(0xff0b8542));
NeedForService get noDueDate => const NeedForService(Color(0xff838383));
NeedForService get inactive => const NeedForService(null);
