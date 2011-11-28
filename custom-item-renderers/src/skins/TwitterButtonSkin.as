package skins
{
	import skins.assets.TwitterButtonDownIcon;
	import skins.assets.TwitterButtonIcon;
	
	import spark.skins.mobile.ButtonSkin;
	
	public class TwitterButtonSkin extends ButtonSkin
	{
		public function TwitterButtonSkin()
		{
			super();
			
			upBorderSkin = TwitterButtonIcon;
			downBorderSkin = TwitterButtonDownIcon;
			
			measuredDefaultHeight = 45;
			measuredDefaultWidth = 45;
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
		}
	}
}