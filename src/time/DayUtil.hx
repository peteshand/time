package time;

/**
 * ...
 * @author P.J.Shand
 */
class MonthUtil
{
	static var shortName:Array<String> =[ "Sun", "Mon", "Tues", "Wed", "Thur", "Fri", "Sat" ];
	static var longName:Array<String> =[ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];

	public static function nameToIndex(name:String):Null<Int>
	{
		for (i in 0...longName.length){
			if (longName.indexOf(name) != -1) return i;
		}
		return null;
	}

	public static function indexToShortName(index:Int):String
	{
		return shortName[index];
	}

	public static function indexToFullName(index:Int):String
	{
		return longName[index];
	}
}