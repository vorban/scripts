# scripts
My custom scripts.

## Summary
- [scripts](#scripts)
  - [Summary](#summary)
  - [Usage](#usage)
    - [Installation](#installation)
  - [Scripts explained](#scripts-explained)
    - [deploy](#deploy)
    - [ouestce](#ouestce)

## Usage

### Installation

```
$ git clone git@github.com:vorban/scripts.git
$ scripts/install.sh
```

## Scripts explained

### deploy

The `deploy` script deploys a project on Agence-Webup infrastructure.

Usage: `deploy [-e|--environment <ENV>] [<PATH>]`.

Params:
- `-e|--environment <ENV>`, where `<ENV>` is one of `release|prod|demo`.
- `<PATH>`, if provided, executes `cd <PATH>`, else uses current working
directory.

Deploy can take the `<PATH>` from pipe: `echo "folder/project | deploy"`

Example:
```
$ deploy ~/folder/project
Tagging for environment [release]: -- 95 --
Continue ? [y/N]
Done
$ echo "Nice."
```

### ouestce

The `ouestce` script tries to find the specified repository and returns its
fullpath.

This only works for me because all my repos are organized
as `<provider>/<author>/<repo>`, with providers beeing located at :
- `~/github.com`
- `~/gitlab.com`
- `~/bibucket.org`

Usage : `ouestce <NAME>` where `<NAME>` is the repo you want to find.

Example:
```
$ ouestce myproject | deploy
```

This is perfect to not waste any time, especially when building software
from source.