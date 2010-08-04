package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;

	class Controller extends Sprite{
		public var links:Vector<Link>;
		public function Controller(){//bg:DisplayObject, tf:TextFormat, h:int=25, gap:int=2){
			/*
			super(bg, tf, h, gap);
			_txt.type = TextFieldType.INPUT;
			_txt.autoSize = TextFieldAutoSize.LEFT;
			_txt.addEventListener(Event.CHANGE, stat);
			//_txt.border = true;
			stat(null);
			*/
		}
		public function stat(e:Event){
			//_bg.width = (_txt.textWidth+5)*21/20;
		}
		public function func(){
			return new Controller();
		}
	}
}

