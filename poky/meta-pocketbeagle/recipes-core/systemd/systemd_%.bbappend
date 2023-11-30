FILESEXTRAPATHS:append := "${THISDIR}/files:"
SRC_URI += "file://10-usb0.network"

do_install:append() {
  install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/network/
}
