# Hands on Prow
This repository will help you to understand how Prow CI/CD platform works and how to create your own one.

- Slides are [here](https://jparrill.github.io/presentations/HandsOnProw/render/Hands_on_Prow.html#1)
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
