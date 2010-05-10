package com.unifier.sede{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.text.*;

	class SidePane extends Sprite{
		var _bg:Shape;
		var nav:NavigationViewTool;
		public function SidePane(){
			nav = new NavigationViewTool();
			nav.x = nav.y = 5;
			nav.width = nav.height = 35;
			addChild(nav);
		}
		public function layout(h:int){
		}
	}
}

