package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;

	class FlexiText extends Sprite{
		public var _txt:TextField;
		var _bg:DisplayObject;
		public function FlexiText(bg:DisplayObject, tf:TextFormat, h:int=25, gap:int=2){
			_bg = bg;
			addChild(_bg);
			_bg.height = h;
			_txt = new TextField();
			_txt.defaultTextFormat = tf;
			addChild(_txt);
			_txt.x = _txt.y = gap;
			_txt.text = "initial text";
			_txt.height = _bg.height-gap*2+1;
		}
		public function layout(w:int,h:int=0){
			_bg.width = w;
			_txt.width = _bg.width*97/100;
			if (h>0){
				_bg.height = h;
				_txt.height = _bg.height*97/100;
			}
		}
	}
}

