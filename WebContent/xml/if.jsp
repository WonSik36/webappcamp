<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Vegetable Information:</h2>
	
	<c:set var="vegetables">
		<vegetables> 
			<vegetable> <name>onion</name> <price>40</price> </vegetable> 
			<vegetable> <name>Potato</name> <price>30</price> </vegetable> 
			<vegetable> <name>Tomato</name> <price>90</price> </vegetable> 
		</vegetables>
	</c:set>
	
	<x:parse xml="${vegetables}" var="output" />
	<!--  
		<x:if select="$output/vegetables/vegetable/price < 30">  
   			Vegetables prices are very low.  
		</x:if>
		
		this doesn't show anything
		if only one thing is true than if tag works
	-->
	<x:if select="$output/vegetables/vegetable/price < 40">  
   		Vegetables prices are very low.  
	</x:if>

</body>
</html>