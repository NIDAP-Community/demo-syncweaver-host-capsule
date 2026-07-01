# demo-syncweaver-host-capsule

Example host repository (such as for a Code Ocean capsule) to demonstrate syncweaver

See also:

- this capsule on Code Ocean: https://poc-nci.codeocean.io/capsule/8221798
- demo source repo: https://github.com/NIDAP-Community/demo-syncweaver-source
- syncweaver: https://github.com/CCBR/syncweaver

## Initial setup

```sh
mkdir -p code/ .github/workflows/

# add gha workflows
syncweaver templates add syncweaver-host-update
syncweaver templates add syncweaver-host-contribute-patch

# add sources to the host
syncweaver add --repo-url CCBR/MOSuite --ref v0.3.1 --path code/MOSuite
syncweaver add --repo-url NIDAP-Community/demo-syncweaver-source-monorepo --remote-subdir modules/hello --path code/hello
```

Create an entry point script with a CLI in `code/main.R`

Add this repo to the orchestrator repo's `.github/host-repositories.ym` file (e.g. in CCBR/syncweaver).

## Usage

If the orchestrator repo is set up, sources in this repo will be updated automatically when the upstream source repo cuts a new release.
Sources can be manually updated with `syncweaver update`.

If a developer modifies code in a source, run `syncweaver patch` to track the changes.
Optionally, contribute changes from a patch back to the source with `syncweaver contribute`.
