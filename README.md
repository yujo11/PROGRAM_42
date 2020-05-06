## PROGRAM42 (가칭)

### 프로젝트 개요

---

### 목적

- Flutter를 학습한다.
- AOS, IOS 두 플랫폼 모두에서 지원되는 APP를 만드는 것을 목적으로 한다.
- ToDo Application

### 팀원

| Member | GitHub |
|--------|--------|
| yujo [:envelope:](yujo@student.42seoul.kr)           | [YUJO42@github](https://github.com/YUJO42) |
| cbaek [:envelope:](cbaek@student.42seoul.kr)        | [paikwiki@github](https://github.com/paikwiki) |
| seongwpa  [:envelope:](seongwpa@student.42seoul.kr) | [seongwpa@github](https://github.com/seongwpa)

### 개발 환경

- 개발 도구: Flutter, Firebase, NoSQL (추가 예정)
- 협업 도구: github, slack, teamviewer

### 회의록

---

#### 2020.04.23(목)

안건1) 제작할 애플리케이션 변경

- 기존: 터미널 기반의 독서관리 애플리케이션
- 변경: 플러터 기반의 칸반보드 앱

안건2) 학습 기간 설정

- 기간: 4월 24(금) ~ 5월 1일(금) 8일
- 팀원 모두 플러터와 다트(Dart)를 다뤄본 적이 없으므로 학습기간을 갖기로 함
- 학습기간 중에는 특별한 일정이 있는 날을 제외하고 cbaek 의 작업실에 모여 함께 학습 진행

안건3) 학습 참고 자료 수집

- [플러터 공식 웹사이트](https://flutter-ko.dev/)
- [인프런 강좌 - 플러터와 장고로 1시간만에 퀴즈 앱/서버 만들기 [무작정 풀스택]](https://www.inflearn.com/course/%ED%94%8C%EB%9F%AC%ED%84%B0-%EC%9E%A5%EA%B3%A0-%ED%80%B4%EC%A6%88%EC%95%B1-%EC%84%9C%EB%B2%84-%ED%92%80%EC%8A%A4%ED%83%9D/dashboard)
- [유튜브 강좌1 - Flutter Crash Course for Beginners 2020 - Build a Flutter App with Google's Flutter & Dart](https://www.youtube.com/watch?v=x0uinJvhNxI&t)
- [유튜브 강좌2- Flutter 입문. 안드로이드와 iOS 개발을 한 번에](https://www.youtube.com/watch?v=lRbZsBvG9Ig)

#### 2020.05.03(수)

안건 1) 요구사항 정리

**Application Layout** **요구사항**

- APP 내부에 세 개의 Bottom Tab을 적용해 Home, About, Achivement 화면을 만든다.
- ToDo에 Item(할일)을 완료하거나 삭제할 때 "저장", "삭제" 버튼을 통해 저장, 삭제 되게 한다.
- 완료된 목록을 모여서 보여주는 페이지를 만든다.(Achivement Page)
- 추가된 Item의 수정은 없고 추가, 삭제만 가능하게 구현한다.
- Item을 추가할 때 Item을 추가하는 Textfiled와 "추가" 버튼을 제공한다.
- 현재 보고 있는 페이지의 Navigation Bar를 상단에 표시한다.
- Navigation Bar에는 현재 보고 있는 페이지의 이름을 표시한다.
- Item Container에는 추가, 삭제 버튼이 포함 된다.

안건2) Wireframe 작성

**Layout 버전 1.0**

![](https://github.com/YUJO42/PROGRAM_42/blob/master/Layout/Layout_1.0_ver.jpg)

**Layout 버전 1.1**

![](https://github.com/YUJO42/PROGRAM_42/blob/master/Layout/Layout_1.1_ver.jpg)
