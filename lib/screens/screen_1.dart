import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';
  static const String title = 'Lorem Ipsum is simply dummy text of '
      'the printing and typesetting industry. '
      'Lorem Ipsum has been the industry\'s standard'
      ' dummy text ever since the 1500s, when an unknown printer';

  static const String longText =
      'Contrary to popular belief, Lorem Ipsum is not simply random text.'
      ' It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'
      ' Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, '
      'looked up one of the more obscure Latin words, consectetur, '
      'from a Lorem Ipsum passage, and going through the cites of the word in classical literature, '
      'discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" '
      '(The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, '
      'very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..",'
      ' comes from a line in section 1.10.32 There are many variations of passages of'
      ' Lorem Ipsum available, but the majority have suffered alteration '
      'in some form, by injected humour, or randomised words which don\'t '
      'look even slightly believable. If you are going to use a passage '
      'of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing'
      ' hidden in the middle of text. All the Lorem Ipsum generators on the Internet '
      'tend to repeat predefined chunks as necessary, making this the first true '
      'generator on the Internet. It uses a dictionary of over 200 Latin words, '
      'combined with a handful of model sentence structures, to generate Lorem '
      'Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always'
      ' free from repetition, injected humour, or non-characteristic words etc.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          alignment: Alignment.topRight,
                          child: const Text(
                            'X',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: const Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.black12,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Scrollbar(
                isAlwaysShown: true,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: const Text(
                          '$longText',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'TEST BUTTON',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
