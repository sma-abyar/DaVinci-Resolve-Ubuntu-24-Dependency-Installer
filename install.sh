#!/bin/bash

# variables
libpango_PACKAGE_URL="http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpango-1.0-0_1.50.6+ds-2ubuntu1_amd64.deb"
libpangoft2_PACKAGE_URL="http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangoft2-1.0-0_1.50.6+ds-2ubuntu1_amd64.deb"
libpangocairo_PACKAGE_URL="http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangocairo-1.0-0_1.50.6+ds-2ubuntu1_amd64.deb"
libgdk_pixbuf_PACKAGE_URL="http://mirrors.kernel.org/ubuntu/pool/main/g/gdk-pixbuf/libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb"
INSTALL_DIR="/opt/resolve/libs"

# create install directory if not exists
mkdir -p $INSTALL_DIR

# download and install each package
for PACKAGE_URL in $libpango_PACKAGE_URL $libpangoft2_PACKAGE_URL $libpangocairo_PACKAGE_URL $libgdk_pixbuf_PACKAGE_URL; do
    # download package
    wget $PACKAGE_URL -P /tmp
    
    # get the name of the package
    PACKAGE_NAME=$(basename $PACKAGE_URL)
    
    # install the package
    sudo dpkg -i /tmp/$PACKAGE_NAME
    
    # move package to install directory
    mv /tmp/$PACKAGE_NAME $INSTALL_DIR/
done

echo "Packages installed successfully!"
