# everyscore-front-end
프론트앤드 개발자 분들이 작업하신 결과물을 올리는 공간입니다.

//jdk 경로 설정에 대한 부분이 미흡합니다.
//스프링부트 버전이 일치하지않음에 따른 문제점이 있는지 살펴봐야합니다.
//프로젝트 실행 설명에서 view 파일은 배제되었습니다.
//위 문제는 다른 컴퓨터로 설치 및 실행해보고 보완하겠습니다. (목욜 중으로 완료)

인텔리제이 설치방법
==================

>자바 버전 8
>스프링부트 버전 2.4.8
>그레이들 버전 6.9

# 1. jdk8 설치

* 오라클 링크 : [oracle][oraclelink]
[oraclelink]: https://www.oracle.com/java/technologies/javase-downloads.html

* 링크를 열고, 스크롤을 내리면 아래와 같음. ** [Java SE 8] ** 의 [JDK Download] 클릭
<img src="/img/oracle.png" width="500px" height="350px"></img>

* 현재는 8u301버전임. 각자의 os에 맞게 다운로드를 클릭함.

* 팝업창에 체크 후, 다운로드 한번 더 클릭

* 로그인 페이지로 넘어가게 됨 -> 계정 만들기 -> 이메일 인증

* 이후 로그인하면 바로 설치 시작

* 설치된 실행파일을 클릭해서 프로그램 설치


# 2. 인텔리제이 설치

* jetbrains 링크 : [jetbrains][jetbrainslink]
[jetbrainslink]: https://www.jetbrains.com/ko-kr/idea/download/#section=windows

* 커뮤니티 버전을 각자의 os에 맞게 다운로드 (시간이 좀 걸립니당)

* 다운로드된 실행파일 클릭

* 계속 next를 누르다가 옵션 설정이 나오면 아래와 같이 체크
<img src="/img/jetbrains.png" width="500px" height="350px"></img>

* 이후 계속 next를 눌러 설치 (시간이 좀 걸립니당)


# 3. 스프링부트 프로젝트 설치

* 스프링 이니셜라이저 링크 : [spring][springlink]
[springlink]: https://start.spring.io/

* 아래와 같이 Gradle Project/ Java/ 2.4.9/ Jar/ 8 에 체크
우측의 의존성은 [spring web]을 add함.
<img src="/img/spring.png" width="500px" height="350px" ></img>

* 하단의 generate 클릭

* 원하는 위치에 압축을 풀어줌 (demo라는 이름으로 되어있을것임)

-------------------------------------------------------------------------------

    <프로젝트 열기>
    - 인텔리제이를 처음 열었을 때 나오는 팝업창에 대해, "Do not import settings" 체크

    - open을 클릭해 아까의 demo를 열어줌.

    - gradle 프로젝트로 인식되어, gradle이 정상 설치되면 완료입니다.

------------------------------------------------------------------------------

<프로젝트 실행>
- 프로젝트 실행 시에 src>main>java 내부에 "com."으로 시작하는 폴더가 있습니다.

- 초기에 이미 존재하는 클래스 파일을 열어보면, main 함수가 있습니다.
 (저희 프로젝트의 경우, EveryscoreApplication)

- 그 클래스파일에서 마우스 우클릭 run을 누르시면 됩니다.

- 하단이 아래처럼 작동할 경우, 서버가 돌아가는 중입니다.
 <img src="/img/reference1.png" width="500px" height="350px"></img>

- chrome의 주소창에 "localhost:8080"을 입력하면 됩니다.





