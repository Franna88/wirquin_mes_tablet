import 'package:flutter/material.dart';

enum ChecklistFrequency {
  daily,
  weekly,
  monthly,
  quarterly,
  semiAnnual,
  yearly,
}

enum ChecklistCategory { im, bt, ter }

enum CheckStatus {
  notStarted,
  passed,
  failed,
  needsAttention,
}

class ChecklistItem {
  final String id;
  final String description;
  final String example;
  CheckStatus status;
  String? notes;
  List<String> images;

  ChecklistItem({
    required this.id,
    required this.description,
    required this.example,
    this.status = CheckStatus.notStarted,
    this.notes,
    this.images = const [],
  });
}

class Checklist {
  final String id;
  final String name;
  final ChecklistCategory category;
  final ChecklistFrequency frequency;
  final List<ChecklistItem> items;
  final bool includesPreviousChecklist;

  Checklist({
    required this.id,
    required this.name,
    required this.category,
    required this.frequency,
    required this.items,
    this.includesPreviousChecklist = false,
  });

  int get totalItems => items.length;
  int get completedItems =>
      items.where((item) => item.status != CheckStatus.notStarted).length;
  int get failedItems =>
      items.where((item) => item.status == CheckStatus.failed).length;
  int get needsAttentionItems =>
      items.where((item) => item.status == CheckStatus.needsAttention).length;
  double get progress => totalItems > 0 ? completedItems / totalItems : 0.0;
}

class Machine {
  final String id;
  final String name;
  final List<Checklist> checklists;

  Machine({
    required this.id,
    required this.name,
    required this.checklists,
  });
}

class Department {
  final String id;
  final String name;
  final List<Machine> machines;

  Department({
    required this.id,
    required this.name,
    required this.machines,
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
