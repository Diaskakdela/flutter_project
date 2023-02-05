import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';

import '../model/Professor.dart';

class ProfessorsData extends AbstractData<Professor>{
  List<Professor> items = List.of({Professor(500000, DateTime.now(), 3, "Aubakirov Bakdaulet",
      80, 190, DateTime(1995), "Satpayev street 22"), Professor(500000, DateTime.now(), 3, "Dias Dias",
      80, 190, DateTime(1995), "Satpayev street 22")});

  static final ProfessorsData _singleton = ProfessorsData._internal();

  factory ProfessorsData() {
    return _singleton;
  }

  ProfessorsData._internal();
}