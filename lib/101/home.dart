import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/richtext.dart';
import 'package:flutter_application_1/101/row.dart';
import 'package:flutter_application_1/101/row_scaffold.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_learn_view.dart';
import 'package:flutter_application_1/101/textfield.dart';
import 'button_learn.dart';
import 'color_learn.dart';
import 'column.dart';
import 'container_sized_box_learn.dart';
import 'custom_widget_learn.dart';
import 'distwo.dart';
import 'icon_learn.dart';
import 'image_learn.dart';


class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextLearnView(),
                        ),
                      ),
                  text: "text_learn_button"),

                   Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DisTwo(),
                        ),
                      ),
                  text: "distwo"),
                                Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ColumnLearn(),
                        ),
                      ),
                  text: "column"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ButtonLearn(),
                        ),
                      ),
                  text: "button_bar_learn"),
                   Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ColorLearn(),
                        ),
                      ),
                  text: "color_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConatinerSizedBoxLearn(),
                        ),
                      ),
                  text: "container_sized_box_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomWidgetLearn(),
                        ),
                      ),
                  text: "custom_widhet_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IconLearnView(),
                        ),
                      ),
                  text: "icon_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ImageLaern(),
                        ),
                      ),
                  text: "image_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StaltessLearn(),
                        ),
                      ),
                  text: "staless_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextLearnView(),
                        ),
                      ),
                  text: "text_learn_view"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextFieldExample(),
                        ),
                      ),
                  text: "textfield"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RichTextExample(),
                        ),
                      ),
                  text: "richtext"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScaffoldLearnView(),
                        ),
                      ),
                  text: "scaffol_learn"),
              Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RowLearn(),
                        ),
                      ),
                  text: "row"),          
                   Veyselbutton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaddingLearn(),
                        ),
                      ),
                  text: "padding_learn"),
              MaterialButton(
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScaffoldRow(),
                        ),
                      ),
                  child: const Text(
                    'row_scaffold',
                    style: TextStyle(fontSize: 20),
                  )),
            ]),
          ),
        ),
      ),
    );
  }

  Widget createNode(String nodeText) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          nodeText,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}

class Veyselbutton extends StatelessWidget {
  const Veyselbutton({
    super.key,
    this.color,
    required this.text,
    required this.onPressed,
  });

  final Color? color;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
        color: color ?? Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
