<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Footer</title>

<link href="css/Footer.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	
	<div class="container">
		<div class="row">
  			<div class="footer-left">
  				<h2 class="slogan">
				ĐỘI BẢO VỆ NGÂN HÀ <br>
				</h2>
				<div class="author">
		 		<a href="https://www.facebook.com/huunhan97"><img id="img-author1" src="<%=request.getContextPath()%>/images/author/nhan.jpg" title="Siêu nhân đỏ"></a>
  		 		<a href="https://www.facebook.com/vuonguyennhi0307"><img id="img-author2" src="<%=request.getContextPath()%>/images/author/nhi.jpg" title="Siêu nhân trắng"></a>			
  		 		<a href="https://www.facebook.com/quyen.vo.98892"><img id="img-author3" src="<%=request.getContextPath()%>/images/author/quyen.jpg" title="Siêu nhân hồng"></a>			
  		 		<a href="https://www.facebook.com/abcd.xyztt"><img id="img-author4" src="<%=request.getContextPath()%>/images/author/bao.jpg" title="Siêu nhân đen"></a>
  		 </div>			
  			</div>
  			<div class="footer-right">
  				<h2>Liên hệ:</h2>
				<form action="ControlFooter" method="post">
					<input type="text" name="email" placeholder="Email">
					<textarea name="message" placeholder="Message"></textarea>
					<button>Gửi</button>
				</form>
  			</div>
		</div>	  
	</div>


</body>
</html>