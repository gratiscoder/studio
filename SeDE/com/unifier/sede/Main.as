package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;
	import com.carlcalderon.arthropod.Debug;

	public class Main extends Sprite{
		var t:TitleBar;
		var sp:SidePane;
		public static var stb:StatusBar;
		public static const MARGIN:int = 5;
		public static const SPACING:int = 2;

		public function Main(par:DisplayObjectContainer){
			if (!par){
				throw new Error("Main's parent is null");
			}
			par.addChild(this);
			stage.scaleMode=StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, resiz);
			//stage.addEventListener(MouseEvent.MOUSE_MOVE, mmove);
			stage.addEventListener(KeyboardEvent.KEY_UP, kbf);
			stage.stageFocusRect = false;

			t = new TitleBar();
			t.x = MARGIN;
			t.y = MARGIN;
			addChild(t);
			t._txt.text = "Semantic Development Environment (SeDE)";

			stb = new StatusBar();
			stb.x = MARGIN;
			addChild(stb);
			stb._txt.text = "This is the status bar text";

			sp = new SidePane();
			sp.x = MARGIN;
			sp.y = t.y+t.height+2*SPACING;
			addChild(sp);
			resiz(null);
		}
		public function mmove(e:MouseEvent){
			root["_txt"].text = e.stageX+","+e.stageY;
		}
		public function kbf(e:KeyboardEvent){
			stb._txt.text = "foc: "+stage.focus;
			if (stage.focus){
				if (e.keyCode == Keyboard.ESCAPE){
					stage.focus = null;
				}
			} else {
				switch(e.keyCode){
					case Keyboard.F11:
						stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
						break;
					case Keyboard.I:
						{
							var c:FlexiModText = new FlexiModText(new RRectBlu(), new TextFormat("Courier New", 12));
							c.x = stage.mouseX;
							c.y = stage.mouseY;
							addChild(c);
							c.activate();
							//c.layout(50);
						}
						break;
					case Keyboard.ENTER:
						stb._txt.text = "";
						break;
				}
			}
		}
		public function resiz(e:Event) {
			t.layout(stage.stageWidth-MARGIN);
			stb.y = stage.stageHeight-stb.height-MARGIN;
			sp.layout(stb.y-sp.y);
			stb.layout(t.width-MARGIN);
		}
		public static function setStatus(s:String){
			stb._txt.text = s;
		}
	}
}

