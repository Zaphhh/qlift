public struct QLayoutSizeConstraint: OptionSet, Sendable {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }

    public static let SetDefaultConstraint: QLayoutSizeConstraint = []
    public static let SetNoConstraint = QLayoutSizeConstraint(rawValue: 1)
    public static let SetMinimumSize = QLayoutSizeConstraint(rawValue: 2)
    public static let SetFixedSize = QLayoutSizeConstraint(rawValue: 3)
    public static let SetMaximumSize = QLayoutSizeConstraint(rawValue: 4)
    public static let SetMinAndMaxSize = QLayoutSizeConstraint(rawValue: 5)
}
