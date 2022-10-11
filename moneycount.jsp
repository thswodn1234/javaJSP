<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int num = 0;
int ovalu = 0;
int total = 0;



int[] money = { 50000, 10000, 5000, 1000 };

int[] result = new int[4];

String snum = request.getParameter("num");

if (snum != null && snum.equals("") == false) {

	num = Integer.parseInt(snum);

	ovalu = num;
	
	for (int i = 0; i < money.length; i++) {
		result[i] += num / money[i];
		num %= money[i];
		total += result[i]; //총 지폐 개수
	}
	

}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>최소 지폐 수 계산</h2>


	<form action="moneycount.jsp" method="get">
		금액입력 : <input type="text" name="num"><br />
	</form>

	<%
	out.println("<br/>"+ ovalu + "원<br/><br/>");
	for (int j = 0; j < result.length; j++) {
		out.println(money[j]+"원 " + result[j] +"장<br />"  );	
	}
		
		out.println("<br />"+"총 " + total +" 장");
	
	%>


</body>
</html>