# $NetBSD: buildlink3.mk,v 1.1 2004/05/12 03:33:40 blef Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
DAMAGEEXT_BUILDLINK3_MK:=	${DAMAGEEXT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	damageext
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndamageext}
BUILDLINK_PACKAGES+=	damageext

.if !empty(DAMAGEEXT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.damageext+=	damageext>=1.0
BUILDLINK_PKGSRCDIR.damageext?=	../../wip/damageext
.endif	# DAMAGEEXT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
