package com.riaspace.helpers
{
	import mx.collections.ArrayList;
	import mx.collections.errors.ItemPendingError;
	import mx.events.FlexEvent;
	
	[Event(name="initialize", type="mx.events.FlexEvent")]
	public class PagedArrayList extends ArrayList
	{

		private var _itemsCount:int;
		
		public function PagedArrayList(source:Array=null)
		{
			super(source);
		}
		
		public function set length(value:int):void
		{
			_itemsCount = value;
			
			if (hasEventListener(FlexEvent.INITIALIZE))
				dispatchEvent(new FlexEvent(FlexEvent.INITIALIZE));
		}
		
		override public function get length():int
		{
			return _itemsCount;
		}
		
		override public function getItemAt(index:int, prefetch:int=0):Object
		{
			var item:Object = super.getItemAt(index, prefetch);
			if (!item)
				throw new ItemPendingError("Requested item is not loaded yet!");
			
			return item; 
		}
		
		override public function toArray():Array
		{
			if (source.length != _itemsCount)
				throw new ItemPendingError("Source not fully loaded yet!");
			
			return source.concat();
		}
	}
}