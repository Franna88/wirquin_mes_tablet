import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/checklist_models.dart';

class ChecklistPage extends StatefulWidget {
  final Checklist checklist;

  const ChecklistPage({
    Key? key,
    required this.checklist,
  }) : super(key: key);

  @override
  State<ChecklistPage> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  final ImagePicker _picker = ImagePicker();
  late List<ChecklistItem> items;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    items = widget.checklist.items;
  }

  Future<void> _takePhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        items[currentIndex].images.add(photo.path);
      });
    }
  }

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        items[currentIndex].images.add(image.path);
      });
    }
  }

  void _removeImage(int imageIndex) {
    setState(() {
      items[currentIndex].images.removeAt(imageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.checklist.name),
        actions: [
          TextButton.icon(
            onPressed: () {
              // TODO: Save checklist progress
              Navigator.pop(context);
            },
            icon: const Icon(Icons.check, color: Colors.white),
            label: const Text(
              'Complete',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: widget.checklist.progress,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Progress: ${(widget.checklist.progress * 100).toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.description,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Example: ${item.example}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 16.0),
                        SegmentedButton<CheckStatus>(
                          segments: const [
                            ButtonSegment<CheckStatus>(
                              value: CheckStatus.passed,
                              label: Text('Pass'),
                              icon: Icon(Icons.check_circle),
                            ),
                            ButtonSegment<CheckStatus>(
                              value: CheckStatus.failed,
                              label: Text('Fail'),
                              icon: Icon(Icons.cancel),
                            ),
                            ButtonSegment<CheckStatus>(
                              value: CheckStatus.needsAttention,
                              label: Text('Attention'),
                              icon: Icon(Icons.warning),
                            ),
                          ],
                          selected: {
                            item.status == CheckStatus.notStarted
                                ? CheckStatus.passed
                                : item.status
                          },
                          onSelectionChanged: (Set<CheckStatus> selected) {
                            setState(() {
                              item.status = selected.first;
                            });
                          },
                        ),
                        if (item.status != CheckStatus.passed) ...[
                          const SizedBox(height: 16.0),
                          TextField(
                            decoration: const InputDecoration(
                              labelText: 'Notes',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 3,
                            onChanged: (value) {
                              setState(() {
                                item.notes = value;
                              });
                            },
                            controller: TextEditingController(text: item.notes),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                onPressed: _takePhoto,
                                icon: const Icon(Icons.camera_alt),
                                label: const Text('Take Photo'),
                              ),
                              ElevatedButton.icon(
                                onPressed: _pickImage,
                                icon: const Icon(Icons.photo_library),
                                label: const Text('Choose Photo'),
                              ),
                            ],
                          ),
                          if (item.images.isNotEmpty) ...[
                            const SizedBox(height: 16.0),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item.images.length,
                                itemBuilder: (context, imageIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Stack(
                                      children: [
                                        Image.file(
                                          File(item.images[imageIndex]),
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 0,
                                          child: IconButton(
                                            icon: const Icon(
                                              Icons.remove_circle,
                                              color: Colors.red,
                                            ),
                                            onPressed: () =>
                                                _removeImage(imageIndex),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
