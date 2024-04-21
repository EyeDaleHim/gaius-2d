package gaius.types;

class Vector
{
    public var x:Float = 0.0;
    public var y:Float = 0.0;

    public function new(?x:Float = 0.0, ?y:Float = 0.0)
    {
        this.x = x;
        this.y = y;
    }
}