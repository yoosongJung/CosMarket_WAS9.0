<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/1.main.css">
        <link rel="stylesheet" href="../../resources/css/6.notice.css">
        <link rel="stylesheet" href="../../resources/css/reset.css">
        <script src="https://kit.fontawesome.com/dbb376a4c5.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Notice</title>
    </head>
    <body>
        <header class="sticky-top navbar navbar-expand-lg" style="padding-top: 0px;">
            
            <div class="logo">
                <a class="navbar-brand" href="../../index.jsp"><img src="../../resources/images/main/logo.PNG" alt=""></a>
            </div>
            <div id="nav" class="container-fluid">
                <div id="nav2">
                    <input type="text" placeholder="Search">
                    <button id="navSearch"><i class="fa-solid fa-magnifying-glass" style="color: #f7f7f7;"></i></button>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item" style="margin-top: 13px;"><a href="/memberInfo/register.do">회원가입</a></li>
                        <li class="nav-item" style="margin-top: 13px;"><a href="/memberInfo/login.do">로그인</a></li>
                        <li class="nav-item" style="margin-top: 13px;"><a href="/member/myInfo.do?memberId=${memberId}&memberType=${memberType}">마이페이지</a></li>
                        <li class="nav-item" style="margin-top: 13px;"><a href="./premium.html">프리미엄</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                게시판
                            </a>
                            <ul class="dropdown-menu" style="background-color: skyblue;">
                                <li><a class="dropdown-item" href="/notice/list.do">공지사항</a></li>
                                <li><a class="dropdown-item" href="./QndA.html">Q&A</a></li>
                                <li><a class="dropdown-item" href="./freeBoard.html">자유게시판</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        
        </header>
        <main>
            <div id="main_left">

            </div>
            <div id="main_middle">
                <h2><b>공지 사항</b></h2>
                <hr>
                <div class="search">
                    <input type="text" placeholder="제목을 입력해주세요" style="width: 250px">
                    <button id="findProduct" onclick="findWrite();"><i class="fa-solid fa-magnifying-glass" style="color: blue;"></i></button>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>50</td>
                            <td><button>25일 새벽 3시경 로그인 오류 안내</button></td>
                            <td style="color: rgb(90, 189, 90); font-weight: bold;">관리자</td>
                            <td>2023-05-25</td>
                        </tr>
                        <tr>
                            <td>49</td>
                            <td><button>입금자명OOO님을 찾습니다.번호 불일치</button></td>
                            <td style="color: rgb(90, 189, 90); font-weight: bold;">관리자</td>
                            <td>2023-05-24</td>
                        </tr>
                        <tr>
                            <td>48</td>
                            <td><button>6월 할인행사 제품</button></td>
                            <td style="color: rgb(90, 189, 90); font-weight: bold;">관리자</td>
                            <td>2023-05-24</td>
                        </tr>
                    </tbody>
                </table>
                <nav aria-label="...">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div id="main_right">
                <div>
                    <table>
                        <tr><th>최근 본 상품</th></tr>
                        <tr><td><a href="#"><img src="../../resources/images/main/sidebar_recent1.jpg" alt=""></a><p class="arrow_box">조말론 와일드 블루벨 코롱 30ml<br><br>39,900원</p></td></tr>
                        <tr><td><a href="#"><img src="../../resources/images/main/sidebar_recent2.jpg" alt=""></a><p class="arrow_box">비오템 옴므 아쿠아파워 클렌저 125ml<br><br>15,900원</p></td></tr>
                        <tr><td><a href="#"><img src="../../resources/images/main/sidebar_recent3.jpg" alt=""></a><p class="arrow_box">구찌 길티 뿌르 옴므 오드 뜨왈렛 스프레이 50ml<br><br>106,900원</p></td></tr>
                    </table>
                    <button id="toTheTop" style="font-weight: bold; background-color: #2e95e9; color: white;">top  <i class="fa-solid fa-arrow-up"></i></button>
                </div>
            </div>
        </main>
        <footer class="navbar navbar-expand-lg">
            <div id="footer" class= "container-fluid">
                <div class="logo">
                    <a href="#"><img src="../../resources/images/main/logo.PNG" alt=""></a>
                </div>
                <div class="footer footer1">
                    <ul>
                        <li>회사명 : (주)코스마켓</li>
                        <li>대표이사 : 정유송</li>
                        <li>사업자등록번호 : 12-123-12345</li>
                        <li>주소 : 서울시 종로구 청계빌딩2층</li>
                    </ul>
                </div>
                <div class="footer footer2">
                    <ul>
                        <li><a href="../../admin/companyIntro.html">회사소개</a></li>
                        <li><a href="../../admin/companyHistory.html">회사연혁</a></li>
                        <li><a href="">이용약관</a></li>
                        <li><a href="">개인정보취급방침</a></li>
                    </ul>
                </div>
            </div>
        </footer>
        <script>
            function findWrite() {
                const inputVal = document.querySelector(".search input").value;
                const tr = document.querySelectorAll("#main_middle tbody tr");
                for(var i = 0; i < tr.length; i++) {
                    console.log(tr[i].childNodes);
                    if(!tr[i].childNodes[3].innerText.includes(inputVal)) {
                        tr[i].remove();
                    }
                }
            }

            document.querySelector("#toTheTop").addEventListener("click", function() {
                document.documentElement.scrollTop = 0;
            })
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>