# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="HarmonyOS Sans 字体。"
HOMEPAGE="https://developer.harmonyos.com/cn/design/resource"
SRC_URI="https://developer.harmonyos.com/resource/image/design/resource/download/general/HarmonyOS-Sans.zip"

LICENSE="custom"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
# Only installs fonts
RESTRICT="strip binchecks"

S=${WORKDIR}

#FONT_CONF=( "${FILESDIR}/60-mikachan.conf" )

src_install() {
	insinto /usr/share/fonts/${PN}

	doins HarmonyOS\ Sans/HarmonyOS_Sans*/*.ttf

	font_xfont_config
	font_fontconfig
}

