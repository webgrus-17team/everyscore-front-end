<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
    <title>ES 점수집계</title>
    <link rel="stylesheet" href="css/top.css">
    <style>
        #Main_Info{
          display: grid;
          grid-template-columns: 1fr 500px 300px 1fr;
        }
        /* 페이지에서 오른쪽 right info, 왼쪽은 left info로 함 */
        #right_info{
          margin: 50px;
          margin-bottom: 0px;
        }
        /* 평균, 중간값 그래프 그룹을 stack */
        .stack_graph{
           margin:0px;
           width: 190px;
        }
       .average_stack1, .midvalue_stack2{
          margin: 0 0 20px;
          height: 40px;
          background-color: #ccc;
          border-radius:40px;
          font-size:13px;
        }
        .stack_graph span{
          display:block;
          padding: 0 10px;
          height: 40px;
          line-height: 40px;
          text-align: center;
          border-radius: 40px;
          box-sizing: border-box;
          color: white;
        }
        /* 색상 css */
        .average_stack1 span{background: palevioletred; animation:stack1 2s 1;}
        .midvalue_stack2 span{background: mediumpurple; animation:stack2 2s 1;}
        @keyframes stack1{
            0% {width:0; color: rgba(255,255,255,0);}
            40% {color: rgba(255,255,255,1);}
            100% {width: 47.2%;}
        }
        @keyframes stack2{
            0% {width:0; color: rgba(255,255,255,0);}
            40% {color: rgba(255,255,255,1);}
            100% {width: 41%;}
        }
        /* 여기부터 난이도 그래프 */
        .ranking{
            position: absolute;
            z-index:2;
            text-align: center;
            margin-top: 25px;
        }
        .myrank{
            font-size: 27px;
        }
        strong{
          font-family: 'Poor Story', cursive;
          font-size: 27px;
        }
        h1 {
          color: whitesmoke;
          margin: 0px;
          padding: 50px;
          text-align: center;
          color: white;
          /* 그라데이션 코드 시작 */
          background: #01579b;
          background: -webkit-linear-gradient(left, #01579b 0%, #80adc9 100%);
          background: -o-linear-gradient(left, #01579b 0%, #80adc9 100%);
          background: linear-gradient(to right, #01579b 0%, #80adc9 100%);
          filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#01579b', endColorstr='#80adc9',GradientType=1 );
          /* 그라데이션 코드 끝 */
        }
    </style>
  </head>
  <body>
    <nav class="everyscore">

      <div class="everyscore_logo">
        <a href="main3Page.jsp"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
      </div>
      <ul class="everyscore_menu">
        <li class="everyscore_item"><a href="main3Page.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
        <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
        <li class="everyscore_item"><a href="loginPage.jsp"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
      </ul>
    </nav>

    <h1><strong>점수 집계 결과</strong></h1><br><br>

    <div id="Main_Info">
        <!-- grid-area로 한걸 그냥 세로줄로 4칸 나눠서 grid-columns로 바꿈  -->
        <div></div>

        <div id="left_info">
          <div class="main_graph">
            <canvas id="Score_Chart" width="15px" height="14px"></canvas>
          </div>
        </div>

        <div id="right_info">
          <div class="stack_graph">
              <div class="average_stack1">
                  <span style="width:47.2%;" id="average">평균: 47.2</span>
              </div>
              <div class="midvalue_stack2">
                  <span style="width:41%;" id="midvalue">중간값: 41</span>
              </div>
          </div>
          <div class="level_graph">
              <canvas id="Donut_Chart" width="10px" height="10px"></canvas>
          </div>
          <div class="ranking">
              <img src="img/free-icon-trophy-2164820.png" title="트로피" height=30, width=30>
              <span class="myrank">내 등수 : 10 / 31 </span>
          </div>
        </div>
        <div></div>
    </div>
  </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>

  new Chart(document.getElementById('Score_Chart').getContext('2d'), {
    type: 'bar',
    data: {
      labels: ['0~10','11~20','21~30','31~40','41~50','51~60','61~70','71~80','81~90','91~100'],
      datasets: [{
          label: '인원 수',
          bordercolor:['#fff'],
          borderWidth: 3,
          backgroundColor: [
              '#c5d9ed',
              '#9ec2e6',
              '#72aee6',
              '#4f94d4',
              '#3582c4',
              '#2271b1',
              '#135e96',
              '#0a4b78',
              '#043959',
              '#01263a'
          ],
          data: [15,1,3,11,20,9,7,7,1,1],
      }]
    },
  });

  new Chart(document.getElementById("Donut_Chart"),{
    type: 'doughnut',
    data: {
      labels: ["매우쉬움", "쉬움", "보통", "어려움", "매우어려움"],
      datasets: [{
          label: '난이도',
          data: [3,7,10,1,3],
          backgroundColor: [
              'mediumseagreen',
              'mediumaquamarine',
              'gold',
              'lightsalmon',
              'lightcoral',
          ]
      }]
    }
  });

</script>
