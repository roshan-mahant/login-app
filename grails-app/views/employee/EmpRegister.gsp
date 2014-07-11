<html>
<head>
    <title>Registration Page</title>
    <meta name="layout" content="main" />
 </head>
 
  <body>   
    <g:form action="handleEmpRegistration" method="post">
       <div class="dialog">
       <table>
        <tbody>
        
          <tr class='prop'>
            <td valign='top'class='nameClear'>
               <label for="login">UserName:</label>
            </td>
            <td valign='top'
               class='valueClear ${hasErrors(bean:employee,field:'name','errors')}'>
               <input type="text" name="name" />
            </td>
          </tr>
         
          <tr class='prop'>
             <td valign='top' class='nameClear'>
                 <label for="password">Password:</label>
             </td>
             <td valign='top'
                 class='valueClear ${hasErrors(bean:employee,field:'password','errors')}'>
                 <input type="password" name="password" />
             </td>
           </tr>
         
           <tr class='prop'>
              <td valign='top' class='nameClear'>
                  <label for="confirm">Confirm Password:</label>
              </td>
              <td valign='top'
                   class='valueClear ${hasErrors(bean:employee,field:'confirm','errors')}'>
                   <input type="password" name="confirm" />
              </td>
           </tr>
           
           <tr class='prop'>
              <td valign='top' class='nameClear'>
                  <label for="designation">Designation:</label>
              </td>
              <td valign='top'
                   class='valueClear ${hasErrors(bean:employee,field:'designation','errors')}'>
                   <input type="text" name="designation" />
              </td>
           </tr>
           
           <tr class='prop'>
              <td valign='top' class='nameClear'>
                  <label for="address">Address:</label>
              </td>
              <td valign='top'
                   class='valueClear ${hasErrors(bean:employee,field:'address','errors')}'>
                   <textarea  name="address" rows=12 cols=15 > </textarea>
              </td>
           </tr>
           
           <tr class='prop'>
              <td valign='top'class='nameClear'>
                    <label for="basicSalary">BasicSalary:</label>
              </td>
              <td valign='top'
                     class='valueClear ${hasErrors(bean:employee,field:'basicSalary','errors')}'>
                                  <input type="text" name="basicSalary" />
               </td>
            </tr>
         </tbody>
       </table>
       </div>
       <div class="buttons">
            <span class="button">
                  <input class="save" type="submit" value="Register"></input>
            </span>
       </div>
    </g:form>
  </body>
  
 </html>
