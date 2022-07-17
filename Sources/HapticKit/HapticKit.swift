import SwiftUI

@available(iOS 14.0, *)
extension View {
    func notificationFeedback<V: Equatable>(
        _ type: UINotificationFeedbackGenerator.FeedbackType, value: V
    ) -> some View {
        self.onChange(of: value) { _ in
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            generator.notificationOccurred(type)
        }
    }
    
    func impactFeedback<V: Equatable>(
        _ style: UIImpactFeedbackGenerator.FeedbackStyle = .light, value: V,
        ignoredValue: V? = nil
    ) -> some View {
        self.onChange(of: value) { newValue in
            if newValue != ignoredValue {
                let generator = UIImpactFeedbackGenerator(style: style)
                generator.prepare()
                generator.impactOccurred()
            }
        }
    }
    
    func selectionFeedback<V: Equatable>(value: V) -> some View {
        self.onChange(of: value) { _ in
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            generator.selectionChanged()
        }
    }
}
