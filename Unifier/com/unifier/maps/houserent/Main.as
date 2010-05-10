package com.unifier.maps.houserent
{
	import flash.display.*;
	import flash.events.*;
	import flash.geom.*;
	import com.google.maps.*;
	import com.google.maps.overlays.*;
	//import com.google.maps.Map;
	//import com.google.maps.MapEvent;
	//import com.google.maps.MapType;

	public class Main extends Sprite
	{
		var map:Map;
		var mkr:Marker;
		public function Main(stg:Stage)
		{
			addEventListener(Event.ADDED_TO_STAGE, run);
		}
		public function clicked(e:MouseEvent)
		{
			var cc:Clicked = new Clicked();
			cc.x = e.localX;
			cc.y = e.localY;
			addChild(cc);
			
		}
		public function run(e:Event)
		{
			map = new Map();
			map.key = "ABQIAAAA9B6lM_JmM5RZ5S_XnV-w3RTgmbSHJywmVnBciMVKHvX8kg_y7hSBSrvxk4kWMfEK0pFDKP_bDMbj5Q";
			map.setSize(new Point(stage.stageWidth, stage.stageHeight));
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, handleResize);

			map.addEventListener(MapEvent.MAP_READY, onMapReady);
			map.addEventListener(MouseEvent.CLICK, clicked);
			this.addChild(map);
		}
		public function calcLatLng():LatLng {
			  var bounds:LatLngBounds = map.getLatLngBounds();
			  var northEast:LatLng = bounds.getNorthEast();
			  var southWest:LatLng = bounds.getSouthWest();
			  var newlng:Number = southWest.lng() + (northEast.lng() - southWest.lng())/3;
			  var newlat:Number = southWest.lat() + (northEast.lat() - southWest.lat())/3;
			  return new LatLng(newlat, newlng);
		}
		public function onMapReady(event:Event) {
			  map.setCenter(new LatLng(40.736072,-73.992062), 14, MapType.NORMAL_MAP_TYPE);
			  mkr = new Marker(calcLatLng());
			  map.addOverlay(mkr);
			  map.enableScrollWheelZoom();
		}

		public function handleResize(e:Event) {
			map.setSize(new Point(stage.stageWidth, stage.stageHeight));
			mkr.setLatLng(calcLatLng());
		}
	}
}

