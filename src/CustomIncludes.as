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
	import com.dubitplatform.world.avatar.ChatBubble;
	import com.dubitplatform.world.avatar.NameBubble;

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
			ChatBubble,
			NameBubble,
			WorldToolTip
		];
	}
}