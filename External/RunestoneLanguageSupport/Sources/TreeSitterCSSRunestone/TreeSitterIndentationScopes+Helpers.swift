import Runestone

public extension TreeSitterIndentationScopes {
    static var css: TreeSitterIndentationScopes {
        TreeSitterIndentationScopes(indent: ["block"], outdent: ["}"])
    }
}
