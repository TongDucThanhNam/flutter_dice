import "package:flutter/material.dart";
import "package:flutter_tutorial/gradient_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dicer app"),
        ),
        backgroundColor: const Color.fromARGB(122, 122, 122, 122),
        body: GradientContainer.purple(),
      ),
    ),
  );
}
