import Foundation

public enum Query {
    public static var highlightsJSXFileURL: URL {
        url(named: "highlights-jsx")
    }

    public static var highlightsParamsFileURL: URL {
        url(named: "highlights-params")
    }

    public static var highlightsFileURL: URL {
        url(named: "highlights")
    }

    public static var injectionsFileURL: URL {
        url(named: "injections")
    }

    public static var localsFileURL: URL {
        url(named: "locals")
    }

    public static var tagsFileURL: URL {
        url(named: "tags")
    }
}

private extension Query {
    static func url(named filename: String) -> URL {
        Bundle.module.url(forResource: filename, withExtension: "scm")!
    }
}
