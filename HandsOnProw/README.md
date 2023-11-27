# Hands on Prow
This repository will help you to understand how Prow CI/CD platform works and how to create your own one.

- Slides are on [go-talks.appspot.com](https://go-talks.appspot.com/github.com/jparrill/presentations/HandsOnProw/hands-on-prow.slide)
- Source Code [here](https://github.com/jparrill/presentations/HandsOnProw)

If you preffer to run locally (you need at least Go installed in your system), just do this:

```
cd /tmp && git clone https://github.com/jparrill/presentations.git
go install golang.org/x/tools/cmd/present
cd HandsOnProw
present
```

This is the repository to configure the Prow cluster that I've used for this presentation:

- [Prow Configuration repository](https://github.com/the-shadowmen/prow-devconf)

or consume the pre-rendered version in the `render` folder