part of 'card_add_widget.dart';

class CardAddSubmitButtons extends StatelessWidget {
  const CardAddSubmitButtons({super.key});

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
          CardAddSaveButton(),
          SizedBox(height: 8.0),
          CardAddCancelButton(),
        ],
      ),
    );
  }
}

class CardAddSaveButton extends StatelessWidget {
  const CardAddSaveButton({super.key});

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
        child: const Text("Save"),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    return () async {
      if (Form.of(context).validate()) {
        context.startLoading();
        await ref.refresh(cardAddCreateCreditCardControllerProvider.future);
        if (context.mounted) {
          context.stopLoading();
          const HomePageRoute().go(context);
        }
      }
    };
  }
}

class CardAddCancelButton extends StatelessWidget {
  const CardAddCancelButton({super.key});

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
