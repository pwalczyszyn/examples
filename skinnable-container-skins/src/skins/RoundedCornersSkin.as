package skins
{
	import skins.assets.SkinnableContainerBackground;
	
	import spark.core.SpriteVisualElement;
	import spark.skins.mobile.SkinnableContainerSkin;
	
	public class RoundedCornersSkin extends SkinnableContainerSkin
	{
		
		private var background:SpriteVisualElement;
		
		public function RoundedCornersSkin()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			background = new SkinnableContainerBackground;
			addChild(background);
			
			super.createChildren();
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
		}
		
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.layoutContents(unscaledWidth, unscaledHeight);
			
			setElementPosition(background, 0, 0);
			setElementSize(background, unscaledWidth, unscaledHeight);
			
		}
		
		
		
	}
}