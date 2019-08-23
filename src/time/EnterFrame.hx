package time;

import notifier.Notifier;
#if openfl
import openfl.Lib;
import openfl.display.Stage;
import openfl.events.Event;
#else
import haxe.Timer;
#end

/**
 * ...
 * @author P.J.Shand
 */
class EnterFrame {
	static var tick:Tick;
	static var callbacks:Array<Void->Void>;
	static var initialized:Bool = false;

	static function init() {
		if (initialized)
			return;

		callbacks = new Array<Void->Void>();

		tick = new Tick(onTick);
		initialized = true;
	}

	private static function onTick():Void {
		var i = 0;
		while (i < callbacks.length) {
			var callback = callbacks[i];
			if (callback != null) {
				callback();
				i++;
			} else {
				callbacks.splice(i, 1);
			}
		}
	}

	static public function add(callback:Void->Void):Void {
		EnterFrame.init();
		tick.running.value = true;
		callbacks.push(callback);
	}

	static public function addAt(callback:Void->Void, index:Int):Void {
		EnterFrame.init();
		tick.running.value = true;
		callbacks.insert(index, callback);
	}

	static public function remove(callback:Void->Void):Void {
		EnterFrame.init();
		var i:Int = callbacks.length - 1;
		while (i >= 0) {
			if (callbacks[i] == callback) {
				callbacks.splice(i, 1);
			}
			i--;
		}
		if (callbacks.length == 0) {
			tick.running.value = false;
		}
	}
}

#if openfl
class Tick extends BaseTick {
	@:isVar var stage(get, null):Stage;

	function get_stage() {
		if (stage == null) {
			stage = Lib.current.stage;
		}
		return stage;
	}

	override function start() {
		stage.addEventListener(Event.ENTER_FRAME, update);
	}

	override function stop() {
		stage.removeEventListener(Event.ENTER_FRAME, update);
	}

	private inline function update(e:Event):Void {
		callback();
	}
}
#else
class Tick extends BaseTick {
	var timer:Timer;
	var fps:Int = 60;

	override function start() {
		stop();
		timer = new Timer(Std.int(1000 / fps));
		timer.run = callback;
	}

	override function stop() {
		if (timer != null)
			timer.stop();
	}
}
#end

class BaseTick {
	var callback:Void->Void;

	public var running = new Notifier<Bool>(false);

	public function new(callback:Void->Void) {
		this.callback = callback;
		running.add(onRunningChange);
	}

	function onRunningChange() {
		if (running.value) {
			start();
		} else {
			stop();
		}
	}

	function start() {
		// override
	}

	function stop() {
		// override
	}
}
