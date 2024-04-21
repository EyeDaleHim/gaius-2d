package gaius.types;

class Signal
{
    public var listeners:Map<String, Array<()->Void>>;

    public function new()
    {
        listeners = new Map<String, Array<()->Void>>();
    }
}