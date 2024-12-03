struct Rectangle {
    var x: Double
    var y: Double
    var width: Double
    var height: Double

    /// This is equivalent to insetting `self` by `lineWidth / 2` and stroking the
    func stroke(lineWidth: Double) {
        let insetRect = self.insetBy(dx: lineWidth / 2, dy: lineWidth / 2)
        // Assume drawStrokedRectangle is a function that takes a rectangle and a line width
        drawStrokedRectangle(rect: insetRect, lineWidth: lineWidth)
    }

    func insetBy(dx: Double, dy: Double) -> Rectangle {
        return Rectangle(x: self.x + dx, y: self.y + dy, width: self.width - 2 * dx, height: self.height - 2 * dy)
    }
}
