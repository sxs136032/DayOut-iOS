# Architecture

The starter deliberately uses a small dependency flow:

```text
DayOutApp
   |
   v
ExploreView
   |
   v
ExploreModel
   |
   v
ActivityRepository
   |
   v
MockActivityRepository
   |
   v
[Activity]
```

## Why these layers exist

- **View**: describes what appears on screen.
- **Feature model**: owns screen state and coordinates work.
- **Repository protocol**: separates the feature from the source of its data.
- **Mock repository**: gives us deterministic local data while learning.
- **Domain model**: represents app concepts without UI concerns.

We are intentionally not adding networking, persistence, coordinators, dependency containers, or AI yet.
