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
  TextEditingController _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    items = widget.checklist.items;
    if (items.isNotEmpty && items[currentIndex].notes != null) {
      _notesController.text = items[currentIndex].notes!;
    }
  }

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _nextItem() {
    if (currentIndex < items.length - 1) {
      setState(() {
        currentIndex++;
        _notesController.text = items[currentIndex].notes ?? '';
      });
    }
  }

  void _previousItem() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        _notesController.text = items[currentIndex].notes ?? '';
      });
    }
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
    final currentItem = items[currentIndex];

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
          // Progress indicator
          LinearProgressIndicator(
            value: widget.checklist.progress,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Progress: ${(widget.checklist.progress * 100).toStringAsFixed(1)}%',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Item ${currentIndex + 1} of ${items.length}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          // Current item
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentItem.description,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Example: ${currentItem.example}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    currentItem.status == CheckStatus.passed
                                        ? Colors.green
                                        : Colors.grey,
                                minimumSize: const Size(120, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentItem.status = CheckStatus.passed;
                                });
                              },
                              icon: const Icon(Icons.check_circle),
                              label: const Text('Pass'),
                            ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    currentItem.status == CheckStatus.failed
                                        ? Colors.red
                                        : Colors.grey,
                                minimumSize: const Size(120, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentItem.status = CheckStatus.failed;
                                });
                              },
                              icon: const Icon(Icons.cancel),
                              label: const Text('Fail'),
                            ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: currentItem.status ==
                                        CheckStatus.needsAttention
                                    ? Colors.yellow
                                    : Colors.grey,
                                minimumSize: const Size(120, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  currentItem.status =
                                      CheckStatus.needsAttention;
                                });
                              },
                              icon: const Icon(Icons.warning),
                              label: const Text('Attention'),
                            ),
                          ],
                        ),
                        if (currentItem.status == CheckStatus.failed ||
                            currentItem.status ==
                                CheckStatus.needsAttention) ...[
                          const SizedBox(height: 16.0),
                          TextField(
                            controller: _notesController,
                            decoration: const InputDecoration(
                              labelText: 'Notes',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 3,
                            onChanged: (value) {
                              setState(() {
                                currentItem.notes = value;
                              });
                            },
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
                          if (currentItem.images.isNotEmpty) ...[
                            const SizedBox(height: 16.0),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: currentItem.images.length,
                                itemBuilder: (context, imageIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Stack(
                                      children: [
                                        Image.file(
                                          File(currentItem.images[imageIndex]),
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
                ),
              ),
            ),
          ),
          // Navigation buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: currentIndex > 0 ? _previousItem : null,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Previous'),
                ),
                ElevatedButton.icon(
                  onPressed: currentIndex < items.length - 1 ? _nextItem : null,
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
