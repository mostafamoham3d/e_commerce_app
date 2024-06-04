import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/app_colors.dart';

class ShowPhotoInReviewsCheckBox extends HookWidget {
  const ShowPhotoInReviewsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isChecked = useState(false);
    return Row(
      children: [
        Checkbox(
          activeColor: AppColors.mainColor,
          value: isChecked.value,
          onChanged: (value) {
            isChecked.value = value ?? false;
          },
        ),
        const Text('With photo'),
      ],
    );
  }
}
