# $NetBSD$

DISTNAME=	pdf-redact-tools-0.1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GITHUB:=firstlook/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/firstlook/pdf-redact-tools/releases/tag/
COMMENT=	Strip metadata from documents before publishing
LICENSE=	gnu-gpl-v3

DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick
DEPENDS+=	p5-Image-ExifTool-[0-9]*:../../graphics/p5-Image-ExifTool

USE_LANGUAGES=	# none

REPLACE_PYTHON=	pdf-react-tools

.include "../../lang/python/application.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
