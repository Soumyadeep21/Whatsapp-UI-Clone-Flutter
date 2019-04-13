class chat_model {
  String name, message, imageurl, time;
  chat_model({this.name, this.message, this.imageurl, this.time});
}

List<chat_model> model = [
  chat_model(
      name: "Soumyadeep",
      imageurl: null,
      message: "Flutter is Awesome",
      time: "12:05"),
  chat_model(
      name: "Shroud",
      imageurl:
          "https://i.dailymail.co.uk/i/newpix/2018/08/14/14/4F16C0B200000578-6059167-Shroud_is_a_former_professional_CS_GO_player_and_is_now_a_full_t-a-7_1534254394942.jpg",
      message: "PUBG is Awesome",
      time: "10:30"),
  chat_model(
      name: "Messi",
      imageurl:
          "https://sportshub.cbsistatic.com/i/r/2018/09/02/765be76a-b5d0-4876-9dec-012fc3233d9d/thumbnail/770x433/b9bbc1b9d341ef59cd2ff9707402abb2/lionel-messi-barcelona.jpg",
      message: "Football is Awesome",
      time: "5:45"),
  chat_model(
      name: "Bill",
      imageurl:
          "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg",
      message: "Tech is Awesome",
      time: "7:29"),
];
