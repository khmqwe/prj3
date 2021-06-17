<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../common/css/styles.css" rel="stylesheet"/>
    <!-- jQuery CDN(Contents Delivery Network) -->
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
 .idtitle{font-size:25px;}
 #wrap{text-align: center; border:1px solid #333; width:400px;height:250px;padding:30px; margin:15px auto }
 .use{font-size: 14px; color:#fff; background-color:#333; width:100px; height:27x; font-weight:bold;}
</style>
<script type="text/javascript">

function useId(){
    opener.document.getElementById("id").value = document.getElementById("id").value;
	self.close();
}
</script>

</head>
<body>

<div align="center" id="wrap">
<form action="#" name="idfrm">
<span class="idtitle"><strong>ID CHECK</strong> 아이디 중복확인</span> <br>
사용하고자 하는 아이디를 입력해주세요.<br>
아이디 중복확인 후 사용 가능한 아이디를 등록합니다. <br>
<br>
<input type="text" class="inputbox" name="id" id="id"> <input type="button" value="ID 중복확인" class="btn btn-default" id="chkid"> <br>
<input type="button" value="사용하기" class="use" id="use"  onclick="useId()" >
</form>
</div>

</body>
</html>