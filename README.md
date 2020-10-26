# GitHub Action ktlint Linter

This GitHub action runs the Kotlin Formatter [ktlint](https://github.com/pinterest/ktlint).

## Inputs

**Optional**: A list of patterns to pass along to the `ktlint` command in `with: args:`.

## Example usage
Create the folder `.github` in your repository, and create inside a 
file `ktlint-formatter.yaml` with the following code:

```
name: ktlint formatting

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

 jobs:
   ktlint:
     runs-on: ubuntu-latest

     steps:
       - name: "checkout"
         uses: actions/checkout@v2

       - name: "ktlint"
         uses: "block42-blockchain-company/ktlint-action@master"
         with:
           args: "-F"
```

Now everytime you push to master or create a Pull Request, your code will be formatted by ktlint!