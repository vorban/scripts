# scripts
My custom scripts.

## Summary
- [scripts](#scripts)
  - [Summary](#summary)
  - [Scripts explained](#scripts-explained)
    - [deploy](#deploy)

## Scripts explained

### deploy

The `deploy` script deploys a project on Agence-Webup infrastructure.

Usage: `deploy [-e|--environment <ENV>] [<path>]`.

Params:
- `-e|--environment <ENV>`, where `<ENV>` is one of `release|prod|demo`.
- `<PATH>`, if provided, executes `cd <PATH>`, else uses current working directory.
