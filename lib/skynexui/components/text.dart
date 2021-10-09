import 'package:flutter/material.dart' as M;

class Text extends M.StatelessWidget {
  final String value;

  const Text(this.value, {M.Key? key}) : super(key: key);

  @override
  M.Widget build(M.BuildContext context) {
    return M.Text(value);
  }
}
