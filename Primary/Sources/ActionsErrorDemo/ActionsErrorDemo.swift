import geos

public struct ActionsErrorDemo {
    public func run() {
        let c = GEOS_init_r()
        GEOS_finish_r(c)
    }
}
