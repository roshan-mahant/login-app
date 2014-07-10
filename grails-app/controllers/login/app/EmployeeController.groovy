package login.app

class EmployeeController {
	
	 static scaffold = Employee
	 
	 def empRegister(){}
	 
	 def handleEmpRegistration()
	 {
		 def employee = new Employee()
		 log.info("HANDLE REGISTRATION")
// using the log.info here will only print out the object, not a listing of it
		 println params
// create the property object
		 employee.properties = params
		 if(params.name!= null)
		 {
			 if(params.password != params.confirm) {
				 flash.message = "The two passwords you entered dont match!"
				 render(view:'empRegister', model:[employee:employee])
			}
			 else {
				 log.info "before save"
				 if(employee.save()) {
					 log.info "saved redirecting to user controller"
     				 redirect(controller:'employee') 
				 }
				 else {
					 log.info "didn't save"
					 println "didn't save"
					 flash.employee = employee
					 render(view:'empRegister', model:[employee:employee])
				 }
			 }
		}
		 else{
			 flash.message= "please fill the required field"
			 render(view:'empRegister', model:[employee:employee])
		 }
		 
	 }
	 
	 
	 
	 def empLogin(){}
	 
	 def handleEmpLogin() { 
		 def employee = Employee.findByNameAndPassword(params.name,params.password) 
		 if (!employee) { 
			 flash.message = "Employee not found for name: ${params.name}" 
			 redirect(action:'empLogin') 
			 return 
			 } 
		 else { 
			 session.employee = employee 
			 redirect(controller:'employee') 
			 } 
		 }
	
	  def logout() { 
		  if(session.employee) 
		  { 
			  session.employee = null 
			  redirect(action:'empLogin') 
		  } 
	  }
}