# $NetBSD: Makefile,v 1.2 2015/09/03 22:35:17 leot1990 Exp $
#

VERSION=	0.1.5
DISTNAME=	zathura-cb-${VERSION}
CATEGORIES=	print
MASTER_SITES=	http://pwmt.org/projects/zathura-cb/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pwmt.org/projects/zathura-cb/
COMMENT=	Adds comic book support to zathura
LICENSE=	zlib

USE_TOOLS+=	pkg-config gmake
USE_LIBTOOL=	yes

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../wip/zathura/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
