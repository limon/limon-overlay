# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Qogir is a flat Design theme for GTK 3, GTK 2 and Gnome-Shell"
HOMEPAGE="https://github.com/vinceliuice/Qogir-theme"
SRC_URI="https://github.com/vinceliuice/Qogir-theme/archive/2020-11-16.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/Qogir-theme-2020-11-16"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/gtk+
x11-themes/gtk-engines
x11-themes/gtk-engines-murrine"

RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	insinto /usr/share/themes
	./install.sh -d ${D}/usr/share/themes
}
