import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Advanced SelectableText Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AdvancedSelectableText(),
        ),
      ),
    );
  }
}

class AdvancedSelectableText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'This is a customizable SelectableText example with many properties configured.',
      key: const Key('selectable-text-key'),
      focusNode: FocusNode(), // Assign a custom FocusNode
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      strutStyle: const StrutStyle(
        fontSize: 18.0,
        height: 1.5, // Line height
      ),
      textAlign: TextAlign.justify, // Text alignment
      textDirection: TextDirection.ltr, // Text direction
      textScaleFactor: 1.0, // Scaling factor for the text
      showCursor: true, // Show a cursor when text is selected
      cursorColor: Colors.blue, // Cursor color
      cursorWidth: 2.0, // Cursor width
      cursorHeight: 20.0, // Custom cursor height
      cursorRadius: const Radius.circular(5.0), // Cursor with rounded corners
      toolbarOptions: const ToolbarOptions(
        copy: true,
        selectAll: true,
      ), // Toolbar options for selection
      minLines: 1, // Minimum number of lines
      maxLines: 3, // Maximum number of lines
      selectionHeightStyle: ui.BoxHeightStyle.tight, // Selection height style
      selectionWidthStyle: ui.BoxWidthStyle.tight, // Selection width style
      dragStartBehavior:
          DragStartBehavior.start, // Drag start behavior for selecting text
      enableInteractiveSelection: true, // Enable text selection
      selectionControls: materialTextSelectionControls, // Selection control
      onTap: () {
        // Action when tapping on the text
        print('Text tapped!');
      },
      scrollPhysics: const BouncingScrollPhysics(), // Scroll behavior
      semanticsLabel:
          'Selectable text with advanced properties.', // Semantics label for accessibility
      textHeightBehavior: const TextHeightBehavior(
          applyHeightToLastDescent: true), // Control text height behavior
      textWidthBasis: TextWidthBasis.parent, // Width basis for text
      onSelectionChanged:
          (TextSelection selection, SelectionChangedCause? cause) {
        // Called when selection changes
        print('Selected Text: ${selection.start}-${selection.end}');
      },
      contextMenuBuilder: (context, editableTextState) {
        return AdaptiveTextSelectionToolbar(
          anchors: editableTextState.contextMenuAnchors,
          children: [
            TextButton(
              onPressed: () {
                Clipboard.setData(
                    const ClipboardData(text: 'Copied from custom menu!'));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Custom Copy Action!')),
                );
              },
              child: const Text('Copy'),
            ),
            TextButton(
              onPressed: () {
                print('Custom Action!');
              },
              child: const Text('Custom Action'),
            ),
          ],
        );
      }, // Custom context menu
      magnifierConfiguration: TextMagnifierConfiguration
          .disabled, // Enable text magnifier on long press
    );
  }
}

/*
    Explanation of Key Properties Used:
focusNode: Custom FocusNode for managing focus of the text widget.
style: Customized text style with font size, color, and weight.
strutStyle: Configures line height with the StrutStyle property.
textAlign: Aligns the text, here it's justified.
textDirection: Specifies the direction of the text (LTR).
showCursor: Displays a cursor when selecting text.
cursorColor, cursorWidth, cursorHeight, cursorRadius: Customizes the cursor’s appearance.
toolbarOptions: Configures toolbar options for text selection, here enabling copy and select all.
minLines, maxLines: Restricts the text between a minimum and maximum number of lines.
selectionHeightStyle, selectionWidthStyle: Specifies how the selection box’s height and width are rendered.
dragStartBehavior: Controls when dragging for selection starts.
enableInteractiveSelection: Enables or disables the ability to select text.
selectionControls: Uses the default material selection controls.
onTap: Handles the tap action.
scrollPhysics: Adds scrolling physics.
semanticsLabel: Adds a label for accessibility.
onSelectionChanged: Callback for when the selection changes.
contextMenuBuilder: Customizes the context menu shown when text is selected.
magnifierConfiguration: Enables the magnifier for text selection.
 */
