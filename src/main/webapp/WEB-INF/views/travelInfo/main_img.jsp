<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title> Plugin </title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style>
.bx-wrapper {
    box-shadow: none;
}
</style>
</head>
<body>
<div id="gallery_wrap" >
	<form id="gallery"></form>
	<ul class="bxslider" >
		<li><img src="/resources/img/main_pic01.jpg" alt="" class="image"></li>
		<li><img src="/resources/img/main_pic02.jpg" alt="" class="image"></li>
	</ul>
</div>
</body>
<script>
	$(document).ready(function(){ 
		$('.bxslider').bxSlider({
			auto: true, 
			speed: 500, 
			pause: 5000, 
			mode:'fade', 
		}); 
	});
</script>
</html>
