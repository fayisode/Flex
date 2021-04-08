class EventTripListData {
  EventTripListData(
      {this.images,
      this.titleTxt = '',
      this.location = "",
      this.amount = 1.8,
      this.dest,
      this.description,
      this.departDate,
      this.retDate,
      this.stops});
  List<String> images;
  String titleTxt;
  String location;
  String description;
  String dest;
  double amount;
  DateTime departDate;
  DateTime retDate;
  String stops;

  static List<EventTripListData> hotelList = <EventTripListData>[
    EventTripListData(
      images: [
        "https://images.pexels.com/photos/1134176/pexels-photo-1134176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/2869215/pexels-photo-2869215.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
      ],
      titleTxt: "Rwanda Lounge",
      location: "Rwanda",
      dest: "Rwanda",
      description:
          "Dignissimos laudantium sed. Neque dolorum ullam quos sit excepturi. Ut aut ut aut nulla consequatur voluptas et. Sed cum ut vero omnis enim esse error. Optio ipsam possimus repellendus placeat aliquid aut sapiente hic consequatur. Non libero perferendis sunt hic delectus id sunt a.",
      amount: 10000,
      departDate: DateTime.now(),
      retDate: DateTime.now(),
      stops: "Lagos",
    ),
    EventTripListData(
        images: [
          "https://images.pexels.com/photos/2607113/pexels-photo-2607113.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          "https://images.pexels.com/photos/2440856/pexels-photo-2440856.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
        ],
        departDate: DateTime.now(),
        retDate: DateTime.now(),
        dest: "Lagos",
        description:
            "Dolor aut molestias ut ut minima laudantium facilis dolor unde.",
        location: "Croatia",
        amount: 2333,
        stops: "American Samoa",
        titleTxt: "Hamill Stream"),
    EventTripListData(
        images: [
          "https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          "https://images.pexels.com/photos/2440856/pexels-photo-2440856.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
        ],
        departDate: DateTime.now(),
        retDate: DateTime.now(),
        dest: "Lagos",
        description:
            "Dolor aut molestias ut ut minima laudantium facilis dolor unde.",
        amount: 5321,
        stops: "Klein Shoals",
        titleTxt: "Wiegand Green",
        location: "Guadeloupe")
  ];
}
