package com.adobe.lcds.samples.inventory.models
{
	[Bindable]
	[RemoteClass(alias="flex.samples.product.Product")]
	public class Product
	{
		public function Product()
		{
		}
		
		public var productId:int;
		
		public var name:String;
		
		public var category:String;
		
		public var price:Number = 0;
		
		public var image:String;
		
		public var description:String;
		
		public var qtyInStock:int = 0;
		
	}
}