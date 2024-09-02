import 'package:flutter/material.dart';

// It is recommended to use packages instead of building a stepper widget.

//
//  packages
// 1 - easy_stepper
// 2 - enhance_stepper
// 3 - stepper_list_view
// 4 - progress_stepper
// 5 - another_stepper
// 6 - flutter_stepindicator
// 7 - order_tracker
// 8 - im_stepper
// 9 - status_change
// 10 - cupertino_stepper
// 11 - cool_stepper
// 12 - linear_step_indicator
// 13 - steps_indicator
// 14 - stepper_a
// 15 - flutter_timeline
// 16 - awesome_stepper
// 17 - progress_timeline
// 18 - sequential_navigator

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stepper(
        type: StepperType.vertical,
        steps: const [
          Step(
            title: Text("Create a survey"),
            content: Text("Are you happy with our service?"),
          ),
          Step(
            title: Text("Add Questions"),
            content: Text("No questions added"),
          ),
        ],
      ),
    );
  }
}
