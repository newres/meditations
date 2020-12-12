import 'package:flutter/material.dart';
import 'mediations.dart';

void main() {
  // The main method runs the app that was described
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // The app consists of a tree of widgets, of which this is the root.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditations',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Meditations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // The homepage of the app, which also creates and holds the state.
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // The variables used to describe the state.
  int _bookNr = 0;
  int _sectionNr = 0;
  String _text = (Meditations.getFirst() as BookSectionText).text;

  // Functions to show the state variables on the screen.
  String getShowText() {
    return _text;
  }

  int getShowBookNr() {
    // The screen should book and section numbers starting with 1 instead of 0.
    return _bookNr + 1;
  }

  int getShowSectionNr() {
    return _sectionNr + 1;
  }

  // Functions to navigate the text of Meditations and update the state based on UI interaction.
  void _first() {
    // The call to setState makes the Flutter framework aware of the state changes.
    // It will ensure that the build method below will be rerun.
    setState(() {
      BookSectionSearchResult result = Meditations.getFirst();
      if (result is BookSectionText) {
        _text = result.text;
        _bookNr = result.bookNr;
        _sectionNr = result.sectionNr;
      }
    });
  }

  void _previous() {
    setState(() {
      BookSectionSearchResult result =
          Meditations.getPreviousSection(_bookNr, _sectionNr);
      if (result is BookSectionText) {
        _text = result.text;
        _bookNr = result.bookNr;
        _sectionNr = result.sectionNr;
      }
    });
  }

  void _next() {
    setState(() {
      BookSectionSearchResult result =
          Meditations.getNextSection(_bookNr, _sectionNr);
      if (result is BookSectionText) {
        _text = result.text;
        _bookNr = result.bookNr;
        _sectionNr = result.sectionNr;
      }
    });
  }

  void _last() {
    setState(() {
      BookSectionSearchResult result = Meditations.getLast();
      if (result is BookSectionText) {
        _text = result.text;
        _bookNr = result.bookNr;
        _sectionNr = result.sectionNr;
      }
    });
  }

  // Handles the action of the bottom navigation bar on screen.
  void _onBottomNavTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          {
            _first();
          }
          break;

        case 1:
          {
            _previous();
          }
          break;

        case 2:
          {
            _next();
          }
          break;

        case 3:
          {
            _last();
          }
          break;

        default:
          {
            _first();
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called.
    // It contains a nested widget with a app bar on top, a scrollable text area in the middle, and a navigation bar at the bottom.
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${widget.title} Book ${getShowBookNr()} Section ${getShowSectionNr()}'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Expanded(
                flex: 1,
                child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(getShowText())))),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.first_page),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_before),
            label: 'Previous',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: 'Next',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.last_page),
            label: 'Last',
          ),
        ],
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
