import UIKit

class GradientView: UIView {

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let colors = [UIColor.red.cgColor, UIColor.blue.cgColor] as CFArray
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: nil)!
        
        let startPoint = CGPoint(x: rect.midX, y: rect.minY)
        let endPoint = CGPoint(x: rect.midX, y: rect.maxY)
        
        context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: [])
    }
}
