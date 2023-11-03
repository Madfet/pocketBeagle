#!/bin/bash

image_id=$( docker images -q yocto_container )


if [[ -z "$image_id" ]]; then
   cd docker
   ./build.sh
   cd ..
fi

docker run -it --rm --privileged -v $(pwd)/poky:/devel -v ~/.ssh/:/home/yoctouser/.ssh --workdir=/devel yocto_container /bin/bash -c ". oe-init-build-env build_pocketBeagle && bitbake core-image-minimal && exit"

