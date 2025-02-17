import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상단 앱바
      appBar: AppBar(
        title: const Text('Drawer Demo'), // 앱바 제목
      ),

      // 사이드 메뉴 (Drawer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // 상단 기본 패딩 제거
          children: [
            // 서랍 상단 헤더 영역
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // 헤더 배경색
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
                children: [
                  // 사용자 아이콘 (원형)
                  CircleAvatar(
                    radius: 30, // 원형 크기
                    backgroundColor: Colors.white, // 배경색
                    child: Icon(
                      Icons.person,
                      size: 35, // 아이콘 크기
                      color: Colors.blue, // 아이콘 색상
                    ),
                  ),
                  SizedBox(height: 10), // 아이콘과 텍스트 간격 조정

                  // 사용자 이름 텍스트
                  Text(
                    '사용자 이름',
                    style: TextStyle(
                      color: Colors.white, // 글자색
                      fontSize: 20, // 글자 크기
                    ),
                  ),

                  // 사용자 이메일 텍스트
                  Text(
                    'user@email.com',
                    style: TextStyle(
                      color: Colors.white, // 글자색
                      fontSize: 14, // 글자 크기
                    ),
                  ),
                ],
              ),
            ),

            // 홈 메뉴 항목
            ListTile(
              leading: const Icon(Icons.home), // 왼쪽 아이콘
              title: const Text('홈'), // 메뉴 제목
              onTap: () {
                Navigator.pop(context); // 서랍 닫기
                // 홈 화면으로 이동하는 로직 추가 가능
              },
            ),

            // 설정 메뉴 항목
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('설정'),
              onTap: () {
                Navigator.pop(context); // 서랍 닫기
                // 설정 화면으로 이동하는 로직 추가 가능
              },
            ),

            // 구분선 추가
            const Divider(),

            // 알림 메뉴 항목 (우측에 배지 추가)
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('알림'),
              trailing: Container(
                padding: const EdgeInsets.all(8), // 배지 내부 여백
                decoration: const BoxDecoration(
                  color: Colors.red, // 배지 배경색
                  shape: BoxShape.circle, // 원형 배지
                ),
                child: const Text(
                  '2', // 알림 개수
                  style: TextStyle(
                    color: Colors.white, // 글자색
                    fontSize: 12, // 글자 크기
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context); // 서랍 닫기
                // 알림 화면으로 이동하는 로직 추가 가능
              },
            ),

            // 로그아웃 메뉴 항목
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('로그아웃'),
              onTap: () {
                Navigator.pop(context); // 서랍 닫기
                // 로그아웃 처리 로직 추가 가능
              },
            ),
          ],
        ),
      ),

      // 본문 영역
      body: const Center(
        child: Text(
          '왼쪽에서 오른쪽으로 스와이프하거나\n앱바의 메뉴 버튼을 눌러보세요',
          textAlign: TextAlign.center, // 중앙 정렬
        ),
      ),
    );
  }
}
