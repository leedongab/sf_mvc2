<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������Ƽ</title>

<link rel="stylesheet" type="text/css"
	href="http://kenwheeler.github.io/slick/slick/slick.css" />

<link rel="stylesheet" type="text/css"
	href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />

<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

    	//alert('123');

    	$('.slick-items').slick({

    		autoplay : true,

    		dots: true,

    		speed : 300 /* �̹����� �����̵��� �ɸ��� �ð� */,

    		infinite: true,

    		autoplaySpeed: 1000 /* �̹����� �ٸ� �̹����� �Ѿ� ������ �� */,

    		arrows: true,

    		slidesToShow: 1,

    		slidesToScroll: 1,


    		fade: false


    	});
    	$('.ci_main').click(function() {
    		location="../Introduce/safety_ci.jsp";
    	});
    	$('.cam_main').click(function() {
    		location="../activity/cam1.jsp";
    	});
    	$('.se_main').click(function() {
    		location="../ServiceCenter/customer_center.jsp";
    	});
    	$('.goods_main').click(function() {
    		location="../activity/safety_gift.jsp";
    	});




    });
	</script>
<style type="text/css">


.textdiv {
	margin-top: 300px;
	margin-left: 360px;
	font-size: 50px;
	position: absolute;
	color: white;
}



</style>
</head>
<body>
	<jsp:include page="../etc/dona.jsp" />
	<jsp:include page="../etc/sf_nav.jsp" />
	<div>
		<div class="slick-items">
			<div class="slider_div_sub1">
				<!-- 1�� �����̵� -->
				<div class="textdiv">
					<h3>safety ci �Ұ�</h3>
					<br /> <img src="../image/�ڼ�������btn.png" alt=""  class="ci_main"/>

				</div>
				<img src="../image/main_img_1.png">
				<!--1�� �̹��� �ִ� ��  -->
			</div>


			<div class="slider_div_sub1">
				<!-- 2�� �����̵� -->
				<div class="textdiv">
					<h3>
						��� �ҹ�� <br />�������� �� ķ����
					</h3>
					<br /> <img src="../image/�ڼ�������btn.png" alt=""  class="cam_main"/>
				</div>
				<img src="../image/main_img_2.png">
			</div>



			<div class="slider_div_sub1">
				<!-- 2�� �����̵� -->
				<div class="textdiv">
					<h3>
						safety���� <br /> �ñ��� ���� <br /> �������!<br />
					</h3>
					<br /> <img src="../image/�ڼ�������btn.png" alt="" class="se_main"/>
				</div>
				<img src="../image/main_img_3.png">
			</div>

			<div class="slider_div_sub1">
				<!-- 2�� �����̵� -->
				<div class="textdiv">
					<h3>�Ŀ��ڼ�������</h3>
					<br /> <img src="../image/�ڼ�������btn.png" alt="" class="goods_main"/>
				</div>
				<img src="../image/main_img_4.png">
			</div>

		</div>
	</div>

<jsp:include page="property/mainsecond.jsp" />
<jsp:include page="property/sf_campaign.jsp" />
<jsp:include page="property/sf_supporter.jsp" />
<jsp:include page="property/sf_ci.jsp" />
<jsp:include page="property/sf_ServiceCenter.jsp" />
<jsp:include page="../etc/project_footer.jsp" />



</body>
</html>