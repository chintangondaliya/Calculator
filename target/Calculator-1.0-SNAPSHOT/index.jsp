<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    
    <%
        String userinput=request.getParameter("userinput");
        String opration=request.getParameter("opration");
        String number=request.getParameter("number");
        String operator = "";
        
        if(userinput ==null ){
            userinput="";
        }
        
        if(number!=null){
            userinput += number;
            
        }
        
       
        else if( opration != null){
            switch(opration){
            case "AC": userinput="";
            break;
            
            case"DEL": if(userinput !=null){
                       userinput  = userinput.substring(0, userinput.length() - 1);
                        }
             break;
             case "+":
             case "-":
             case "*":
             case "/":
             case "%":
            
                    userinput += opration;
            break;
        }
        }
     if (opration != null && opration.equals("=")) {
   
    String[] parts = userinput.split("[+\\-*/%]");
    
    List<Character> ops = new ArrayList<>();
    
    
    for (int i = 0; i < userinput.length(); i++) {
        char c = userinput.charAt(i);
            if (c == '/' || c == '*' || c == '+' || c == '-'|| c == '%') {
                ops.add(c);
               
        
        
        }

       
        }
        
        
       double res=Double.parseDouble(parts[0]);
       for (int i = 0; i <ops.size(); i++) {
      double num=Double.parseDouble(parts[i+1]);
        
       
        
        switch(ops.get(i)){
        
        case '/' : res/=num;
        break;
        
        case '*' :        
        res*=num;
        break;
        
        case '+' : 
        res+=num;
        break;
        
        case '-' : 
        
        res-=num;
        break;
        case '%' : 
        
        res-=num;
        break;
       
        }
        } 
        userinput="";
        userinput+=res;
        }
        
        %>
    <body>
        <form action="" method="post">
        <div class="center-box">
            <div class="center1-box">
                <input type="text" style="text-align: right;font-size: 40px;" name="userinput" value="<%= userinput %>">
            </div>
            
            <div style="margin-top: 30px">
                <button type="submit" style="background-color:#C0C0C0" class="button" name="opration" value="AC">AC</button>
                <button type="submit" style="background-color:#C0C0C0" class="button" name="opration" value="DEL">DEL</button>
                <button type="submit" style="background-color:#C0C0C0" class="button" name="opration" value="%">%</button>
                <button type="submit" style="background-color: orange" class="button" name="opration" value="/">/</button>
                <button type="submit" class="button" name="number" value="7">7</button>
                <button type="submit" class="button" name="number" value="8">8</button>
                <button type="submit" class="button" name="number" value="9">9</button>
                <button type="submit" style="background-color: orange" class="button" name="opration" value="*">*</button>
                <button type="submit" class="button" name="number" value="4">4</button>
                <button type="submit" class="button" name="number" value="5">5</button>
                <button type="submit" class="button" name="number" value="6">6</button>
                <button type="submit" style="background-color: orange" class="button" name="opration" value="-">-</button>
                <button type="submit" class="button" name="number" value="1">1</button>
                <button type="submit" class="button" name="number" value="2">2</button>
                <button type="submit" class="button" name="number" value="3">3</button>
                <button type="submit" style="background-color: orange" class="button" name="opration" value="+">+</button>
                <button type="submit" class="button" name="number" value="00">00</button>
                <button type="submit" class="button" name="number" value="0">0</button>
                <button type="submit" class="button" name="number" value=".">.</button>
                <button type="submit" style="background-color: orange" class="button" name="opration" value="=">=</button>
                
                
                
            </div>

        </div>
            </form>
     
    </body>
</html>
