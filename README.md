Generate Imagenet subsets using `robustness` library, and write it out
as WebDataset.

Usage:

```Bash
$ vi run              # set the configuration options
                      # mainly, you need to set the ImageNet database root
$ run build           # build the container
$ run lab             # run jupyter lab in the container
```

Have a look at the notebook to see how you can extract and write different
subsets.

The subsets come in two varieties:

- unaugmented just writes down unaugmented shards
- augmented writes out a large number of augmented shards

This kind of preaugmentation takes a lot of disk space (about 1.3TB for
a 100x preaugmented `living_9` subset), but results in less variance of
error rates and better analyzability. You can save some storage by
saving images in `.jpg` format instead of uncompressed `.ppm`.

After you have written the preaugmented data, you don't need the `robustness`
library anymore, nor any kind of costly preprocessing.

You can read the datasets with `webdataset`, from local disk, from any web
server (for small workgroups), or from an object store like Minio or AIStore.
