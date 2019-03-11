package time;

/**
 * ...
 * @author P.J.Shand
 */
class MonthUtil
{
	static var shortName:Array<String> = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ];
	static var longName:Array<String> = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
	
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