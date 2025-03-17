class Department {
  final String id;
  final String name;
  final String description;
  final List<Machine> machines;

  Department({
    required this.id,
    required this.name,
    required this.description,
    required this.machines,
  });
}

class Machine {
  final String id;
  final String name;
  final String number;
  final List<ChecklistType> checklists;

  Machine({
    required this.id,
    required this.name,
    required this.number,
    required this.checklists,
  });
}

enum ChecklistFrequency { daily, monthly, quarterly, sixMonthly }

class ChecklistType {
  final String id;
  final String name;
  final ChecklistFrequency frequency;
  final List<ChecklistItem> items;
  final DateTime lastCompleted;
  final DateTime nextDue;

  ChecklistType({
    required this.id,
    required this.name,
    required this.frequency,
    required this.items,
    required this.lastCompleted,
    required this.nextDue,
  });
}

class ChecklistItem {
  final String id;
  final String description;
  bool isCompleted;
  bool? isPass;
  String? failureNote;
  List<String>? photos;
  String? resolution;
  DateTime? completedAt;

  ChecklistItem({
    required this.id,
    required this.description,
    this.isCompleted = false,
    this.isPass,
    this.failureNote,
    this.photos,
    this.resolution,
    this.completedAt,
  });
}

class MaintenanceIssue {
  final String id;
  final String machineId;
  final String checklistItemId;
  final String description;
  final List<String> photos;
  final DateTime reportedAt;
  String? resolution;
  List<String>? resolutionPhotos;
  DateTime? resolvedAt;

  MaintenanceIssue({
    required this.id,
    required this.machineId,
    required this.checklistItemId,
    required this.description,
    required this.photos,
    required this.reportedAt,
    this.resolution,
    this.resolutionPhotos,
    this.resolvedAt,
  });

  bool get isResolved => resolvedAt != null;
}
