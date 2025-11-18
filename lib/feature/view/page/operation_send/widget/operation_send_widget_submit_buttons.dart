part of 'operation_send_widget.dart';

class OperationSendSubmitButtons extends StatelessWidget {
  const OperationSendSubmitButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      minimum: kMaterialListPadding,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OperationSendSaveButton(),
          SizedBox(height: 8.0),
          OperationSendCancelButton(),
        ],
      ),
    );
  }
}

class OperationSendSaveButton extends StatelessWidget {
  const OperationSendSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: kTabLabelPadding,
      child: FilledButton(
        style: FilledButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          maximumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          textStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
        ),
        onPressed: _onPressed(context),
        child: const Text("Send"),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    return () async {
      if (Form.of(context).validate()) {
        context.startLoading();
        await ref.refresh(operationSendControllerProvider.future);
        if (context.mounted) {
          context.stopLoading();
          const HomePageRoute().go(context);
        }
      }
    };
  }
}

class OperationSendCancelButton extends StatelessWidget {
  const OperationSendCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: kTabLabelPadding,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          maximumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          textStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
        ),
        onPressed: _onPressed(context),
        child: const Text("Cancel"),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      Navigator.of(context).pop();
    };
  }
}
