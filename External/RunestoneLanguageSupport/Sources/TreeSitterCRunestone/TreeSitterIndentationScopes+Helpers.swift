import Runestone

public extension TreeSitterIndentationScopes {
    static var c: TreeSitterIndentationScopes {
        TreeSitterIndentationScopes(
            indent: [
                "compound_statement",
                "parameter_list",
                "initializer_list",
            ],
            outdent: ["}"]
        )
    }
}
