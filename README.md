# bofs-dev
just another development environment for Beacon Object Files (BOFs).

## overview
This repository provides the core tools and templates you need to speed up BOF development and testing.
Includes a ready-to-use [DevContainer](https://code.visualstudio.com/docs/devcontainers/containers) for VSCode, [COFFLoader](https://github.com/trustedsec/COFFLoader) for local testing, an automated builds, and a _"standardized"_ project structure.

It follows the [TrustedSec BOF Development Course](https://learn.trustedsec.com/courses/cd84409a-36af-4507-be2c-ca7ad1e9fd2d), which I found incredibly useful for understanding BOF internals (highly recommended).

You can also check out a great resource like [awesome-bof](https://github.com/chryzsh/awesome-bof).

## quick start
- copy the `_template` directory to start a new BOF project
- implement your logic in `entry.c`
- run `make` to build a single BOF, or `./make_all.sh` to compile them all at once
- test with COFFLoader

This repository takes care of the boring things so you can focus entirely on the fun part: _**swearing**_.
