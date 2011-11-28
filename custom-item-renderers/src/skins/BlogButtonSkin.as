package skins
{
	import skins.assets.BlogButtonDownIcon;
	import skins.assets.BlogButtonIcon;
	import skins.assets.TwitterButtonDownIcon;
	import skins.assets.TwitterButtonIcon;
	
	import spark.skins.mobile.ButtonSkin;
	
	public class BlogButtonSkin extends ButtonSkin
	{
		public function BlogButtonSkin()
		{
			super();
			
			upBorderSkin = BlogButtonIcon;
			downBorderSkin = BlogButtonDownIcon;
			
			measuredDefaultHeight = 45;
			measuredDefaultWidth = 45;
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
		}
	}
}