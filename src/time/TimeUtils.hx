package time;

/**
 * ...
 * @author P.J.Shand
 */
class TimeUtils
{
	public static inline function convert(value:Float, from:Float, to:Float):Float
	{
		return value * from / to;
	}

	public static function milToYears(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.YEARS);
	public static function milToMonths(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.MONTHS);
	public static function milToDays(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.DAYS);
	public static function milToHours(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.HOURS);
	public static function milToMinutes(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.MINUTES);
	public static function milToSeconds(value:Float):Float return convert(value, TimeUnit.MILLISECONDS, TimeUnit.SECONDS);
	
	public static function yearsToMil(value:Float):Float return convert(value, TimeUnit.YEARS, TimeUnit.MILLISECONDS);
	public static function monthsToMil(value:Float):Float return convert(value, TimeUnit.MONTHS, TimeUnit.MILLISECONDS);
	public static function daysToMil(value:Float):Float return convert(value, TimeUnit.DAYS, TimeUnit.MILLISECONDS);
	public static function hoursToMil(value:Float):Float return convert(value, TimeUnit.HOURS, TimeUnit.MILLISECONDS);
	public static function minutesToMil(value:Float):Float return convert(value, TimeUnit.MINUTES, TimeUnit.MILLISECONDS);
	public static function secondsToMil(value:Float):Float return convert(value, TimeUnit.SECONDS, TimeUnit.MILLISECONDS);
}