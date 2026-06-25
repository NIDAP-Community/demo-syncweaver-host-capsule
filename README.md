## demo-syncweaver-host

Example host repository (such as for a Code Ocean capsule) to demonstrate syncweaver

### Initial setup

```sh
mkdir -p code/ .github/workflows/

# add gha workflows
syncweaver templates add syncweaver-host-update
syncweaver templates add syncweaver-host-contribute-patch

# add sources to the host
syncweaver add --repo-url CCBR/MOSuite --ref v0.3.1 --path code/MOSuite
syncweaver add --repo-url NIDAP-Community/demo-syncweaver-source --remo
te-subdir modules/hello --path code/hello
```

Create an entry point script with a CLI in `code/main.R`