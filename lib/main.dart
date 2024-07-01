import 'package:flutter/material.dart';
import 'package:contact_list/Contact.dart';

void main() {
  runApp(contact());
}

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter contact list',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Mycontactlist(),
    );
  }
}

class Mycontactlist extends StatefulWidget {
  const Mycontactlist({super.key});

  @override
  State<Mycontactlist> createState() => _MycontactlistState();
}

class _MycontactlistState extends State<Mycontactlist> {
  @override
  Widget build(BuildContext context) {
    // List<Widget> textwidget = [];
    // for (var t = 0; t < 10; t++){
    //   var widget = Text('$t');
    //   textwidget.add(widget);
    // }
    late List<Contact> contactData = [
      Contact('รัชชานนท์', '0610541331'),
      Contact('อ้น', '0660311833'),
      Contact('สเเตมป์', '0963490964'),
      Contact('อาร์ม', '0618096515'),
      Contact('นิติพัฒน์', '0610541331'),
    ];

    // List<Widget> generateText() {
    //   List<Widget> textwidget = [];
    //   for (var t = 0; t < contactData.length; t++) {
    //     var widget = Card(
    //       color: Color.fromARGB(170, 85, 84, 81),
    //       child: ListTile(
    //         title: Text('' + contactData[t].name),
    //         subtitle: Text('' + contactData[t].phonenumber),
    //         trailing: const Icon(
    //           Icons.phone,
    //           color: Colors.green,
    //           size: 30.0,
    //         ),
    //       ),
    //     );

    //     textwidget.add(widget);
    //   }
    //   return textwidget;
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('รายชื่อผู้ติดต่อ'),
        ),
      ),
      body: ListView.builder(
          itemCount: contactData.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            Contact data = contactData[index];
            return Card(
              child: ListTile(
                // isThreeLine: true,
                title: Text(data.name),
                leading: Image.asset('assets/Img_profile/$index.jpg'),
                textColor: Color.fromARGB(233, 0, 0, 0),
                subtitle: Text(data.phonenumber),
                trailing: const Icon(
                  Icons.phone,
                  color: Colors.green,
                  size: 30.0,
                ),
              ),
            );
          }),
    );
  }
}
