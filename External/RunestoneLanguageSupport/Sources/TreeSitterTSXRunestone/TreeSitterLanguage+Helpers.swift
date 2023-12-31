import Foundation
import Runestone
import TreeSitterJavaScriptQueries
import TreeSitterTSX
import TreeSitterTSXQueries

public extension TreeSitterLanguage {
    static var tsx: TreeSitterLanguage {
        let highlightsQuery = combinedQuery(fromFilesAt: [
            TreeSitterJavaScriptQueries.Query.highlightsFileURL,
            TreeSitterJavaScriptQueries.Query.highlightsJSXFileURL,
            TreeSitterTSXQueries.Query.highlightsFileURL,
        ])
        return TreeSitterLanguage(tree_sitter_tsx(), highlightsQuery: highlightsQuery)
    }
}

private extension TreeSitterLanguage {
    private static func combinedQuery(fromFilesAt fileURLs: [URL]) -> TreeSitterLanguage.Query? {
        let rawQuery = fileURLs.compactMap { try? String(contentsOf: $0) }.joined(separator: "\n")
        if !rawQuery.isEmpty {
            return TreeSitterLanguage.Query(string: rawQuery)
        } else {
            return nil
        }
    }
}
