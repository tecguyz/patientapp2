import 'package:flutter/material.dart';

class Learnflutter extends StatefulWidget {
  const Learnflutter({Key? key}) : super(key: key);

  @override
  State<Learnflutter> createState() => _LearnflutterState();
}

class _LearnflutterState extends State<Learnflutter> {
  bool isswitch =
      false; ////// mak esure it is always before build fun otherwise it will be false all time you reload
  bool ischeckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lern flutter'),
        automaticallyImplyLeading:
            false, ///////// it will auto reate back button and the funtion ( now it is false)
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          /////// to put widgets in column ways
          children: [
            Image.asset('images/movies.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              ////// container is like sized box but you can get so many arguments and features
              margin: const EdgeInsets.all(
                  10.0), //////////// it will give spave out side the  item
              padding: const EdgeInsets.all(
                  10.0), ////////////////// it will give space inside the items
              color: Colors.amber,
              width: double.infinity, // it will takke the whole space
              child: const Center(
                //////////////// it will allign  the item to the centre
                child: Text(
                  'ths =i s ',
                  style: TextStyle(color: Color.fromARGB(255, 22, 21, 19)),
                ),
              ), ///////////////// child is to put other widget under other widget
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isswitch
                      ? Colors.black12
                      : Colors
                          .red), //////// if ( ? )the iswich true the black color otherwise ( : ) it is red
              onPressed: () {
                debugPrint('elevatrd button ');
              },
              child: const Text('elevated buttttt'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('elevatrd button ');
              },
              child: const Text('out lined bi=uttt '),
            ),
            TextButton(
              onPressed: () {
                debugPrint('elevatrd button ');
              },
              child: const Text('text buttom'),
            ),
            GestureDetector(
              // it will detect gesture in the icons and row because icons can't use as button
              onTap: () {
                debugPrint('gestuer detected');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.label_important_outline,
                    color: Colors.red,
                  ),
                  Text('data'),
                  Icon(
                    Icons.label_important_outline,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
                value: isswitch,
                onChanged: (bool newbool) {
                  setState(() {
                    //////////// to refresh use the setstate that will change the valuse or make the changes in the button
                    isswitch = newbool;
                  });
                }),
            Checkbox(
                value: ischeckbox,
                onChanged: (bool? newbool) {
                  setState(() {
                    ischeckbox = newbool!;
                  });
                }),
            Image.network(
                'https://i.pinimg.com/originals/d5/e1/bf/d5e1bf9c7156e464f5e656b93cd5c632.jpg')
          ],
        ),
      ),
    );
  }
}
