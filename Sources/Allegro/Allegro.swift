import CAllegro

public enum Allegro {
    public static var version : String {
        return String(cString:_cAllegroVersion)
    }
    public static func initialize()->Bool{
        return al_init()
    }
}
