import 'package:flutter/material.dart';
import '../models/checklist_models.dart';

class DepartmentListPage extends StatelessWidget {
  const DepartmentListPage({super.key});

  // Temporary mock data - will be replaced with Firebase data later
  List<Department> get _mockDepartments => [
        Department(
          id: '1',
          name: 'Injection Molding',
          description: 'Plastic injection molding department',
          machines: [
            Machine(
                id: '1', name: 'IM Machine 1', number: 'IM001', checklists: []),
            Machine(
                id: '2', name: 'IM Machine 2', number: 'IM002', checklists: []),
          ],
        ),
        Department(
          id: '2',
          name: 'Assembly',
          description: 'Product assembly department',
          machines: [
            Machine(
              id: '3',
              name: 'Assembly Line 1',
              number: 'AS001',
              checklists: [],
            ),
          ],
        ),
        // Add more departments as needed
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departments'),
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () {
              // TODO: Navigate to maintenance dashboard
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Department Selection',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Select a department to view its machines and perform maintenance checks. Each department contains specific machines that require regular inspection.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: _mockDepartments.length,
              itemBuilder: (context, index) {
                final department = _mockDepartments[index];
                return DepartmentCard(department: department);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  final Department department;

  const DepartmentCard({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // TODO: Navigate to department detail page
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                department.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                department.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${department.machines.length} Machines',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
