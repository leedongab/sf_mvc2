<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/sf_campaign.css">
<script type="text/javascript">
$(function() {
	$('.sf_campaign_title_txt2').hide();
	$('.sf_campaign_title_txt3').hide();
	$('.sf_campaign_inner_bg2').hide();
	$('.sf_campaign_inner_bg3').hide();

 $('.sf_campaign_btn1').mouseover(function () {
     $('.sf_campaign_btn1').css('background-color:#01aaec ');
     $('.sf_campaign_title_txt1').show();
     $('.sf_campaign_btn1').css("background: url('../../image/sf_event1.png')");
 	 $('.sf_campaign_title_txt2').hide();
	 $('.sf_campaign_title_txt3').hide();
	 $('.sf_campaign_inner_bg1').show();
	 $('.sf_campaign_inner_bg2').hide();
	 $('.sf_campaign_inner_bg3').hide();

 });
 $('.sf_campaign_btn2').mouseover(function () {
	 $('.sf_campaign_title_txt1').hide();
	 $('.sf_campaign_inner').css('background: url("../../image/sf_event2.png")');
	 $('.sf_campaign_title_txt2').show();
	 $('.sf_campaign_title_txt3').hide();
	 $('.sf_campaign_inner_bg1').hide();
	 $('.sf_campaign_inner_bg2').show();
	 $('.sf_campaign_inner_bg3').hide();

 });
 $('.sf_campaign_btn3').mouseover(function () {
	 	$('.sf_campaign_title_txt3').show();
	 	$('.sf_campaign_inner').css('background: url("../../image/sf_event3.png") ');
	 	$('.sf_campaign_title_txt2').hide();
		$('.sf_campaign_title_txt1').hide();
		 $('.sf_campaign_inner_bg1').hide();
		 $('.sf_campaign_inner_bg2').hide();
		 $('.sf_campaign_inner_bg3').show();




 });
 $('.sf_campaign_plus_icon1').click(function () {
	 location.href = 'https://www.sc.or.kr/n_advocacy/?_C_=3723'; /* �ش縵ũ�� */
 });
 $('.sf_campaign_btn1').click(function () {
	 location.href = 'https://www.sc.or.kr/n_advocacy/?_C_=3723'; /* �ش縵ũ�� */
 });
 $('.sf_campaign_plus_icon2').click(function () {
	 location.href = 'https://happykidsyoutube.sc.or.kr/?_C_=3341'; /* �ش縵ũ�� */
 });
 $('.sf_campaign_btn2').click(function () {
	 location.href = 'https://www.sc.or.kr/moja/?_C_=3661'; /* �ش縵ũ�� */
 });
 $('.sf_campaign_plus_icon3').click(function () {
	 location.href = 'https://www.sc.or.kr/stopwaronchildren/?_C_=3185'; /* �ش縵ũ�� */
 });
 $('.sf_campaign_btn3').click(function () {
	 location.href = 'https://www.sc.or.kr/stopwaronchildren/?_C_=3185'; /* �ش縵ũ�� */
 });

});

</script>
<div class="sf_campaign_inner">

	<div class="sf_campaign_inner_bg1">

	</div>
	<div class="sf_campaign_inner_bg2">

	</div>
	<div class="sf_campaign_inner_bg3">

	</div>

	<div  class="sf_campaign_btn_div">
		<div class="sf_campaign_btn1">
			<p class="sf_campaign_p">�Ż��� �츮�� ķ����</p>
			<img src="../image/ȭ��ǥ_22PX.png" alt="" id="sf_campaign_icon"/>
		</div>

		<div class="sf_campaign_btn2">
			<p class="sf_campaign_p">���̰� �ູ�� ��Ʃ�� �����</p>
			<img src="../image/ȭ��ǥ_22PX.png" alt="" id="sf_campaign_icon"/>
		</div>

		<div class="sf_campaign_btn3">
			<p class="sf_campaign_p">SOS SAFETY</p>
			<img src="../image/ȭ��ǥ_22PX.png" alt="" id="sf_campaign_icon"/>

		</div>
	</div> <!--sf_campaign_btn_div end -->

	<div class="sf_campaign_title_div">
	  		<div class="sf_campaign_title_txt1">
			<h1 class="campaign_h1">�Ż��� �츮�� ķ����</h1>
			<h5  class="campaign_h5">�Ϳ��� ��������� ��Ʃ�� �� ���̵�. ������ �Կ� �������� ��� �𸣰�
				<br />������ߴ� ���̵��� ���� �ʾ������?
			</h5>
			<img src="../image/�ڼ�������btn.png" alt="" class="sf_campaign_plus_icon1"/>
          </div>






		<div class="sf_campaign_title_txt2">
			<h1 class="campaign_h1">���̰� �ູ�� ��Ʃ�� �����</h1>
			<h5 class="campaign_h5">Ű�� ��Ʃ�긦 �ϰ� �ִ� �θ�Ե�, Ű�� ��Ʃ�긦 �����ϴ� �θ�Ե�<br />
								���̵������ �� ���� ���̵��� �ູ�� ��Ʃ�긦 ���鵵��<br />
								�������� �Բ� ���� �Ǿ��ּ���.
			</h5>
			<img src="../image/�ڼ�������btn.png" alt="" class="sf_campaign_plus_icon2"/>

		</div>




		<div class="sf_campaign_title_txt3">
			<h1 class="campaign_h1">SOS SAFETY</h1>
			<h5 class="campaign_h5">
				�� Every war is a war against children. ��
			</h5>
			<img src="../image/�ڼ�������btn.png" alt="" class="sf_campaign_plus_icon3"/>

		</div>




</div><!--sf_campaign_inner -->
 </div> <!-- sf_campaign_title end -->
