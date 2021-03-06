# everyscore-front-end
프론트앤드 개발자 분들이 작업하신 결과물을 올리는 공간입니다.


[인텔리제이 설치방법]
==================

>자바 버전 8
>스프링부트 버전 2.4.8
>그레이들 버전 6.9

## 1. jdk8 설치

* 오라클 링크 : https://www.oracle.com/java/technologies/javase-downloads.html

* 링크를 열고, 스크롤을 내리면 아래와 같음. [Java SE 8] 의 [JDK Download] 클릭
<img src="/img/oracle.png" width="500px" height="350px"></img>

* 현재는 8u301버전임. 각자의 os에 맞게 다운로드를 클릭함.

* 팝업창에 체크 후, 다운로드 한번 더 클릭

<img src="/img/oracle2.png" width="500px" height="350px"></img>

* 로그인 페이지로 넘어가게 됨 -> 계정 만들기 -> 이메일 인증

* 이후 로그인하면 바로 설치 시작

* 설치된 실행파일을 클릭해서 프로그램 설치


## 2. 인텔리제이 설치

* jetbrains 링크 : https://www.jetbrains.com/ko-kr/idea/download/#section=windows

* 커뮤니티 버전을 각자의 os에 맞게 다운로드 (시간이 좀 걸립니당)

* 다운로드된 실행파일 클릭

* 계속 next를 누르다가 옵션 설정이 나오면 아래와 같이 체크
<img src="/img/jetbrains.png" width="500px" height="350px"></img>

* 이후 계속 next를 눌러 설치 (시간이 좀 걸립니당)


## 3. 스프링부트 프로젝트 설치

* 스프링 이니셜라이저 링크 : https://start.spring.io/

* 아래와 같이 Gradle Project/ Java/ 2.4.9/ Jar/ 8 에 체크
우측의 의존성은 [spring web]을 add함.
<img src="/img/spring.png" width="700px" height="500px" ></img>

* 하단의 generate 클릭

* 원하는 위치에 압축을 풀어줌 (demo라는 이름으로 되어있을것임)

-------------------------------------------------------------------------------

    <프로젝트 열기>
    - 인텔리제이를 처음 열었을 때 나오는 팝업창 두 개에 대해, agree와 don't send 체크

    - open을 클릭해 아까의 demo를 열어줌.

------------------------------------------------------------------------------

### <프로젝트 실행>
- 프로젝트 실행 시에 src>main>java>com>example>demo 내부에 java 파일이 있습니다.

- 파일을 열어보면, main 함수가 있습니다.
  아직 jdk 경로설정을 해주지 않았기에, 상단에 "Project JDK is not defined"는 메시지가 출력됩니다.

- 메시지 우측에 "Setup SDK"를 클릭해 "ADD SDK"->"JDK..."로 이동합니다.  
  <img src="/img/jdk.png" width="500px" height="350px"></img>

- jdk가 저장된 위치를 찾아 jdk 폴더를 선택해 ok를 클릭합니다.
  보통 "C:Program Files\Java" 내부에 위치합니다.
  <img src="/img/jdk2.png" width="500px" height="350px"></img>

- gradle 프로젝트로 인식되어, 오류없이 gradle이 정상 설치되면 완료입니다.
<img src="/img/gradle.png" width="500px" height="350px"></img>

-- gradle이 바로 다운로드되지 않을 수 있습니다. 상단이나 우측 하단에 gradle 관련 메시지가 열리면 클릭해 무조건 trust project를 체크합니다.

<img src="/img/reference2.png" width="200px" height="50px"></img>

기존의 자바파일이 위와 같은 기호의 클래스파일로 변경되었다면 맞게 된겁니다.

- 이제 그 클래스파일에서 마우스 우클릭 run을 누르시면 됩니다.
 (저희 프로젝트의 경우, EveryscoreApplication)

- 하단이 아래처럼 작동할 경우, 서버가 돌아가는 중입니다.
 <img src="/img/reference1.png" width="500px" height="350px"></img>

- 인터넷 주소창에 "localhost:8080"을 입력하면 됩니다.

--------------------------------------------------------------------------

### <Everyscore 프로젝트 열기>
저희의 작업 브랜치는 dev입니다.
인텔리제이는 깃허브와 연동 가능합니다.
저는 깃허브 데스크탑 이라는 gui를 사용해서, 이것을 기준으로 설명드리겠습니다.

백엔드가 사용하는 everyscore 레포지토리를 clone하시면,
컴퓨터 문서 폴더에 GitHub폴더->everyscore폴더가 생성됩니다.
(C:\Users\com\Documents\GitHub\everyscore)

깃허브 gui의 dev 브랜치가 열려있는 상태에서 
이 everyscore 폴더를, 앞서 demo 폴더를 열었던 것처럼 open 해주시면 됩니다.


수정을 하시고싶으시면,

<img src="/img/github.png" width="500px" height="350px"></img>

인텔리제이에서 깃을 인식해서 설치하라는 안내가 생길 때,
그대로 다운받고 설치해주시면 됩니다.
설치가 완료되면, 인텔리제이에서 수정사항이 있을 때마다 github gui에서 이를 캐치해낼 겁니다.

------------------------------------------------------------------------------

**중요 안내**
저희가 시큐리티가 완료되지 않아 우선 그대로 api 작업을 시작했습니다.
주석처리로 로그인이 필요하지 않은 api 권한 설정을 만들어놓겠습니다.
이후 api 테스트가 필요하실 때 주석처리된 부분을 풀고 사용하시면 될 것 같습니다.

config->security 폴더 내부에 WebSecurityConfig 자바파일 내에 35번째 줄에 주석으로 설명해놓았습니다.



