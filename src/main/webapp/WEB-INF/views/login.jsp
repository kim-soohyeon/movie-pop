<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url(https://fonts.googleapis.com/css?family=Poor+Story|Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 16px;
  /* text-align: center; */
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Poor Story", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Poor Story", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form select {
	font-family: "Poor Story", sans-serif;
    /* outline: 0; */
    background: #f2f2f2;
    width: 100%;
    border: 0;
    /* margin: 0 0 15px; */
    padding: 12px 9px 16px 13px;
    box-sizing: border-box;
    font-size: 13px;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Poor Story", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
.join_title {
    margin: 12px 0 8px;
    font-size: 14px;
    font-weight: 700;
}
.btn_primary {
    color: #fff;
    background-color: #03c75a;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="login-page">
  <div class="form">
    <form class="register-form">
    	<div class="row_group">
			<h3 class="join_title"><label>아이디</label></h3>
	      	<input type="text"/>
	      	<h3 class="join_title"><label>비밀번호</label></h3>
	      	<input type="password"/>
	      	<h3 class="join_title"><label>비밀번호 재확인</label></h3>
	      	<input type="password"/>
	      	<h3 class="join_title"><label>이름</label></h3>
	      	<input type="text"/>
			<div class="join_row join_birthday">
	        	<h3 class="join_title"><label>생년월일</label></h3>
	            <div class="bir_wrap">
	            	<div>
						<span class="ps_box">
							<input type="text" id="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4" style="width:35%;">
						</span>
						<span class="ps_box">
							<select id="mm" class="sel" aria-label="월" style="width:31%;">
								<option value="">월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</span> 
						<span class="ps_box">
							<input type="text" id="dd" placeholder="일" aria-label="일" class="int" maxlength="2" style="width:31%;">
							<label for="dd" class="lbl"></label>
						</span>
	                </div>
	            </div>
	            <span class="error_next_box" id="birthdayMsg" style="display: none;" aria-live="assertive">태어난 일(날짜) 2자리를 정확하게 입력하세요.</span>
	      	</div>
	        <h3 class="join_title"><label for="gender">성별</label></h3>
			<select id="gender" name="gender" class="sel" aria-label="성별">
				<option value="" selected>성별</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select>
			<h3 class="join_title"><label>이메일</label></h3>
			<span class="ps_box int_mobile">
				<input type="text" placeholder="이메일 입력"/>
			</span>
			<div style="font-family:Poor Story; font-size:14px;"><a>인증을 해주세요.</a>
				<button type="button" style="padding: 6px 10px 6px 13px; width: 40%; margin-left: 108px;">
		        	<div style="font-family:Poor Story; font-size:14px;">이메일 인증</div>
		        </button>
	        </div>
			<h3 class="join_title"><label>휴대전화</label></h3>
			<div class="int_mobile_area">
				<span class="ps_box int_mobile">
					<input type="tel" id="phoneNo" name="phoneNo" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="15">
					<label for="phoneNo" class="lbl"></label>
				</span>
	     	</div>
      	<button>회원가입</button>
	      	<p class="message">이미 아이디가 있으신가요? <a href="#">로그인</a></p>
      	</div>
    </form>
    <form class="login-form">
      <input type="text" placeholder="아이디"/>
      <input type="password" placeholder="비밀번호"/>
      <button>로그인</button>
      <p class="message">아직 아이디가 없으신가요? <a href="#">회원가입</a></p>
    </form>
  </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
$('.message a').click(function(){
	$('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
</body>
</html>