import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(size),
              WhatsYourMindRow(size),
              cizgi(size),
              Padding(
                padding: EdgeInsets.only(
                  top: size.width / 25,
                  left: size.width / 25,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: icon_and_text(
                          'Live', Icons.video_camera_back, Colors.red),
                    ),
                    Expanded(
                      child: icon_and_text(
                          'Photo', Icons.photo_library, Colors.green),
                    ),
                    Expanded(
                      child: icon_and_text(
                          'Room', Icons.video_camera_back, Colors.purpleAccent),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.width / 55),
                child: kalinCizgi(size),
              ),
              Container(
                width: size.width,
                height: size.height / 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width / 25),
                        child: Container(
                          width: size.width / 24,
                          height: size.height / 13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.lightBlue,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: SizedBox(
                            width: size.width / 15,
                            height: size.height / 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.video_camera_back,
                                  size: size.width / 13,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width / 45),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Creat',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: size.width / 25,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                      Text(
                                        'Room',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: size.width / 25,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            person_circule_container(
                                size, 'assets/images/1(1).png'),
                            person_circule_container(
                                size, 'assets/images/2(1).png'),
                            person_circule_container(
                                size, 'assets/images/3(1).png'),
                            person_circule_container(
                                size, 'assets/images/4(1).png'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 500,
              ),
              kalinCizgi(size),
              SizedBox(
                width: size.width,
                height: size.height / 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      story(
                        size,
                        true,
                        'assets/images/5.png',
                        'assets/images/1(1).png',
                        '',
                        Colors.white,
                      ),
                      story(
                        size,
                        false,
                        'assets/images/izmir-1.png',
                        'assets/images/4(1).png',
                        'James',
                        Colors.white,
                      ),
                      story(
                        size,
                        false,
                        'assets/images/istanbul-aa-1924304.png',
                        'assets/images/3(1).png',
                        'Robert',
                        Colors.white,
                      ),
                      story(
                        size,
                        false,
                        'assets/images/56a8dc0a942d8(1).png',
                        'assets/images/2(1).png',
                        'Michael',
                        Colors.white,
                      ),
                      story(
                        size,
                        false,
                        'assets/images/56a8dc0a942d8(1).png',
                        'assets/images/1(1).png',
                        'William',
                        Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              kalinCizgi(size),
              post(
                size,
                'assets/images/5.png',
                'Marcus Ng',
                '58',
                'Check this post',
                'assets/images/56a8dc0a942d8(1).png',
                '1255',
                '18',
                '5',
              ),
              post(size, 'assets/images/1(1).png', 'Richard', '10', 'Mood',
                  'assets/images/istanbul-aa-1924304.png', '125', '1', '2'),
              post(size, 'assets/images/3(1).png', 'William Gole', '25', 'Hi!',
                  'assets/images/izmir-1.png', '166', '1', '7'),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox post(Size size, String profileImg, String name, String time,
      String text, String postUrl, String like, String comment, String share) {
    return SizedBox(
      width: size.width,
      height: size.height / 1.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width / 25,
                  top: size.height / 80,
                ),
                child: personCirculeLittle(
                  size,
                  profileImg,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width / 45, top: size.height / 85),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width / 45),
                    child: Row(
                      children: [
                        Text(
                          '$time\m .',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.grey.shade600,
                          size: size.width / 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: size.width / 25,
                  top: size.height / 80,
                ),
                child: const Icon(Icons.more_horiz),
              )
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(left: size.width / 25, top: size.width / 80),
            child: Text(
              text,
              style: TextStyle(
                fontSize: size.width / 26,
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(postUrl),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width / 45),
                child: Container(
                  width: size.width / 12,
                  height: size.width / 12,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/like.png',
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                like,
                style: TextStyle(
                    fontSize: size.width / 25, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Text(
                '$comment Comments',
                style: TextStyle(
                  fontSize: size.width / 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width / 25,
                  right: size.width / 25,
                ),
                child: Text(
                  '$share Shares',
                  style: TextStyle(
                    fontSize: size.width / 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          cizgi(size),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: postAltindaIconlar(
                    size, 'Like', Icons.thumb_up_alt_outlined),
              ),
              Expanded(
                flex: 1,
                child: postAltindaIconlar(
                    size, 'Comment', Icons.mode_comment_outlined),
              ),
              Expanded(
                flex: 1,
                child: postAltindaIconlar(size, 'Share', Icons.share),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding postAltindaIconlar(Size size, String text, IconData iconData) {
    return Padding(
      padding: EdgeInsets.only(left: size.width / 35, top: size.height / 80),
      child: Row(
        children: [
          Icon(
            iconData,
            size: size.width / 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width / 80),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: size.width / 28,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container kalinCizgi(Size size) {
    return Container(
      width: size.width,
      height: size.height / 65,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
    );
  }

  Padding story(Size size, bool control, String imgUrl, String profileImgUrl,
      String text, Color color) {
    return Padding(
      padding: EdgeInsets.only(left: size.width / 25),
      child: Stack(
        children: [
          Container(
            width: size.width / 3.2,
            height: size.height / 3.5,
            decoration: const BoxDecoration(
              color: Color(0xff2f5a78),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Image.asset(
              width: size.width / 3.2,
              height: size.height / 4,
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            left: size.width / 50,
            child: Container(
              width: size.width / 10,
              height: size.width / 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: control ? Colors.white : Colors.blueAccent,
              ),
              child: control
                  ? Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: size.width / 13,
                      ),
                    )
                  : Container(
                      width: size.width / 11,
                      height: size.height / 11,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(profileImgUrl),
                        ),
                      ),
                    ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                control ? 'Add to Story' : text,
                style: TextStyle(
                  fontSize: size.width / 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding person_circule_container(Size size, String imgUrl) {
    return Padding(
      padding: EdgeInsets.only(left: size.width / 25),
      child: Stack(
        children: [
          Container(
            width: size.width / 8,
            height: size.width / 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 2,
            child: Container(
              width: size.width / 30,
              height: size.width / 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row icon_and_text(String text, IconData icon, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }

  Padding cizgi(Size size) {
    return Padding(
      padding: EdgeInsets.only(
          left: size.width / 25, right: size.width / 25, top: size.width / 60),
      child: Container(
        width: size.width,
        height: size.height / 1050,
        color: Colors.grey.shade300,
      ),
    );
  }

  Row WhatsYourMindRow(Size size) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: size.width / 25,
            top: size.width / 25,
          ),
          child: personCirculeLittle(size, 'assets/images/5.png'),
        ),
        //Text('What\'s your mind?'),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            width: size.width / 1.2,
            height: size.height / 20,
            child: TextField(
              onChanged: (text) {},
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'What\'s on your mind?',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container personCirculeLittle(Size size, String imgUrl) {
    return Container(
      width: size.width / 12,
      height: size.width / 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.orange,
        image: DecorationImage(
          image: AssetImage(
            imgUrl,
          ),
        ),
      ),
    );
  }

  Row appBar(Size size) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: size.width / 25,
            top: size.height / 40,
          ),
          child: Row(
            children: [
              Text(
                'facebook',
                style: TextStyle(
                  fontSize: size.width / 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: size.width / 3,
              ),
              Container(
                width: size.width / 10,
                height: size.width / 10,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.search,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width / 35),
                child: Container(
                  width: size.width / 10,
                  height: size.width / 10,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width / 11,
                      height: size.width / 11,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/580b57fcd9996e24bc43c526.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
