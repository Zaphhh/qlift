import Qlift

// Initialize the application
let app = QApplication()

// Create the main window
let window = QMainWindow()
window.windowTitle = "Counter Example"

// Create a central widget and a horizontal layout
let centralWidget = QWidget()
let layout = QHBoxLayout()

// Create a label to display the counter
let counterLabel = QLabel()
counterLabel.text = "0"
counterLabel.alignment = .AlignCenter

// Create an increment button and set its properties
let incrementButton = QPushButton()
incrementButton.text = "+"

// Create a decrement button and set its properties
let decrementButton = QPushButton()
decrementButton.text = "-"

// Initialize the counter variable
var counter = 0

// Connect the increment button's click event to a function
incrementButton.connectClicked {
    counter += 1
    counterLabel.text = "\(counter)"
}

// Connect the decrement button's click event to a function
decrementButton.connectClicked {
    counter -= 1
    counterLabel.text = "\(counter)"
}

// Add widgets to the horizontal layout
layout.add(widget: decrementButton)
layout.add(widget: counterLabel)
layout.add(widget: incrementButton)

// Set the layout to the central widget
centralWidget.layout = layout

// Set the central widget of the window
window.centralWidget = centralWidget

// Show the window
window.show()

// Execute the application
app.exec()