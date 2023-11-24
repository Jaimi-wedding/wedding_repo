import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jaimi's wedding",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/wedding': (context) => const Wedding(),
        '/mehandi': (context) => const MyHomePage(),
        '/english_invite': (context) => const InvitationCard(),
        '/lagan': (context) => const JustMarriage(),
        '/lagnotsav': (context) => const WeddingCard(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/welcome.pdf',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/mehandi.pdf',
      ),
    );
  }
}

class Wedding extends StatelessWidget {
  const Wedding({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/wedding.pdf',
      ),
    );
  }
}

class InvitationCard extends StatelessWidget {
  const InvitationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/english_invitation.pdf',
      ),
    );
  }
}

class JustMarriage extends StatelessWidget {
  const JustMarriage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/marriage.pdf',
      ),
    );
  }
}

class WeddingCard extends StatelessWidget {
  const WeddingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SfPdfViewer.asset(
        'assets/lagnotsav.pdf',
      ),
    );
  }
}
