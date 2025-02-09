<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/preset/preset.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/communityFourm/communityForumDetail.css">
  <script defer src="${pageContext.request.contextPath}/assets/js/preset/mainLogin.js"></script>

  <title>키보드워리어님의 게시글</title>
</head>

<body>
  <!-- <div class="communityForum-container"> -->


    <header class="main-header">
      <nav class="main-header-container">
        <div class="main-header-content">
          <div class="main-header-logo"><a href="">learnning</a></div>
          <div class="main-header-post-container">
            <a href="../partyForum/partyForum.html">
              <li>파티 모집</li>
            </a>
            <a href="../communityForum/communityForum.html">
              <li>커뮤니티</li>
            </a>
          </div>
        </div>
        <div class="main-header-dropdown-container">
          <div class="main-header-user-box">
            <i class="icon-down-dir"></i>사용자<i class="icon-user-circle-o"></i>
          </div>
          <div class="main-header-dropdown">
            <a href="../myPage/checkPass.html">• 개인 정보 수정</a><hr/>
            <a href="../myPage/myPageRecruitment.html">• 모집 현황</a><hr/>
            <a href="../myPage/myPageMyPost.html">• 내 게시물</a><hr/>
            <a href="./mainNonLogin.html">• 로그 아웃</a>
          </div>
        </div>
      </nav>
    </header>
  <main class="communityForumDetail-main">
    <div class="communityForumDetail-main-container-title">
      <h1 class="communityForumDetail-main-title">커뮤니티 게시판</h1>
    </div>

    <div class="communityForumDetail-title">
      <p class="communityForumDetail-title-content">내가 25살에 브론즈를 찍게 된 이유.</p>
      <p class="communityForumDetail-title-text">공략</p>
    </div>

    <div class="communityForumDetail-writer">
      <p class="communityForumDetail-writer-text">작성자 : </p>
      <p class="communityForumDetail-writer-userName">키보드워리어</p>
      <p class="communityForumDetail-writer-uploadTime">2025-01-11 22:17</p>
    </div>

    <div class="communityForumDetail-content">
      <div class="communityForumDetail-content-text">
        내가 25살에 브론즈를 찍게 된 이유를 설명할게요<br/>
        사실 롤을 시작한건 40년전이였는데 이때 내가 첫 컴퓨터 게임이 롤이였습니다<br/>
        그러다가 랭크 열심히 돌려서 어쩌구 저쩌구
        이렇게 되었습니다
        마지막은 노루가 노루를 핥는 "노루스름한 맛"을 보고 가십쇼
      </div>
      <img class="communityForumDetail-content-images" 
      alt="사용자 이미지">
    </div>
    <div class="communityForumDetail-button-container">
      <button class="communityForumDetail-communityForum-index-button">목록</button>
      <button class="communityForumDetail-edit-button">수정</button>
      <button class="communityForumDetail-delete-button">삭제</button>
    </div>

    <div class="communityForumDetail-comment-list-container">
      <div class="communityForumDetail-comment-input"><input type="text" placeholder="댓글을 입력해 주세요"></div>
      <button>등록</button>
    </div>
    <div class="communityForumDetail-commnet-list-container">
      <ul class="communityForumDetail-comment-list">
        <li class="communityForumDetail-comment-list-item">
          <div class="communityForumDetail-comment-list-details">
            <p class="communityForumDetail-comment-list-userName">이렐칼날긴빠이</p>
            <p class="communityForumDetail-comment-list-colon">:</p>
            <p class="communityForumDetail-comment-list-content">개추</p>
            <p class="communityForumDetail-comment-list-time">2025-01-11 22:22</p>
          </div>
          <hr class="communityForumDetail-comment-line-line">
        </li>

        <!-- <li class="communityForumDetail-comment-list-item">
          <div class="communityForumDetail-comment-list-details">
            <p class="communityForumDetail-comment-list-userName">키보드워리어</p>
            <p class="communityForumDetail-comment-list-colon">:</p>
            <p class="communityForumDetail-comment-list-content">브론즈ㅋㅋㅋㅋ 웃기네요</p>
            <p class="communityForumDetail-comment-list-time">2025-01-11 22:22</p>
            <button class="communityForumDetail-comment-delete">삭제</button>
          </div>
          <hr class="communityForumDetail-comment-line-line">
        </li> -->
      </ul>
    </div>
  </main>

  <footer class="main-footer">
    <div class="main-login-footer-text">
      <span><a href="">이용약관</a></span> | <span><a href="">개인정보 처리 방침</a></span> | <span><a href="">고객센터</a></span>
    </div>
  </footer>


<script src="${pageContext.request.contextPath}/assets/js/communityForum/communityForumDetail.js"></script>
</body>

</html>