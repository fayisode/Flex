import 'package:flutter/widgets.dart';

class Transactions {
  final title;
  final amount;
  DateTime date;
  final type;
  Transactions(
      {@required this.amount,
      @required this.title,
      @required this.date,
      @required this.type});
  static List<Transactions> transList = <Transactions>[
    Transactions(
      amount: "300000",
      title: "Birthday Party",
      date: DateTime.now(),
      type: "Events",
    ),
    Transactions(
      amount: "37000",
      title: "Linked Place",
      date: DateTime.now(),
      type: "Flex",
    ),
    Transactions(
      amount: "230000",
      title: "Sport",
      date: DateTime.now(),
      type: "Trip",
    ),
    Transactions(
      amount: "700000",
      title: "Enjoyment",
      date: DateTime.now(),
      type: "Trip",
    ),
    Transactions(
      amount: "30000",
      title: "Look Out Party",
      date: DateTime.now(),
      type: "Flex",
    ),
    Transactions(
      amount: "200000",
      title: "Party",
      date: DateTime.now(),
      type: "Flex",
    ),
    Transactions(
      amount: "230000",
      title: "Sport",
      date: DateTime.now(),
      type: "Events",
    ),
    Transactions(
      amount: "700000",
      title: "Enjoyment",
      date: DateTime.utc(2021, 3, 2),
      type: "Events",
    ),
    Transactions(
      amount: "30000",
      title: "Look Out Party",
      date: DateTime.utc(2021, 3, 2),
      type: "Flex",
    ),
    Transactions(
      amount: "200000",
      title: "Party",
      date: DateTime.utc(2021, 3, 2),
      type: "Stash",
    ),
    Transactions(
      amount: "230000",
      title: "Sport",
      date: DateTime.utc(2021, 2, 2),
      type: "Stash",
    ),
    Transactions(
      amount: "700000",
      title: "Enjoyment",
      date: DateTime.utc(2021, 2, 2),
      type: "Stash",
    ),
    Transactions(
      amount: "30000",
      title: "Look Out Party",
      date: DateTime.utc(2021, 2, 2),
      type: "Stash",
    ),
    Transactions(
      amount: "200000",
      title: "Party",
      date: DateTime.utc(2021, 2, 2),
      type: "Trip",
    ),
  ];
}
