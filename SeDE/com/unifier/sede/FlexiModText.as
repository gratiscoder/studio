package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;

	class FlexiModText extends FlexiText{
		public function FlexiModText(bg:DisplayObject, tf:TextFormat, h:int=25, gap:int=2){
			super(bg, tf, h, gap);
			_txt.autoSize = TextFieldAutoSize.LEFT;
			_txt.addEventListener(Event.CHANGE, stat);
			_txt.addEventListener(FocusEvent.FOCUS_OUT, fout);
			//_txt.border = true;
			stat(null);
		}
		public function fout(e:Event){
			_txt.type = TextFieldType.DYNAMIC;
		}
		public function activate(){
			_txt.type = TextFieldType.INPUT;
			stage.focus = _txt;
			_txt.setSelection(0,_txt.text.length);
		}
		public function stat(e:Event){
			_bg.width = (_txt.textWidth+5)*21/20;
		}
	}
}

