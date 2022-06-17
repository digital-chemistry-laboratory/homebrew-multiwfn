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

A copy of settings.ini is installed. To use it, set environment variable `Multiwfnpath=${HOMEBREW_PREFIX}/etc/multiwfn`.
