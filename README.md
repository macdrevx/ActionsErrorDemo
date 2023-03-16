# ActionsErrorDemo

Swift package to demonstrate a bug in GH Actions.

## Description

Building a Swift package that contains bundled resources fails in GH Actions but succeeds locally.

The distinctive error is

> Error deleting scheme: Cannot modify data because the process disallows saving.

## Instructions

1. Run the tests locally via `xcodebuild -scheme ActionsErrorDemo -sdk "macosx13.1" -destination "platform=macOS" clean test` and observe that this completes successfully.
2. Run the same command in GH Actions (already configured) and observe that it fails with the error mentioned above.
