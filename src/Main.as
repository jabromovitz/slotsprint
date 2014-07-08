package
{
	import flash.display.Shape;
	import flash.display.Sprite;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			var bg:Shape = new Shape();
			bg.x = 0;
			bg.y = 0;
			this.addChild(bg);
			bg.graphics.beginFill(0xff0000);
			bg.graphics.drawRect(0, 0, 400, 300);
			bg.graphics.endFill();
		}
	}
}