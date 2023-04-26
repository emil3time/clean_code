# future_mind_task

A new Flutter project.

## Getting Started

This project is created with Flutter framework, and currently running on version `3.3.10`
Code generate files are not included in repository. Before running building application you need to generate this files. Please refer to section `Flutter Related` below.

- [Documentation: Official Flutter docs](https://docs.flutter.dev)

## Architecture

This project implement Uncle Bob's Clean Architecture in Flutter.

For more information please see: [Clean Architecture](https://codeburst.io/using-clean-architecture-in-flutter-d0437d0c7f87)

## Before commit:

To ensure import sorting please user the following command before commit files: `flutter pub run import_sorter:main`

## Flutter related:

To run code generator one's `flutter pub run build_runner build --delete-conflicting-outputs`
To run code generator with watch mode `flutter pub run build_runner watch --delete-conflicting-outputs`

## Commits standards

`<type>(<scope>): <subject>`

- build: Build related changes (eg: npm related/ adding external dependencies)
- chore: A code change that external user won't see (eg: change to .gitignore file or .prettierrc file)
- feat: A new feature
- fix: A bug fix
- docs: Documentation related changes
- refactor: A code that neither fix bug nor adds a feature. (eg: You can use this when there is semantic changes like renaming a variable/ function name)
- perf: A code that improves performance
- style: A code that is related to styling
- test: Adding new test or making changes to existing test
- exchange: Sending code in progress for other developer to continue
