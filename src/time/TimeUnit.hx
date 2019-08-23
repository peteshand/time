package time;

/**
 * ...
 * @author P.J.Shand
 */
@:enum abstract TimeUnit(Float) to Float {
	
	public var MILLISECONDS = 1;
	public var SECONDS = 1000;
	public var MINUTES = 60000;
	public var HOURS = 3600000;
	public var DAYS = 86400000;
	public var MONTHS = 2629800000; // 86400000 * 365.25 / 12
	public var YEARS = 31557600000; // 86400000 * 365.25
}