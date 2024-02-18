import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';
import 'package:im_stepper/stepper.dart';

class DotStepperJobRequest extends StatefulWidget {
  const DotStepperJobRequest({Key? key}) : super(key: key);

  @override
  State<DotStepperJobRequest> createState() => _DotStepperJobRequestState();
}

class _DotStepperJobRequestState extends State<DotStepperJobRequest> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 0;
  int _activeCurrentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Theme(
                  data: ThemeData(shadowColor: Colors.transparent),
                  child: Stepper(
                    steps: stepList(),
                    currentStep: _activeCurrentStep,

                    type: StepperType.horizontal,
                    controlsBuilder: (context, controller) {
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Step> stepList() => [
        Step(
          state:
              _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeCurrentStep >= 0,
          title: SizedBox(),
          content: Container(
            child: Column(
              children: [GestureDetector(
                  onTap: (){
                    setState(() {
                      _activeCurrentStep =1;
                    });
                  },
                  child: Text('First'))],
            ),
          ),
        ),
        Step(
            state: _activeCurrentStep <= 1
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 1,
            title: SizedBox(),
            content: Container(
              child: Column(
                children: [Text('Second')],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: SizedBox(),
            content: Container(
              child: Column(
                children: [Text('Third')],
              ),
            ))
      ];
}
