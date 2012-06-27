package com.dubitplatform.world
{
	import com.dubitplatform.shared.DemoToolTip;
	import com.hybrid.ui.ToolTip;
	
	import uk.co.dubit.graphics.render2D.tooltip.AbstractToolTip;
	
	/** 
	 * The world tooltip uses the same tooltip as used in the Flex UI.  This class is simply a wrapper around it.  Any
	 * class which implements the IToolTip interface (or extends the AbstractToolTip class which implements the interface)
	 * can be used as a tooltip in the world. 
	 */ 
	public class WorldToolTip extends AbstractToolTip
	{	
		private var toolTip:ToolTip;
		
		public function WorldToolTip()
		{
			toolTip = new DemoToolTip();
		}
		
		override public function show() : void
		{
			if(toolTipText) toolTip.show(renderObject.displayObject.sprite, toolTipText);
		}
		
		override public function hide() : void
		{
			// Tooltip will hide itself
		}
		
		override public function destroy() : void
		{
			if(! destroyed)
			{
				toolTip.hide();
				toolTip = null;
				
				super.destroy();
			}
		}
	}
}