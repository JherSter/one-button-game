package {
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	
	
	public class Main extends MovieClip {
		private var txtScore;
		private var score:Number;
		private var speed:Number;
		private var pipes:Array;
		private var gotoWin, gotoLose, playerClicked:Boolean;
		var hero = new Hero;

			public function Main() 
			{
				
				stage.addChild(hero);
				hero.x = stage.stageWidth / 3;
				hero.y = stage.stageHeight / 3;
			}
			
			private function startGame()
			{	
			hero.gotoAndPlay("right");
			score = 0;
			speed = 0;
			
			gotoWin = false;
			gotoLose = false; 
			playerClicked = false;
			
			
			addEventListener(Event.ENTER_FRAME,	update);
			stage.addEventListener(MouseEvent.CLICK,clicked);
			
			stage.focus = this;
			}
			
		    private function handleDraw()
			{
			//Handle display
			txtScore.text = String(score);
			
			}
			private function clicked(evt:MouseEvent)
			{
			playerClicked = true;
			}
		
			public function update(evt:Event)
			{
				
			}
		
				
		}
			
			
	}

	
	

