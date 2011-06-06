package com.adobe.lcds.samples.crm.models
{
	[Managed]
	[RemoteClass(alias="flex.samples.crm.company.Company")]
	public class Company
	{
		public var companyId:int;

		public var name:String = "";

		public var address:String = "";

		public var city:String = "";

		public var state:String = "";

		public var zip:String = "";

        public var industry:String = "";
	}
}
