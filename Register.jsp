<%-- 
    Document   : Register
    Created on : Nov 6, 2022, 3:07:49 PM
    Author     : Prabhanjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%-- this is css link. we provided hiperlink here.removed integriti part  --%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <%-- this is js link  --%>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/n pm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- this is js link  --%>

        <%-- this is css link  --%>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <%-- because form name="regform" onsubmit="return validation()" --%>
         <%-- to check all fields are fill or not  --%>
         <%-- submit document.first script executed then jsp body code  --%>
        <script>
            function validation()
            {
               
                var name2=document.regform.name1.value;
                var email2=document.regform.email1.value;
                var pass2=document.regform.pass1.value;
                var gender2=document.regform.gender1.value; 
                //var field2=document.regform.field1.value;
                var city2=document.regform.city1.value;
                //regular expression. copy from sirs's code 
                var name_pattern=/^[a-zA-Z ]{3,30}$/;//after capital Z space is required 
                //here we limit 30 so in db also 30.same for password. for gender f,e,m,a,l,e max 6 char
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
               
               // var name_pattern=/^[a-zA-Z]{3,30}$/;//minimum 3 char maximum 30  
               // var phone=/^[0-9]{10}/
                
                
                if(name2==="")
                {
                    alert("name can not be empty");//box message displaying
                    return false;
                }
                
                if(!name2.match(name_pattern))//pattern matching. if not match(!)
                {
                    alert("name is not properly formated");//box message displaying
                    return false;
                }
                
                else if(email2==="")
                {
                    alert("email can not be empty");
                    return false;
                }
                
                if(!email2.match(email_pattern))
                {
                    alert("email is not properly formated");
                    return false;
                }
                
                else if(pass2==="")
                {
                    alert("password can not be empty");
                    return false;
                }
                
                if(!pass2.match(password_pattern))
                {
                    alert("password is not properly formated.(shoud contain atleast one number[0-9], one special character)");
                    return false;
                }
                /*
                if you dont want to remember the regex pattern then simply use below code
        
                if(pass2.length<6 && pass2.length>16)
                {
                    
                }
                if(pass2.search(/[a-zA-Z]/) < 0)
                {
                    
                }
                if(pass2.search(/[0-9]/) < 0)
                {
                    
                }
                if(pass2.search(/[@_]/) < 0)
                {
                    
                }*/
                
                else if(gender2==="")
                {
                    alert("please select gender");
                    return false;
                }
                /*else if(field2==="")
                {
                    alert("please select atleast one fields");
                    return false;
                }*/  
                else if(city2==="Select city")
                {
                    alert("please select city");
                    return false;
                }
                else
                {
                        document.regform.action="reg";
                        document.regform.submit();
                        
                }
                
            }
        </script>
    </head>
    <body>
        <div class="container_fluide">
            <%-- used directive element  --%>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="menubar.jsp"></jsp:include>

            <%-- Registrstion form  --%>
            <div class="row">
                <div class="col-md-3"></div> <%-- left gap  --%>
                      <div class="col-md-6 registretion_dev_design">
                    <%-- for backend we creat form  --%>
                    <form method="post" name="regform" onsubmit="return validation()"><%-- onsubmit:- when click on submit botton it will check validation  --%>
                        <h2>Register Here</h2>
                        <input type="text" placeholder="Enter Name" name="name1" class="reg_log_textfield_design"/><br><br>
                        <input type="text" placeholder="Enter Email" name="email1" class="reg_log_textfield_design"/><br><br>
                        <input type="password" placeholder="Enter Password" name="pass1" class="reg_log_textfield_design     "/><br><br>
                        <b> Select Gender:</b>  <input type="radio" name="gender1" value="Male"/>Male<input type="radio" name="gender1" value="Female"/>Female<br><br>
                        <b> Select Fields:</b>  <input type="checkbox" name="field1" value="Information Technology"/>Information Technology<br>
                        <input type="checkbox" name="field1" value="Markting"/>Markting
                        <input type="checkbox" name="field1" value="Finance"/>Finance<br><br>
                        <select name="city1" class="reg_log_textfield_design">
                            <option>Select city</option>
                            <option value="Pune">Pune</option>
                            <option value="Mumbai">Mumbai</option>
                            <option value="Bangoluru">Bangoluru</option>
                        </select><br><br>
                        <input type="submit" value="Register" class="btn btn-primary"/><br><br>
                        
                        </form>
                    </div>
                </div>  
            <div class="col-md-3"></div> <%-- right gap--%>
           




            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
