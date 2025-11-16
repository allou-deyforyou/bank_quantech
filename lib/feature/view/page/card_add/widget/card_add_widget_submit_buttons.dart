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
    return Padding(
      padding: kTabLabelPadding,
      child: FilledButton(
        style: FilledButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          maximumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
        ),
        onPressed: _onPressed(context),
        child: const Text("Save"),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {};
  }
}

class CardAddCancelButton extends StatelessWidget {
  const CardAddCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kTabLabelPadding,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          maximumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
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
