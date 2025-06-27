# homebrew-multiwfn

A homebrew formula for Multiwfn.

You can install `multiwfn` with the following command. It can take quite a while to compile.

```
brew install --HEAD digital-chemistry-laboratory/multiwfn/multiwfn
```

To add OpenMP support, use instead

```
brew tap digital-chemistry-laboratory/multiwfn
brew install --HEAD multiwfn --with-openmp
```

To upgrade to the latest version, run `brew upgrade multiwfn --fetch-HEAD` (include `--with-openmp`if you previously installed with OpenMP support).

A copy of settings.ini is installed. To use it, set environment variable `Multiwfnpath=${HOMEBREW_PREFIX}/etc/multiwfn`. If you want to keep the config file between upgrades, copy it to for example `~/.config/multiwfn/` and point `Multiwfnpath` there instead.
