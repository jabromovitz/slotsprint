package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class SSSprite extends Sprite
	{		
		private var myWidth:Number;
		private var myHeight:Number;
		public var hasInitBeenCalled:Boolean = false;
		
		public function SSSprite($myWidth:Number, $myHeight:Number)
		{
			super();
			width = $myWidth;
			height = $myHeight;
			addEventListener(Event.ADDED_TO_STAGE, hasBeenAddedToStage);
		}
		
		
		private function hasBeenAddedToStage(e:Event):void
		{
			if(!hasInitBeenCalled)
				init(e);
			
		}
		
		protected function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			hasInitBeenCalled = true;
		}
		
		// Getters/Setters
		override public function get width():Number
		{
			return myWidth;
		}
		
		
		override public function set width($width:Number):void
		{
			myWidth = $width;
		}
		
		override public function get height():Number
		{
			return myHeight
		}
		
		override public function set height($height:Number):void
		{
			myHeight = $height;
		}
		
		
	}
}