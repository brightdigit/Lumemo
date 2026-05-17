# Shared workshop scripts

Drop-in lint scripts for any Lumemo workshop phase. Copy them into your
phase's `Scripts/` directory when a phase needs them (Phase 4 onward):

```bash
mkdir -p Scripts
cp ../../_shared/scripts/lint.sh Scripts/
cp ../../_shared/scripts/header.sh Scripts/
```

## Files

| File | Purpose |
|---|---|
| `lint.sh` | Runs `swiftlint` + `swift-format` across Tuist files and `Packages/Lumemo*`. Auto-fix in dev; lint-only when `$CI` is set. |
| `header.sh` | Stamps a copyright header onto every `.swift` file. Called by `lint.sh` in dev mode only. |

## Customization

Before running, set `ORG_NAME` and `APP_NAME` at the top of `lint.sh`.
For the workshop:

```bash
ORG_NAME="BrightDigit"
APP_NAME="Lumemo"
```

If you reuse these scripts in another project, update those two values
and edit the `header_template` block inside `header.sh` to match the
copyright header your project requires.
