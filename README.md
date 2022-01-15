## Device Tree for the Samsung Galaxy Tab S7 FE LTE (SM-T735)
You will need to get the [TWRP Minimal Manifest](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp) files

## How-to compile:

```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_gts7xllite-eng
mka recoveryimage
```
