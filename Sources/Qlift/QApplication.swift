import CQlift


public class QApplication: QGuiApplication {
    private var argc = CommandLine.argc

    public override init() {
        super.init(ptr: QApplication_new(&argc, CommandLine.unsafeArgv))
        QCoreApplication.instance = self
    }

    deinit {
        checkDeleteQtObj()
    }

    @discardableResult
    public func setStyle(_ style: String) -> Bool {
        QApplication_set_style(ptr, style)
    }
}

