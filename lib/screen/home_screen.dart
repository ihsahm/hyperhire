import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:ihsan_ahmed_ecommerce/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 230, 227, 227),
              offset: Offset(0, 1.0),
              blurRadius: 1.0,
            )
          ]),
          child: AppBar(
            title: const Text(
              'LOGO',
              style: TextStyle(color: Color(0xFF5D5FEF)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            search(),
            const SizedBox(
              height: 20,
            ),
            carouselSlider(),
            const SizedBox(
              height: 20,
            ),
            itemTitle(),
            const SizedBox(
              height: 5,
            ),
            itemList(),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 20,
              color: Colors.grey.withOpacity(0.2),
            ),
            catList(),
            footer(),
            Container(
              height: 10,
              color: Colors.grey.withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: GradientOutlineInputBorder(
              width: 2.0,
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  colors: [Color(0xFF3C41BF), Color(0xFF74FBDE)])),
          labelText: '검색어를 입력하세요',
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xFF3C41BF),
          ),
        ),
      ),
    );
  }

  Widget carouselSlider() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: AnotherCarousel(
        images: const [
          AssetImage("assets/carousel_1.png"),
          AssetImage("assets/carousel_2.png"),
          AssetImage("assets/carousel_3.png"),
          AssetImage("assets/carousel_4.png")
        ],
        dotSize: 3.0,
        autoplayDuration: const Duration(seconds: 3),
        animationDuration: const Duration(seconds: 1),
        dotSpacing: 15.0,
        dotColor: Colors.white70,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
      ),
    );
  }

  Widget itemTitle() {
    return const ListTile(
      title: Text(
        '제일 핫한 리뷰를 만나보세요',
        style:
            TextStyle(color: Color.fromARGB(190, 113, 113, 129), fontSize: 13),
      ),
      subtitle: Text(
        '리뷰️ 랭킹⭐top 3',
        style: TextStyle(fontSize: 20),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Widget itemList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF868686)),
                    borderRadius: BorderRadius.circular(10)),
                height: 130,
                width: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Image.asset(
                          'assets/crown1.png',
                        ),
                      ),
                      Image.asset(
                        'assets/tv1.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LG전자 스탠바이미 27ART10AKPL (스탠',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    ' • 면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요.배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(' • 스탠바이미는 사랑입니다!️'),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Color(0xFFFFD233), size: 20),
                      Text(
                        '4.89',
                        style: TextStyle(color: Color(0xFFFFD233)),
                      ),
                      Text(
                        ' (216)',
                        style: TextStyle(
                            color: Color.fromARGB(193, 134, 134, 134)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'LG전자',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '편리성',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF868686)),
                    borderRadius: BorderRadius.circular(10)),
                height: 130,
                width: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Image.asset(
                          'assets/crown2.png',
                        ),
                      ),
                      Image.asset(
                        'assets/tv2.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LG전자  울트라HD 75UP8300KNA (스탠드)',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    ' • 화면 잘 나오고... 리모컨 기능 좋습니다.',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    ' • 넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Color(0xFFFFD233), size: 20),
                      Text(
                        '4.36',
                        style: TextStyle(color: Color(0xFFFFD233)),
                      ),
                      Text(
                        ' (136)',
                        style: TextStyle(
                            color: Color.fromARGB(193, 134, 134, 134)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'LG전자',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '고화질',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF868686)),
                    borderRadius: BorderRadius.circular(10)),
                height: 130,
                width: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Image.asset(
                          'assets/crown3.png',
                        ),
                      ),
                      Image.asset(
                        'assets/tv3.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    ' • 반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    ' • 중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Color(0xFFFFD233), size: 20),
                      Text(
                        '3.98',
                        style: TextStyle(color: Color(0xFFFFD233)),
                      ),
                      Text(
                        ' (98)',
                        style: TextStyle(
                            color: Color.fromARGB(193, 134, 134, 134)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '라익미',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '가성비',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget catList() {
    final catList = [
      {
        'image': 'assets/cat2.png',
        'name': 'Name02',
      },
      {
        'image': 'assets/cat3.png',
        'name': 'Name03',
      },
      {
        'image': 'assets/cat4.png',
        'name': 'Name04',
      },
      {
        'image': 'assets/cat5.png',
        'name': 'Name05',
      },
      {
        'image': 'assets/cat6.png',
        'name': 'Name06',
      },
      {
        'image': 'assets/cat7.png',
        'name': 'Name07',
      },
      {
        'image': 'assets/cat8.png',
        'name': 'Name08',
      },
      {
        'image': 'assets/cat9.png',
        'name': 'Name09',
      },
      {
        'image': 'assets/cat10.png',
        'name': 'Name10',
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 10),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              '골드 계급 사용자들이예요',
              style: TextStyle(
                  color: Color.fromARGB(190, 113, 113, 129), fontSize: 13),
            ),
            subtitle: Text(
              '베스트 리뷰어🏆Top10',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 180,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                          child: Image.asset(
                            'assets/king.png',
                          ),
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/cat1.png'),
                          radius: 40,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Name01',
                            style: TextStyle(
                                color: Color(0xFF616161), fontSize: 17))
                      ],
                    ),
                    for (var cat in catList)
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                cat['image'].toString(),
                              ),
                              radius: 40,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              cat['name'].toString(),
                              style: const TextStyle(
                                  color: Color(0xFF616161), fontSize: 17),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            'LOGO Inc.',
            style: TextStyle(
                color: Color(0xFF868686), fontWeight: FontWeight.w500),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "회사 소개",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "|",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "인재 채용",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "|",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "기술 블로그",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "|",
              style: TextStyle(color: Color(0xFF868686)),
            ),
            Text(
              "리뷰 저작권",
              style: TextStyle(color: Color(0xFF868686)),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Row(
              children: [
                Icon(
                  Icons.send,
                  color: Color(0xFFC8C8C8),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "review@logo.com",
                  style: TextStyle(color: Color(0xFF868686)),
                ),
              ],
            ),
            SizedBox(
                width: 60.0,
                height: 25.0,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  itemHeight: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  style: const TextStyle(fontSize: 10, color: Colors.black),
                  value: 'KOR',
                  items: <String>['KOR'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 14.0, left: 12.0, right: 12.0),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            "@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
            style: TextStyle(color: Color(0xFF868686)),
          ),
        ),
      ]),
    );
  }
}
