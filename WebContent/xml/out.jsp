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
	<c:set var="vegetable">
		<vegetables> 
			<vegetable> <name>Onion</name> <price>40/kg</price>  </vegetable> 
			<vegetable> <name>Potato</name> <price>30/kg</price> </vegetable> 
			<vegetable> <name>Tomato</name> <price>90/kg</price> </vegetable> 
		</vegetables>
	</c:set>
	<x:parse xml="${vegetable}" var="out_veg" />
	<b>Name of the vegetable is</b>:
	<x:out select="$out_veg/vegetables/vegetable[1]/name" />
	<br>
	<b>Price of the Potato is</b>:
	<x:out select="$out_veg/vegetables/vegetable[2]/price" />
	
	<br><br><br>
	
	<h2>Fruit Information:</h2>
	<c:import var="fruit" url="fruits.xml"/>
	<x:parse xml="${fruit}" var="out_fru" />
	<b>Name of the fruit is</b>:
	<x:out select="$out_fru/fruits/fruit[1]/name" />
	<br>
	<b>Price of the Orange is</b>:
	<x:out select="$out_fru/fruits/fruit[2]/price" />
</body>
</html>