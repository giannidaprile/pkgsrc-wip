# $NetBSD: Makefile,v 1.1 2014/05/03 18:58:38 jihbed Exp $

DISTNAME=	mcerp-0.10.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/m/mcerp/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/tisimst/mcerp
COMMENT=	Real-time latin-hypercube-sampling-based Monte Carlo Error Propagation
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy

USE_LANGUAGES=	# none

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
