<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = 0;
	String snum = request.getParameter("num");
	num = Integer.parseInt(snum);
	gugu(num);
%>

<%!
	public void gugu(int x){
	for(int i = 2 ; i < 10 ; i += x) {
		for(int j = 1 ; j < 10 ; j++) {
			for (int k = 0 ; k < x ; k++) {
				if (10 <= i+k) {
					System.out.print("\n");
					break;
				}
				

				if (k < x -1)	System.out.print("\t");
				else			System.out.print("\n");
			}
		}
		System.out.println();
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
	<h2>구구단 출력</h2>

		
		<form action ="testgugu.jsp" method="get">	
	    num : <input type="text" name="num"><br/>
		</form>
		
		<%
		
		
		%>
		
	
</body>
</html>