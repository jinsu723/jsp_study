/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-01-21 08:33:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.app.communityForum;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class communityForumDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/css/preset/preset.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/css/communityFourm/communityForumDetail.css\">\r\n");
      out.write("  <script defer src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/preset/mainLogin.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <title>키보드워리어님의 게시글</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- <div class=\"communityForum-container\"> -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <header class=\"main-header\">\r\n");
      out.write("      <nav class=\"main-header-container\">\r\n");
      out.write("        <div class=\"main-header-content\">\r\n");
      out.write("          <div class=\"main-header-logo\"><a href=\"\">learnning</a></div>\r\n");
      out.write("          <div class=\"main-header-post-container\">\r\n");
      out.write("            <a href=\"../partyForum/partyForum.html\">\r\n");
      out.write("              <li>파티 모집</li>\r\n");
      out.write("            </a>\r\n");
      out.write("            <a href=\"../communityForum/communityForum.html\">\r\n");
      out.write("              <li>커뮤니티</li>\r\n");
      out.write("            </a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"main-header-dropdown-container\">\r\n");
      out.write("          <div class=\"main-header-user-box\">\r\n");
      out.write("            <i class=\"icon-down-dir\"></i>사용자<i class=\"icon-user-circle-o\"></i>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"main-header-dropdown\">\r\n");
      out.write("            <a href=\"../myPage/checkPass.html\">• 개인 정보 수정</a><hr/>\r\n");
      out.write("            <a href=\"../myPage/myPageRecruitment.html\">• 모집 현황</a><hr/>\r\n");
      out.write("            <a href=\"../myPage/myPageMyPost.html\">• 내 게시물</a><hr/>\r\n");
      out.write("            <a href=\"./mainNonLogin.html\">• 로그 아웃</a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("  <main class=\"communityForumDetail-main\">\r\n");
      out.write("    <div class=\"communityForumDetail-main-container-title\">\r\n");
      out.write("      <h1 class=\"communityForumDetail-main-title\">커뮤니티 게시판</h1>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"communityForumDetail-title\">\r\n");
      out.write("      <p class=\"communityForumDetail-title-content\">내가 25살에 브론즈를 찍게 된 이유.</p>\r\n");
      out.write("      <p class=\"communityForumDetail-title-text\">공략</p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"communityForumDetail-writer\">\r\n");
      out.write("      <p class=\"communityForumDetail-writer-text\">작성자 : </p>\r\n");
      out.write("      <p class=\"communityForumDetail-writer-userName\">키보드워리어</p>\r\n");
      out.write("      <p class=\"communityForumDetail-writer-uploadTime\">2025-01-11 22:17</p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"communityForumDetail-content\">\r\n");
      out.write("      <div class=\"communityForumDetail-content-text\">\r\n");
      out.write("        내가 25살에 브론즈를 찍게 된 이유를 설명할게요<br/>\r\n");
      out.write("        사실 롤을 시작한건 40년전이였는데 이때 내가 첫 컴퓨터 게임이 롤이였습니다<br/>\r\n");
      out.write("        그러다가 랭크 열심히 돌려서 어쩌구 저쩌구\r\n");
      out.write("        이렇게 되었습니다\r\n");
      out.write("        마지막은 노루가 노루를 핥는 \"노루스름한 맛\"을 보고 가십쇼\r\n");
      out.write("      </div>\r\n");
      out.write("      <img class=\"communityForumDetail-content-images\" \r\n");
      out.write("      alt=\"사용자 이미지\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"communityForumDetail-button-container\">\r\n");
      out.write("      <button class=\"communityForumDetail-communityForum-index-button\">목록</button>\r\n");
      out.write("      <button class=\"communityForumDetail-edit-button\">수정</button>\r\n");
      out.write("      <button class=\"communityForumDetail-delete-button\">삭제</button>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"communityForumDetail-comment-list-container\">\r\n");
      out.write("      <div class=\"communityForumDetail-comment-input\"><input type=\"text\" placeholder=\"댓글을 입력해 주세요\"></div>\r\n");
      out.write("      <button>등록</button>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"communityForumDetail-commnet-list-container\">\r\n");
      out.write("      <ul class=\"communityForumDetail-comment-list\">\r\n");
      out.write("        <li class=\"communityForumDetail-comment-list-item\">\r\n");
      out.write("          <div class=\"communityForumDetail-comment-list-details\">\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-userName\">이렐칼날긴빠이</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-colon\">:</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-content\">개추</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-time\">2025-01-11 22:22</p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <hr class=\"communityForumDetail-comment-line-line\">\r\n");
      out.write("        </li>\r\n");
      out.write("\r\n");
      out.write("        <!-- <li class=\"communityForumDetail-comment-list-item\">\r\n");
      out.write("          <div class=\"communityForumDetail-comment-list-details\">\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-userName\">키보드워리어</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-colon\">:</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-content\">브론즈ㅋㅋㅋㅋ 웃기네요</p>\r\n");
      out.write("            <p class=\"communityForumDetail-comment-list-time\">2025-01-11 22:22</p>\r\n");
      out.write("            <button class=\"communityForumDetail-comment-delete\">삭제</button>\r\n");
      out.write("          </div>\r\n");
      out.write("          <hr class=\"communityForumDetail-comment-line-line\">\r\n");
      out.write("        </li> -->\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </main>\r\n");
      out.write("\r\n");
      out.write("  <footer class=\"main-footer\">\r\n");
      out.write("    <div class=\"main-login-footer-text\">\r\n");
      out.write("      <span><a href=\"\">이용약관</a></span> | <span><a href=\"\">개인정보 처리 방침</a></span> | <span><a href=\"\">고객센터</a></span>\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/communityForum/communityForumDetail.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
