# Getting Started

Treat this repository like you just joined an iOS team.

## First goal

Do not add a feature yet. First understand how one `Activity` reaches the screen.

Read files in this order:

1. `DayOut/App/DayOutApp.swift`
2. `DayOut/Features/Explore/ExploreView.swift`
3. `DayOut/Features/Explore/ExploreModel.swift`
4. `DayOut/Data/ActivityRepository.swift`
5. `DayOut/Data/MockActivityRepository.swift`
6. `DayOut/Domain/Activity.swift`
7. `DayOutTests/ExploreModelTests.swift`

## Questions you should be able to answer

- Why is `DayOutApp` marked with `@main`?
- Why is `ExploreView` a `struct`?
- What does `@State` own here?
- Why is `ExploreModel` a class?
- What does `@Observable` do?
- Why is `ActivityRepository` a protocol?
- Why is `activities()` asynchronous even though our first repository is local?
- Why is `ExploreModel` isolated to `@MainActor`?

## First ticket after onboarding

**IOS-001: Add category filtering to Explore.**

Do not implement it until you can trace the current data flow end-to-end.
