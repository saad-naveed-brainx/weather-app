import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    AppConstants.font12Px,
                                  ),
                                  child: Column(
                                    children: [
                                      Text('14:00'),
                                      Text('32°'),
                                      Icon(Icons.sunny),
                                    ],
                                  ),
                                ),
                              ),
}