import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            title: const Column(
              children: [
                Text(
                  '랭킹 1위',
                  style: TextStyle(color: Color(0xFF868686), fontSize: 12),
                ),
                Text(
                  '베스트 리뷰어',
                  style: TextStyle(color: Color(0xFF1D1D1D), fontSize: 15),
                ),
              ],
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            profile(),
            const SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 20,
              color: Colors.grey.withOpacity(0.2),
            ),
            ratingList(),
            userProfile(),
            footerText(),
            const SizedBox(
              height: 20,
            ),
            comments(),
            const Divider(
              thickness: 20,
              color: Color.fromARGB(255, 230, 225, 225),
            )
          ],
        ),
      ),
    );
  }

  Widget profile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage("assets/cat1unframe.png"),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Name01',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/king.png"),
            ),
            const Text(
              "골드",
              style: TextStyle(color: Color(0xFFFFD233)),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "조립컴 업체를 운영하며 리뷰를 작성합니다.",
              style: TextStyle(color: Color(0xFF868686)),
            ),
          ),
        )
      ],
    );
  }

  Widget ratingList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  '작성한 리뷰 ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  '총 35개',
                  style: TextStyle(color: Color(0xFF616161)),
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
                  value: '최신순',
                  items: <String>['최신순'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )),
          ],
        ),
        const Divider(
          color: Color(0xFFF0F0F0),
        ),
        Column(
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
                        child: Column(children: [
                          SizedBox(
                            width: 110,
                            height: 110,
                            child: Image.asset(
                              'assets/amd.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ])),
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
                        'AMD 라이젠 5 5600X 버미어\n정품 멀티팩',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            const Icon(Icons.star,
                                color: Color(0xFFFFD233), size: 30),
                          const Icon(Icons.star,
                              color: Color(0xFFF0F0F0), size: 30),
                          const Text(
                            '4.07',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: Color(0xFFF0F0F0),
        ),
      ]),
    );
  }

  Widget userProfile() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/cat1unframe.png")),
          const SizedBox(
            width: 3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Name01",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    const Icon(Icons.star, color: Color(0xFFFFD233), size: 13),
                  const Icon(Icons.star, color: Color(0xFFF0F0F0), size: 13),
                  const Text(
                    '2022.12.09',
                    style: TextStyle(
                        color: Color.fromARGB(133, 174, 170, 170),
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {}, child: Image.asset("assets/save.png")),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget footerText() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 18.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              '  “가격 저렴해요”   ',
              style: TextStyle(color: Color(0xFF868686), fontSize: 12),
            ),
            Text(
              '  “CPU온도 고온”  ',
              style: TextStyle(color: Color(0xFF868686), fontSize: 12),
            ),
            Text(
              '  “서멀작업 가능해요”  ',
              style: TextStyle(color: Color(0xFF868686), fontSize: 12),
            ),
            Text(
              '  “게임 잘 돌아가요”  ',
              style: TextStyle(color: Color(0xFF868686), fontSize: 12),
            ),
          ]),
        ),
      ],
    );
  }

  Widget comments() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/lightning.png"),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객\n님들에게도 추천 가능한 제품인 듯 합니다.",
                style: TextStyle(color: Color(0xFF616161)),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/lightning.png",
                  color: const Color(0xFFD7D7D7),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 \n느낌 까지는 아닙니다.",
                style: TextStyle(color: Color(0xFF616161)),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/review1.png"),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/review2.png"),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/review3.png"),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFF0F0F0),
          ),
          Row(
            children: [
              SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/message.png")),
              const Text(
                "댓글 달기..",
                style: TextStyle(color: Color(0xFF616161)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
