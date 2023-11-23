import Foundation

public enum Query {
    public static var highlightsFileURL: URL {
        url(named: "highlights")
    }

    public static var localsFileURL: URL {
        url(named: "locals")
    }
}

private extension Query {
    static func url(named filename: String) -> URL {
        Bundle.module.url(forResource: filename, withExtension: "scm")!
    }
}
