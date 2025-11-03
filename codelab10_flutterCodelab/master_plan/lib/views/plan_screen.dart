import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(plansNotifier.value.isNotEmpty ? plansNotifier.value[0].name : 'Master Plan'),
      ),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          final Plan currentPlan = plans.isNotEmpty ? plans[0] : const Plan(name: 'My Plan', tasks: []);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    final ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final List<Plan> plans = planNotifier.value;
        if (plans.isEmpty) {
          planNotifier.value = [
            Plan(name: 'My Plan', tasks: [const Task()])
          ];
        } else {
          final Plan current = plans[0];
          final updatedTasks = List<Task>.from(current.tasks)..add(const Task());
          planNotifier.value = List<Plan>.from(plans)
            ..[0] = Plan(name: current.name, tasks: updatedTasks);
        }
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    final ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          final List<Plan> plans = planNotifier.value;
          if (plans.isEmpty) return;
          final Plan current = plans[0];
          planNotifier.value = List<Plan>.from(plans)
            ..[0] = Plan(
              name: current.name,
              tasks: List<Task>.from(current.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          final List<Plan> plans = planNotifier.value;
          if (plans.isEmpty) return;
          final Plan current = plans[0];
          planNotifier.value = List<Plan>.from(plans)
            ..[0] = Plan(
              name: current.name,
              tasks: List<Task>.from(current.tasks)
                ..[index] = Task(description: text, complete: task.complete),
            );
        },
      ),
    );
  }
}
