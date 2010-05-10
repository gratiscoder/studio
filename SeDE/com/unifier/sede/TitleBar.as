package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;

	class TitleBar extends FlexiText{
		public function TitleBar(){
			var tf:TextFormat = new TextFormat("Verdana", 14);
			tf.bold = true;
			tf.align = TextFormatAlign.CENTER;
			super(new RRectBlu, tf, 25, 2);
		}
	}
}

