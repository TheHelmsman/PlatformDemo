package com.dubitplatform.shared
{
	import com.hybrid.ui.ToolTip;
	
	import flash.display.DisplayObject;
	import flash.text.TextFormat;
	
	/**
	 * This tooltip uses a 3rd party tooltip library (available @ http://blog.hy-brid.com/flash/25/simple-as3-tooltip/)
	 */
	public class DemoToolTip extends ToolTip
	{
		public static function show(displayObject:DisplayObject, message:String) : void
		{
			new DemoToolTip().show(displayObject, message);
		}
		
		public function DemoToolTip()
		{
			var textFormat:TextFormat = new TextFormat("_sans", 14, 0xFFFFFF, true);
			textFormat.align = "center";
			
			titleFormat = textFormat;
			autoSize = true;
			bgAlpha = 0.9;
			colors = [0x71a430, 0xb9d318];
			cornerRadius = 16;
			border = 0xd1ad53;
			borderSize = 3;
			buffer = 5;
			timeout = 7500;
		}
	}
}