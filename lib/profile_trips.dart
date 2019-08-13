import 'package:flutter/material.dart';

import 'profile_appbar.dart';
import 'profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileAppBar("Profile"),
        ProfilePlacesList()
      ],
    );
  }
}
