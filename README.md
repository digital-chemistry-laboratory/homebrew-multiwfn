# homebrew-multiwfn

A homebrew formula for Multiwfn.

You can install `multiwfn` with the following command. It can take quite a while to compile.

```
brew install --HEAD kjelljorner/multiwfn/multiwfn
```

To add OpenMP support, use instead

```
brew install --HEAD kjelljorner/multiwfn/multiwfn --with-openmp
```

To upgrade to the latest version, run `brew upgrade multiwfn`

A copy of settings.ini is installed. To use it, set environment variable `Multiwfnpath=${HOMEBREW_PREFIX}/etc/multiwfn`. If you want to keep the config file between upgrades, copy it to for example `~/.config/multiwfn/` and point `Multiwfnpath` there instead.
