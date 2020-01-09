<h1>Today is: <% out.print(java.util.Calendar.getInstance().getTime()); %></h1>  
<h1>your name is <%= request.getParameter("name") %></h1>  