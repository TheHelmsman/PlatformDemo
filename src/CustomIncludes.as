package
{
	import com.dubitplatform.views.InterfaceView;
	import com.dubitplatform.views.avatarCreator.LoginOrCreateAvatarView;
	import com.dubitplatform.views.backpack.BackpackView;
	import com.dubitplatform.views.dialogue.DialogueView;
	import com.dubitplatform.views.experience.ExperienceBarsView;
	import com.dubitplatform.views.map.MapView;
	import com.dubitplatform.views.room.ChangeRoomView;
	import com.dubitplatform.views.room.ChatRoomView;
	import com.dubitplatform.world.WorldToolTip;
	
	import flash.net.registerClassAlias;

	/**
	 *  This file should include references to your custom GAML skins/behaviours which otherwise would not
	 *  automatically be included in the Flex compile process
	 */
	public class CustomIncludes
	{
		private var exampleViews:Array = [
			// These are the Flex UI components used in the world
			LoginOrCreateAvatarView,
			BackpackView,
			ChatRoomView,
			ChangeRoomView,
			DialogueView,
			ExperienceBarsView,
			InterfaceView,
			MapView
		];
		
		private var exampleWorldComponents:Array = [
			// These are visual components used in the world itself.
			WorldToolTip
		];
		
		// Embedded assets with class aliases required to allow GAML to reference them
		
		[Embed(source="assets/embeds/avatar_animation_data.dat", mimeType="application/octet-stream")]
		private var avatarAnimationData:Class;
		
		[Embed(source="assets/embeds/chat_bubble/body.png")]
		private var chatBubbleBody:Class;
		
		[Embed(source="assets/embeds/chat_bubble/tail.png")]
		private var chatBubbleTail:Class;
		
		public function CustomIncludes()
		{
			registerClassAlias("AnimationData" ,avatarAnimationData);
			registerClassAlias("ChatBubbleBody" ,avatarAnimationData);
			registerClassAlias("ChatBubbleTail" ,avatarAnimationData);
		}
	}
}