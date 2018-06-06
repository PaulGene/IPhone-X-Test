package;

import openfl.Lib;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;

/**
 * @author Paul Gene Thompson
 */
class Main extends Sprite
{
	var button1:Sprite = null;
	var button2:Sprite = null;

    public function new():Void
	{
		super();

        stage.addEventListener(Event.RESIZE, onResize);
	}

    private function onResize(e:Event):Void
	{
        trace("RESIZE", Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);

        if (button1 == null)
        {
            button1 = new Sprite();
            Lib.current.stage.addChild(button1);
            button1.addEventListener(MouseEvent.CLICK, onButton1);
        }
        button1.x = 0;
        button1.y = 0;
        button1.graphics.clear();
		button1.graphics.beginFill(0xff0000);
		button1.graphics.drawRect(0, 0, Lib.current.stage.stageWidth / 2, Lib.current.stage.stageHeight);
		button1.graphics.endFill();

        if (button2 == null)
        {
            button2 = new Sprite();
            Lib.current.stage.addChild(button2);
            button2.addEventListener(MouseEvent.CLICK, onButton2);
        }
        button2.x = Lib.current.stage.stageWidth / 2;
        button2.y = 0;
        button2.graphics.clear();
		button2.graphics.beginFill(0x00ff00);
		button2.graphics.drawRect(0, 0, Lib.current.stage.stageWidth / 2, Lib.current.stage.stageHeight);
		button2.graphics.endFill();
	}

	private function onButton1(e:MouseEvent):Void
	{
        trace("BUTTON 1", Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);

        if (button1.alpha == 1)
			button1.alpha = 0.1;
		else
			button1.alpha = 1;
	}

	private function onButton2(e:MouseEvent):Void
	{
        trace("BUTTON 2", Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);

        if (button2.alpha == 1)
			button2.alpha = 0.1;
		else
			button2.alpha = 1;
	}
}
