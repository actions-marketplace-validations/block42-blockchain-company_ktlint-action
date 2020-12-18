# GitHub Action ktlint Linter

This GitHub action runs the Kotlin Formatter [ktlint](https://github.com/pinterest/ktlint).

## Example usage
Create the folder `.github` in your repository, and create inside a 
file `ktlint-formatter.yaml` with the following code:

```
name: ktlint

on:
  pull_request:
    paths:
      - "**/*.kt"
      - ".github/workflows/ktlint.yml"

 jobs:
   ktlint:
     runs-on: ubuntu-latest

     steps:
       - name: "checkout"
         uses: actions/checkout@v2

       - name: "ktlint"
         uses: "block42-blockchain-company/ktlint-action@master"
```

Now everytime you create a Pull Request, ktlint will check if your code is properly formatted and fail if it isn't!

