# FRAMEWORK_REPO_NAME

![](https://img.shields.io/badge/carthage-compatible-success) ![](https://img.shields.io/badge/cocoapods-compatible-success)

FRAMEWORK_DESCRIPTION

## Installation

### CocoaPods

Add the following line to your `Podfile` and then run `$ pod install`

```ruby
pod 'FRAMEWORK_NAME', :git => 'git@github.com:tkww/FRAMEWORK_REPO_NAME.git'
```

### Carthage

This framework provides a precompiled binary for use via Carthage attached to every release.

Add the following line to your `Cartfile` and run `$ carthage update --platform ios FRAMEWORK_REPO_NAME`

```
github "tkww/FRAMEWORK_REPO_NAME"
```

## Development

All development work should be done on a feature branch

```bash
git checkout feature/my-awesome-feature
```

Once your feature is ready, you can open a pull request targeting the `develop` branch.

## Release Process

This repository implements an automated release process powered by Github Actions.

To cut a new release branch, checkout `develop` on your machine and run `$ make release`. The script will prompt you for a new version number and then checkout a new branch.

```bash
git checkout develop
git pull
make release
git push
```

Once you push the branch, a pull request will be created automatically after a minute or two with a new commit to update the podspec version.

And finally, when the pull request is merged into the `main` branch a new release and tag will be created with a precompiled binary for Carthage. 