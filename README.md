# crave_sign-lite
## what does this do?
this project (currently a WIP) fetches keys from backblaze B2 and extracts them into `vendor/lineage-priv/keys` for inline signing.
## how is this different from crave_sign?
the [crave_sign](https://fosson.top/crave/getting-started/build-signing.html#signing-the-build-using-crave-sign) script listed there is currently broken, as it tries running `b2 sync`, which doesn't work in devspace or on build servers. this script instead uses `b2 file download`, which is more lightweight and reliably fetches the certificates.
## do i have to modify my `crave.yaml` to switch from crave_sign to crave_sign-lite?
nope! although, you will need to regenerate/repack your keys into an encrypted zip named `android-certs.zip`, placed at the root of your bucket. a script for generating the keys is currently in the works.
