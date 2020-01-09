import 'package:flutter/material.dart';

class _SixthHome extends State<SixthHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('New Testament'),
        backgroundColor: Color.fromRGBO(216, 128, 253, 0.6),
        ),
        body:  _myListView(context),
    );
  }
}

class SixthHome extends StatefulWidget {
  @override
  _SixthHome createState() => _SixthHome();
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Matthew (Gospel According to Matthew)'),
        subtitle: Text(
            ' (Greek: Εὐαγγέλιον κατὰ Ματθαῖον, romanized: Euangélion katà Matthaîon also called the Gospel of Matthew, or simply Matthew) is the first book of the New Testament and one of the three synoptic gospels.'),
        trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Mark (Gospel According to Mark)'),
        subtitle: Text(
            '(Greek: Εὐαγγέλιον κατὰ Μᾶρκον, romanized: Euangélion katà Mârkon) is one of the four canonical gospels and one of the three synoptic gospels.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Luke (Gospel According to Luke)'),
        subtitle: Text(
            '(Greek: Εὐαγγέλιον κατὰ Λουκᾶν, romanized: Euangélion katà Loukân), also called the Gospel of Luke, or simply Luke, is the mark of the four canonical Gospels.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('John (Gospel of John)'),
        subtitle: Text(
            ' (Greek: Εὐαγγέλιον κατὰ Ἰωάννην, romanized: Euangélion katà Iōánnēn) is the fourth of the canonical gospels.The book went through two to three stages, or "editions", before reaching its current form around AD 90–110'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Acts (Acts of Apostle)'),
        subtitle: Text(
            '(Koinē Greek: Πράξεις Ἀποστόλων, Práxeis Apostólōn;Latin: Actūs Apostolōrum), often referred to simply as Acts, or formally the Book of Acts, is the fifth book of the New Testament; it tells of the founding of the Christian church and the spread of its message to the Roman Empire'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Romans ( Epistle to the Romans)'),
        subtitle: Text(
            ' Letter to the Romans, often shortened to Romans, is the sixth book in the New Testament. Biblical scholars agree that it was composed by the Apostle Paul to explain that salvation is offered through the gospel of Jesus Christ. It is the longest of the Pauline epistles.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('1 Corinthians (First Epistle to the Corinthians)'),
        subtitle: Text(
            ' (Ancient Greek: Α΄ ᾽Επιστολὴ πρὸς Κορινθίους), usually referred to as First Corinthians or 1 Corinthians is a Pauline epistle of the New Testament of the Christian Bible.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('2 Corinthians (Second Epistle to the Corinthians)'),
        subtitle: Text(
            'Commonly referred to as Second Corinthians or in writing 2 Corinthians, is a Pauline epistle of the New Testament of the Christian Bible. The epistle is attributed to Paul the Apostle and a co-author named Timothy, and is addressed to the church in Corinth and Christians in the surrounding province of Achaea, in modern-day Greece'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Galatians (Epistle to the Galatians)'),
        subtitle: Text(
            'Often shortened to Galatians, is the ninth book of the New Testament. It is a letter from Paul the Apostle to a number of Early Christian communities in Galatia. Scholars have suggested that this is either the Roman province of Galatia in southern Anatolia, or a large region defined by an ethnic group of Celtic people in central Anatolia.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Ephesians (Epistle to the Ephesians)'),
        subtitle: Text(
            ' he Letter to the Ephesians and often shortened to Ephesians, is the tenth book of the New Testament. Its authorship has traditionally been attributed to Paul the Apostle but starting in 1792, this has been challenged as Deutero-Pauline, that is, written in Pauls name by a later author strongly influenced by Pauls thought, probably "by a loyal disciple to sum up Paul’s teaching and to apply it to a new situation fifteen to twenty-five years after the Apostle’s death"'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Philippians (Epistle to the Philippians)'),
        subtitle: Text(
            'Commonly referred to as Philippians, is a Pauline epistle of the New Testament of the Christian Bible. The epistle is attributed to Paul the Apostle and a co-author named Timothy, and is addressed to the Christian church in Philippi.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Colossians (Epistle to the Colossians)'),
        subtitle: Text(
            'Is the twelfth book of the New Testament. It was written, according to the text, by Paul the Apostle and Timothy to the Church in Colossae, a small Phrygian city near Laodicea and approximately 100 miles (160 km) from Ephesus in Asia Minor.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('1 Thessalonians (First Epistle to the Thessalonians)'),
        subtitle: Text(
            'Commonly referred to as First Thessalonians or 1 Thessalonians, is a Pauline epistle of the New Testament of the Christian Bible. The epistle is attributed to Paul the Apostle, and is addressed to the church in Thessalonica, in modern-day Greece. It is likely the first of Pauls letters, probably written by the end of AD 52'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('2 Thessalonians (Second Epistle to the Thessalonians)'),
        subtitle: Text(
            'Commonly referred to as Second Thessalonians or 2 Thessalonians is a book from the New Testament of the Christian Bible. It is traditionally attributed to Paul the Apostle, with Timothy as a co-author. Modern biblical scholarship is divided on whether the epistle was written by Paul'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('1 Timothy (First Epistle to Timothy)'),
        subtitle: Text(
            'usually referred to simply as First Timothy and often written 1 Timothy, is one of three letters in the New Testament of the Bible often grouped together as the Pastoral Epistles, along with Second Timothy and Titus.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('2 Timothy (Second Epistle to Timothy)'),
        subtitle: Text(
            'Usually referred to simply as Second Timothy and often written 2 Timothy or II Timothy, is one of the three pastoral epistles traditionally attributed to Paul the Apostle. The three epistles are called "pastoral" because they relate to the conduct of church leaders, thought of as pastors (literally shepherds).'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Titus (Epistle to Titus)'),
        subtitle: Text(
            'Usually referred to simply as Titus, is one of the three pastoral epistles (along with 1 Timothy and 2 Timothy) in the New Testament, historically attributed to Paul the Apostle.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Philemon (Epistle to Philemon)'),
        subtitle: Text(
            'Known simply as Philemon, is one of the books of the Christian New Testament. It is a prison letter, co-authored by Paul the Apostle with Timothy, to Philemon, a leader in the Colossian church. It deals with the themes of forgiveness and reconciliation. '), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Hebrews (Epistle to the Hebrews)'),
        subtitle: Text(
            'or Letter to the Hebrews, or in the Greek manuscripts, simply To the Hebrews (Πρὸς Ἑβραίους), is one of the books of the New Testament.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('James (Epistle of James)'),
        subtitle: Text(
            '(Ancient Greek: Ἰάκωβος, romanized: Iakōbos), the Epistle of James, or simply James, is one of the 21 epistles (didactic letters) in the New Testament.'), //      )
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('1 Peter (First Epistle of Peter)'),
        subtitle: Text(
            'Usually referred to simply as First Peter and often written 1 Peter, is a book of the New Testament. The author presents himself as Peter the Apostle, and, following Catholic tradition, the epistle has been held to have been written during his time as Bishop of Rome or Bishop of Antioch, though neither title is used in the epistle.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('2 Peter (Second Epistle of Peter)'),
        subtitle: Text(
            ' Often referred to as Second Peter and written 2 Peter or in Roman numerals II Peter (especially in older references), is a book of the New Testament of the Bible, traditionally held to have been written by Saint Peter. '), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('1 John (First Epistle of John)'),
        subtitle: Text(
            'Often referred to as First John and written 1 John or I John, is the first of the Johannine epistles of the New Testament, and the fourth of the catholic epistles. It is attributed to John the Evangelist, traditionally thought to be the author of the Gospel of John and the other two Johannine epistles.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('2 John (Second Epistle of John)'),
        subtitle: Text(
            'Often referred to as Second John and often written 2 John or II John, is a book of the New Testament attributed to John the Evangelist, traditionally thought to be the author of the Gospel of John and the other two epistles of John.'), //
             trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        }, ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('3 John (mark Epistle of John)'),
        subtitle: Text(
            'often referred to as mark John and written 3 John or III John, is the antepenultimate book of the New Testament and attributed to John the Evangelist, traditionally thought to be the author of the Gospel of John and the other two epistles of John. '), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Jude (Epistle of Jude)'),
        subtitle: Text(
            'Often shortened to Jude, is the penultimate book of the New Testament and is traditionally attributed to Jude, the servant of Jesus and the brother of James the Just.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/mark');
        },),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bap.jpg'),
        ),
        title: Text('Revelations (Book of Revelation)'),
        subtitle: Text(
            'Often called the Book of Revelations, Revelation to John, Apocalypse of John, The Revelation, or simply Revelation, the Revelation from Jesus Christ (from its opening words) or the Apocalypse, is the final book of the New Testament, and therefore also the final book of the Christian Bible.'), //
              trailing: Icon(Icons.arrow_forward), //
        onTap: () {
          Navigator.pushNamed(context, '/matthew');
        },),
    ],
  );
}
