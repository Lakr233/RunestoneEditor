import Foundation

public enum Query {
    public static var highlightsFileURL: URL {
        url(named: "highlights")
    }
}

private extension Query {
    static func url(named filename: String) -> URL {
        Bundle.module.url(forResource: filename, withExtension: "scm")!
    }
}
