<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="kr">

<head>
<title>ranking</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700"
	rel="stylesheet">

<!-- Template Styles -->
<link rel="stylesheet" type="text/css"
	href="../../../../resource/css/font-awesome.min.css">

<!-- CSS Reset -->
<link rel="stylesheet" type="text/css" href="/resource/css/normalize.css">

<link href="/resource/css/rank.css" type="text/css" rel="stylesheet">
	<script src="/resource/js/ranking/ranking.js"></script>
</head>
<!-- ======================================================================= -->
<body class="scrollbar custom-scrollbar-style">
	<main id="contaner">
		<div class="rank-table">
			<table>
				<thead>
					<tr>
						<td class="rank">순위</td>
						<td class="profileImg"></td>
						<td class="name">아이디</td>
						<td class="assets">보유 자산</td>
						<td class="assetsGrowth">자산 상승율</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ranker" items="${rankList}" varStatus="status">
						<tr>
							<c:if test="${status.count == 1}">
								<td class="rank"
									style="background: url('/resource/images/medal_geom.png') no-repeat 50% 15px;">${status.count}</td>
							</c:if>
							<c:if test="${status.count == 2}">
								<td class="rank"
									style="background: url('/resource/images/medal_eon.png') no-repeat 50% 15px;">${status.count}</td>
							</c:if>
							<c:if test="${status.count == 3}">
								<td class="rank"
									style="background: url('/resource/images/medal_dong.png') no-repeat 50% 15px;">${status.count}</td>
							</c:if>
							<c:if test="${status.count > 3}">
								<td class="rank">${status.count}</td>
							</c:if>
							<td class="profileImg"><img src="/resource/images/profile/${ranker.profileImg}.png" 
									alt="profile photo" class="circle float-left profile-photo"></td>
							<td class="name">${ranker.nickName}</td>
							<td class="assets"><fmt:formatNumber
									value="${ranker.totalAsset}" type="number" /></td>
							<td class="assetsGrowth"><fmt:formatNumber
									value="${ranker.assetsGrowth}" type="number"
									pattern="0.00%" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="rank-table">
			<table>
				<tbody id="myRank">
					<tr>
						<td class="rank">${myRank.rank}</td>
						<td class="profileImg"><img src="/resource/images/profile/${myRank.profileImg}.png" 
								alt="profile photo" class="circle float-left profile-photo"></td>
						<td class="name">${myRank.nickName}</td>
						<td class="assets"><fmt:formatNumber type="number"
								value="${myRank.totalAsset}" /></td>
						<td class="assetsGrowth"><fmt:formatNumber
								value="${myRank.assetsGrowth}" type="number"
								pattern="0.00%" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</body>

</html>