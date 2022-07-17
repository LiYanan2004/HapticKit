# HapticKit

Some extensions to enable haptic feedback in SwiftUI using some easy modifiers.



# We support:

 - [x] NotificationFeedback

 - [x] ImpactFeedback

 - [x] SelectionFeedback



## NotificationFeedback 

```swift
ContentView()
   .notificationFeedback(.success, value: isSelected)
```



## ImpactFeedback

```swift
ContentView()
   .impactFeedback(.medium, value: showModal, ignoredValue: false)
```

**`ignoredValue ` is used to avoid unwanted feedback.**

In this example, we only want to have feedback when the modal is presented, so we added `ignoredValue` property.



## ImpactFeedback

```swift
ContentView()
   .selectionFeedback(value: selection)
```

