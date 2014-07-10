 <html>
    <head> 
      <title>Login Page</title>        
      <meta name="layout" content="main" /> 
    </head>    
    <body> 
      <div class="body">
         <g:if test="${flash.message}">
              <div class="message"> 
                  ${flash.message} 
              </div> 
         </g:if> 
         <p>            
	       Welcome Employee. Login below   
	 </p><br><br> 
         <g:form action="handleEmpLogin" method="post" > 

              <span class='nameClear'><label for="name">  
                     EmpName:
                    </label> 
              </span> 
              <g:textField name="name" value="${employee?.name}" /> 
                 <br /><br>
              
               <span class='nameClear'><label for="password">  
                     Password:
                    </label> 
              </span> 
              <input type="password" name="password" value="${employee?.password}" /> 
              <br /><br>
              
              <div class="buttons"> 
                   <span class="button"> 
                       <g:actionSubmit value="Login" action="handleEmpLogin"/> 
                   </span> 
              </div> 
          </g:form> 
        </div> 
      </body> 
 </html>