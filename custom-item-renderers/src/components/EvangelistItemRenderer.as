package components
{
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	import mx.core.FlexSprite;
	
	import skins.BlogButtonSkin;
	import skins.TwitterButtonSkin;
	
	import spark.components.Button;
	import spark.components.IconItemRenderer;
	import spark.components.supportClasses.StyleableTextField;
	
	public class EvangelistItemRenderer extends IconItemRenderer
	{
		
		private var btnTwitter:Button;
		
		private var btnBlog:Button;
		
		private var locationDisplay:StyleableTextField;
		
		private var bioDisplay:StyleableTextField;
		
		public function EvangelistItemRenderer()
		{
			super();
			
			super.labelField = "name";
			super.messageField = "jobtitle";
			
			super.iconWidth = super.iconHeight = 80;
			super.iconFunction = function(value:Object):String { return String(data.profileimage); };
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
//			bioDisplay.text = value.bio;
			locationDisplay.text = value.location;
		}
		
		override protected function createChildren():void
		{
			// Creating and adding location label
			locationDisplay = createLabelField();
			addChild(locationDisplay);
			
			// Creating and adding bio label
//			bioDisplay = createLabelField(true, true);
//			addChild(bioDisplay);
			
			// Creating and adding blog button
			btnBlog = new Button;
			btnBlog.setStyle("skinClass", BlogButtonSkin);
			btnBlog.addEventListener(MouseEvent.CLICK, 
				function(event:MouseEvent):void {navigateToURL(new URLRequest(data.social.blog));});
			addChild(btnBlog);
			
			// Creating and adding twitter button
			btnTwitter = new Button;
			btnTwitter.setStyle("skinClass", TwitterButtonSkin);
			btnTwitter.addEventListener(MouseEvent.CLICK, 
				function(event:MouseEvent):void {navigateToURL(new URLRequest("http://twitter.com/" + data.social.twitter))});
			addChild(btnTwitter);
		}
		
		protected function createLabelField(multiline:Boolean = false, wordWrap:Boolean = false):StyleableTextField
		{
			var labelField:StyleableTextField = StyleableTextField(createInFontContext(StyleableTextField));
			labelField.styleName = this;
			labelField.editable = false;
			labelField.selectable = false;
			labelField.multiline = multiline;
			labelField.wordWrap = wordWrap;
			labelField.setStyle("fontSize", 14);
			labelField.setStyle("color", 0x333333);
			labelField.setStyle("fontWeight", "normal");
			
			return labelField;
		}
		
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			// Positioning and sizing icon with evangelist picture 
			setElementSize(iconDisplay, iconWidth, iconHeight);
			setElementPosition(iconDisplay, unscaledWidth - iconWidth - 10, 10);
			
			// Positioning and sizing label with evangelist name
			setElementPosition(labelDisplay, 10, 15);
			setElementSize(labelDisplay, unscaledWidth - 100, getElementPreferredHeight(labelDisplay));
			
			// Positioning and sizing label with evangelist role
			setElementPosition(messageDisplay, 10, labelDisplay.y + getElementPreferredHeight(labelDisplay) + 20);
			setElementSize(messageDisplay, unscaledWidth - 100, getElementPreferredHeight(messageDisplay));
			
			// Positioning and sizing label with evangelist location
			setElementPosition(locationDisplay, 10, messageDisplay.y + getElementPreferredHeight(messageDisplay) + 20);
			setElementSize(locationDisplay, unscaledWidth - 100, getElementPreferredHeight(locationDisplay));
			
			// Positioning and sizing label with evangelist bio
//			setElementPosition(bioDisplay, 10, locationDisplay.y + getElementPreferredHeight(locationDisplay) + 20);
//			setElementSize(bioDisplay, unscaledWidth - 110, unscaledHeight - bioDisplay.y - 15);
//			bioDisplay.truncateToFit();
			
			// Positioning and sizing blog button
			setElementPosition(btnBlog, iconDisplay.x + 1, iconDisplay.y + iconDisplay.height + 15);
			setElementSize(btnBlog, 35, 35);
			
			// Positioning and sizing twitter button
			setElementPosition(btnTwitter, iconDisplay.x + btnBlog.width + 10, iconDisplay.y + iconDisplay.height + 15);
			setElementSize(btnTwitter, 35, 35);
		}
		
		override protected function measure():void
		{
			// Setting item renderer fixed size
			measuredWidth = measuredMinWidth = 250;
			measuredHeight = measuredMinHeight = 150;
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
			// Drawing light gray background
			graphics.beginFill(0xf1f1f1, 0.5);
			graphics.drawRect(0, 0, unscaledWidth, unscaledHeight);
			graphics.endFill();
		}
	}
}