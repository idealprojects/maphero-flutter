// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:maphero/maphero.dart';

import 'page.dart';

class GivenBoundsPage extends ExamplePage {
  const GivenBoundsPage({super.key})
      : super(const Icon(Icons.map_sharp), 'Changing given bounds');

  @override
  Widget build(BuildContext context) {
    return const GivenBounds();
  }
}

class GivenBounds extends StatefulWidget {
  const GivenBounds({super.key});

  @override
  State createState() => GivenBoundsState();
}

class GivenBoundsState extends State<GivenBounds> {
  late MapHeroMapController mapController;

  void _onMapCreated(MapHeroMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: SizedBox(
            width: 300.0,
            height: 200.0,
            child: MapHeroMap(
              token: "OdGd_P8_JF3J52Jc6VqhZgGUwlyb5-xS7OJM",
              styleString: "https://palestine-2024-ideal.maphero.io/style.json",
              onMapCreated: _onMapCreated,
              initialCameraPosition:
                  const CameraPosition(target: LatLng(0.0, 0.0)),
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            await mapController.setCameraBounds(
              west: 5.98865807458,
              south: 47.3024876979,
              east: 15.0169958839,
              north: 54.983104153,
              padding: 25,
            );
          },
          child: const Text('Set bounds to Germany'),
        ),
        TextButton(
          onPressed: () async {
            await mapController.setCameraBounds(
              west: -18,
              south: -40,
              east: 54,
              north: 40,
              padding: 25,
            );
          },
          child: const Text('Set bounds to Africa'),
        ),
      ],
    );
  }
}
