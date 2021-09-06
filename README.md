# scripts
My custom scripts.

## Summary
- [scripts](#scripts)
  - [Summary](#summary)
  - [Usage](#usage)
    - [Installation](#installation)
  - [Scripts explained](#scripts-explained)
    - [deploy](#deploy)

## Usage

### Installation

```
$ git clone git@github.com:vorban/scripts.git
$ scripts/install.sh
```

## Scripts explained

### deploy

The `deploy` script deploys a project on Agence-Webup infrastructure.

Usage: `deploy [-e|--environment <ENV>] [<path>]`.

Params:
- `-e|--environment <ENV>`, where `<ENV>` is one of `release|prod|demo`.
- `<PATH>`, if provided, executes `cd <PATH>`, else uses current working directory.
