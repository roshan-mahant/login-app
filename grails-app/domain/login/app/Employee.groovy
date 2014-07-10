package login.app

class Employee {
	String name
	String designation
	String address
	String password
	int basicSalary
	
	static constraints = {
		name(blank:false)
		password(password:true,blank:false)
		designation(nullable:true)
		address(maxSize:1000, nullable:true)
		basicSalary(blank:false)
    }
}
