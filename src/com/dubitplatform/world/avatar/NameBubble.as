package com.dubitplatform.world.avatar
{
	import flash.filters.DropShadowFilter;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import uk.co.dubit.graphics.render2D.materials.TextMaterial;
	
	/**
	 * Sample avatar name bubble.  This is the view which displays the name of the avatar in the chat room
	 */
	public class NameBubble extends TextMaterial
	{
		public function NameBubble(name:String, centre:Boolean=false)
		{
			super(name, centre);
		}
		
		// Override to format the text field as appropriate
		override public function createTextField(text:String, centre:Boolean) : TextField
		{
			var textField:TextField = super.createTextField(text, centre);
			
			textField.background = true;
			textField.backgroundColor = 0xFFFFFF;

			textField.border = true;
			textField.borderColor = 0x000000;
			
			textField.textColor = 0x000000;
			textField.filters = [ new DropShadowFilter() ];
			
			return textField;
		}
	}
}