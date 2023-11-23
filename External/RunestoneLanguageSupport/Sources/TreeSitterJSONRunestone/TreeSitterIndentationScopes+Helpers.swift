import Runestone

public extension TreeSitterIndentationScopes {
    static var json: TreeSitterIndentationScopes {
        TreeSitterIndentationScopes(indent: ["object", "array"], outdent: ["}", "]"])
    }
}
