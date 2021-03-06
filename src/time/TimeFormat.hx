package time;

class TimeFormat
{
    public static function milToMinSec(milliseconds:Float):String
    {
        return secToMinSec(TimeUtils.milToSeconds(milliseconds));
    }

    public static function secToMinSec(seconds:Float, sep:String=":"):String
    {
        var minutes:Int = Math.floor(seconds / 60);
        var sec:Int = Math.round(seconds - (minutes * 60));
        return pad(minutes) + sep + pad(sec);
    }

    public static function secToSecMilli(value:Float, sep:String=":"):String
    {
        var sec:Int = Math.floor(value / 1000);
        var milli:String = Std.string(value);
        var l:Int = 3;
        if (milli.length < 3) l = milli.length;
        var p:Int = milli.length - l;
        if (l > 2) l = 2;
        milli = milli.substr(p, l);
        if (milli.length == 1) milli = "0" + milli;
        return pad(sec) + sep + milli;
    }

    static function pad(value:Int):String
    {
        var strVal:String = Std.string(value);
        if (strVal.length == 1) strVal = "0" + strVal;
        return strVal.substr(0, 2);
    }
}