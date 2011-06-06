package com.adobe.lcds.samples.crm.models
{
	[Managed]
	[RemoteClass(alias="flex.samples.crm.employee.Employee")]
	public class Employee
	{
		public function Employee() {}
		
		public var employeeId:int;

		public var firstName:String = "";

		public var lastName:String = "";

		public var title:String = "";

		public var phone:String = "";

		public var email:String = "";

		public var company:Company;
	}
}
