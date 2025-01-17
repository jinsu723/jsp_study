<header>
	<nav class="navar">
		<ul>
			<li><a href="${pageContext.request.contextPath}/index.jsp"></a></li>
			<c:if test ="${empty sessionScope.member}">
				<li><a href="${pageContext.request.contextPath}/member/login.me"></a>login</li>
				<li><a href="${pageContext.request.contextPath}/member/join.me"></a></li>
			</c:if>
			
			<c:if test="${nont empty sessionScope.member}">
				<li><a href="${pageContext.request.contextPath}/member/logout.me">logout</a></li>
			</c:if>
		</ul>
	</nav>
</header>