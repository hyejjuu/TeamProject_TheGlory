<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
	rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<style type="text/css">



/* MARKETING CONTENT
-------------------------------------------------- */
/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
	margin-bottom: 1.5rem;
	text-align: center;
}

.marketing .col-lg-4 p, body {
	margin-right: .75rem;
	margin-left: .75rem;
}

/* Featurettes

------------------------- */
.featurette-divider {
	margin: 5rem 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */

/* RESPONSIVE CSS

-------------------------------------------------- */
@media ( min-width : 40em) {
	/* Bump up size of carousel content */
	.carousel-caption p {
		margin-bottom: 1.25rem;
		font-size: 1.25rem;
		line-height: 1.4;
	}
	.featurette-heading {
		font-size: 50px;
	}
}

@media ( min-width : 62em) {
	.featurette-heading {
		margin-top: 7rem;
	}
}
</style>

<script src="resources/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<main>
<%@ include file="template/header.jsp" %>
<jsp:include page="${ param.body }" />
<%@ include file="template/footer.jsp" %>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</main>
</body>
</html>