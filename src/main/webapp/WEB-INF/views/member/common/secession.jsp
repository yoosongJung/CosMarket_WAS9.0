<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/dbb376a4c5.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="../../resources/css/reset.css">
        <link rel="stylesheet" href="../../resources/css/1.main.css">
        <link rel="stylesheet" href="../../resources/css/4_3.secession.css">
        <title>Secession</title>
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
                <table>
                    <tr>
                        <th>마이페이지</th>
                    </tr>
                    <tr>
                        <td><a href="/member/myInfo.do?memberId=${memberId}&memberType=${memberType}">회원정보</a></td>
                    </tr>
                    <tr>
                        <td><a href="../buyer/orderHistory.html">주문내역</a></td>
                    </tr>
                    <tr>
                        <td><a href="../buyer/actHistory.html">내 활동내역</a></td>
                    </tr>
                    <tr>
                        <td style="background-color: white;"><a href="/member/delete.do">회원탈퇴</a></td>
                    </tr>
                </table>
            </div>
            <div id="main_middle">
                <h2><b>회원 탈퇴</b></h2>
                <hr>
                <div class="secessionNotice">
                    <h5>-----회원 탈퇴 시 주의 할 점-----</h5>
                    <p>
                        1. 회원 탈퇴 시 회원전용 웹 서비스 이용이 제한됩니다. <br>
                        2. 재가입을 하더라도 기존에 있던 정보들은 사라집니다.(장바구니, 주문내역, 개인정보 등) <br>
                        3. 회원 탈퇴 후 문의 및 댓글은 삭제되지 않으며, 원하시는 경우 탈퇴 전 삭제 부탁드립니다. <br>
                        4. 이미 결제가 완료 된 상품 및 프리미엄권은 탈퇴로 인해 취소되지 않습니다.
                    </p>
                </div>
                <form action="/member/delete.do" method="post" onsubmit="return bye();">
	                <div class="agree">
	                    <label>비밀 번호</label>
	                    <input type="password" name="memberPw">&nbsp;&nbsp;&nbsp;&nbsp;
	                    <input type="checkbox"> 상기 내용을 숙지하고 동의합니다. <br>
	                    <label class="finalMention"></label>
	                </div>
	                <input type="hidden" name="memberId" value="${sessionScope.memberId }">
	                <input type="hidden" name="memberType" value="${sessionScope.memberType }">
	                <button type="submit" class="finish">회원 탈퇴</button>
                </form>
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
            function bye() {
                const password = document.querySelector("input[type=password]");
                const check = document.querySelector("input[type=checkbox]");
                if(password.value != "" && check.checked == true) {
                    document.querySelector(".finalMention").innerText = "";
                    const answer = confirm("회원 탈퇴를 진행하시겠습니까?");
                    if(answer) {
                        return true;
                    } else {
                        return false;
                    }

                } else {
                    document.querySelector(".finalMention").innerText = "비밀번호 입력 후 동의 체크해주세요";
                    return false;
                }
            }

            document.querySelector("#toTheTop").addEventListener("click", function() {
                document.documentElement.scrollTop = 0;
            })
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>