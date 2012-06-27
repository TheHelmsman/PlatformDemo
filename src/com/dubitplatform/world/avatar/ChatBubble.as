package com.dubitplatform.world.avatar
{
	import uk.co.dubit.graphics.render2D.types.ChatBubble2D;
	
	/**
	 * Sample avatar chat bubble.  This is the view which displays a chat bubble in the chat room when a player speaks
	 */
	public class ChatBubble extends ChatBubble2D
	{
		[Embed(source="../assets/embeds/chat_bubble/bubble.png")]
		private var BubbleData:Class;
		
		[Embed(source="../assets/embeds/chat_bubble/tail.png")]
		private var TailData:Class;  
		
		public function ChatBubble(name:String)
		{
			super(name);
			
			// Config data used to correctly scale the chat bubble
			speechBubbleData = {
				"left": 9,
				"right": 9,
				"top": 4,
				"bottom": 8,
				"tailHeight": 15,
				"bubbleBitmapData": new BubbleData().bitmapData,
				"tailBitmapData": new TailData().bitmapData
			}
		}
	}
}