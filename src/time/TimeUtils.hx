package time;

/**
 * ...
 * @author P.J.Shand
 */
class TimeUtils
{
	public static inline function convert(value:Float, from:TimeUnit, to:TimeUnit):Float
	{
		return value * from / to;
	}

	public static inline function milToYears(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.YEARS);
	}

	public static inline function milToMonths(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.MONTHS);
	}

	public static inline function milToDays(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.DAYS);
	}
	
	public static inline function milToHours(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.HOURS);
	}
	
	public static inline function milToMinutes(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.MINUTES);
	}
	
	public static inline function milToSeconds(value:Float):Float
	{
		return convert(value, TimeUnit.MILLISECONDS, TimeUnit.SECONDS);
	}
	
	public static inline function yearsToMil(value:Float):Float
	{
		return convert(value, TimeUnit.YEARS, TimeUnit.MILLISECONDS);
	}

	public static inline function monthsToMil(value:Float):Float
	{
		return convert(value, TimeUnit.MONTHS, TimeUnit.MILLISECONDS);
	}

	public static inline function daysToMil(value:Float):Float
	{
		return convert(value, TimeUnit.DAYS, TimeUnit.MILLISECONDS);
	}
	
	public static inline function hoursToMil(value:Float):Float
	{
		return convert(value, TimeUnit.HOURS, TimeUnit.MILLISECONDS);
	}
	
	public static inline function minutesToMil(value:Float):Float
	{
		return convert(value, TimeUnit.MINUTES, TimeUnit.MILLISECONDS);
	}
	
	public static inline function secondsToMil(value:Float):Float
	{
		return convert(value, TimeUnit.SECONDS, TimeUnit.MILLISECONDS);
	}
}