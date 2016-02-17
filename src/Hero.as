package
{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import flash.display.*;
	
	

	public class Hero extends MovieClip
	{
		
		protected var keyUp:Boolean = false;
		protected var keyDown:Boolean = false;
		protected var keyLeft:Boolean = false;
		protected var keyRight:Boolean = false;
		
		private var _keyCodeUp:uint = Keyboard.UP;
		private var _keyCodeDown:uint = Keyboard.DOWN;
		private var _keyCodeLeft:uint = Keyboard.LEFT;
		private var _keyCodeRight:uint = Keyboard.RIGHT;
		
		protected var moveSpeed:Number = 5;
		
		private var _jump:Boolean = false;
		
		public var zwaartekracht:Number = 10;
		public var zwaartekrachtMaximum:Number = 100;
		
		
		public var xPrevious:Number = 0;
		public var yPrevious:Number = 0;
		
	
		
		
		
		public function AddEventListeners()
		{
			stage.addEventListener(KeyboardEvent.KEY_UP, PlayerInput);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, PlayerInput);
			this.addEventListener(Event.ENTER_FRAME, Update);
		}
		
		
		public function SetPlayerInput(keyUp:uint, keyDown:uint, keyLeft:uint, keyRight:uint)
		{
			_keyCodeUp = keyUp;
			_keyCodeDown = keyDown;
			_keyCodeLeft = keyLeft;
			_keyCodeRight = keyRight;
		}
		
		
		private function PlayerInput(e:KeyboardEvent)
		{
			var value:Boolean = false;
			if (e.type == KeyboardEvent.KEY_DOWN)
			{ value = true; }
			
			if (e.keyCode == _keyCodeUp)
			{ keyUp = value; }
			if (e.keyCode == _keyCodeDown)
			{ keyDown = value; }
			if (e.keyCode == _keyCodeLeft)
			{ keyLeft = value; }
			if (e.keyCode == _keyCodeRight)
			{ keyRight = value; }
		}
		
		private function Update(e:Event)
		{
			
			xPrevious = x;
			yPrevious = y;
			
			
			if (keyLeft)
			{ x -= moveSpeed; }
			if (keyRight)
			{ x += moveSpeed; }
			if (keyUp)
			{
				// SPRINGEN:
				if (!_jump)
				{
					zwaartekracht = -zwaartekrachtMaximum;
					_jump = true;
				}
			}
			
			
			
			if (zwaartekracht < zwaartekrachtMaximum)
			{ zwaartekracht++; }
			
			
			y += zwaartekracht;
			
		}
		
		

	}

}