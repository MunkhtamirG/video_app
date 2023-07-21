import 'package:flutter/material.dart';
import 'package:video_app/bloc/bottom_navbar_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final BottomNavbarBloc _bottomNavbarBloc = BottomNavbarBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _bottomNavbarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NavBarItem>(
        stream: _bottomNavbarBloc.itemStream,
        initialData: _bottomNavbarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.home:
              return Container();
            case NavBarItem.favorite:
              return Container();
            case NavBarItem.plus:
              return Container();
            case NavBarItem.search:
              return Container();
            case NavBarItem.profile:
              return Container();
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavbarBloc.itemStream,
        initialData: _bottomNavbarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return Container();
        },
      ),
    );
  }
}
