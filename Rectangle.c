/*
 * Generated by asn1c-0.9.28 (http://lionet.info/asn1c)
 * From ASN.1 module "Rectangle"
 * 	found in "connectivite/Rectangle.asn1"
 */

#include "Rectangle.h"

static int
memb_height_constraint_1(asn_TYPE_descriptor_t *td, const void *sptr,
			asn_app_constraint_failed_f *ctfailcb, void *app_key) {
	long value;
	
	if(!sptr) {
		ASN__CTFAIL(app_key, td, sptr,
			"%s: value not given (%s:%d)",
			td->name, __FILE__, __LINE__);
		return -1;
	}
	
	value = *(const long *)sptr;
	
	if((value >= 0)) {
		/* Constraint check succeeded */
		return 0;
	} else {
		ASN__CTFAIL(app_key, td, sptr,
			"%s: constraint failed (%s:%d)",
			td->name, __FILE__, __LINE__);
		return -1;
	}
}

static int
memb_width_constraint_1(asn_TYPE_descriptor_t *td, const void *sptr,
			asn_app_constraint_failed_f *ctfailcb, void *app_key) {
	long value;
	
	if(!sptr) {
		ASN__CTFAIL(app_key, td, sptr,
			"%s: value not given (%s:%d)",
			td->name, __FILE__, __LINE__);
		return -1;
	}
	
	value = *(const long *)sptr;
	
	if((value >= 0)) {
		/* Constraint check succeeded */
		return 0;
	} else {
		ASN__CTFAIL(app_key, td, sptr,
			"%s: constraint failed (%s:%d)",
			td->name, __FILE__, __LINE__);
		return -1;
	}
}

static asn_TYPE_member_t asn_MBR_Rectangle_1[] = {
	{ ATF_NOFLAGS, 0, offsetof(struct Rectangle, height),
		(ASN_TAG_CLASS_UNIVERSAL | (2 << 2)),
		0,
		&asn_DEF_NativeInteger,
		memb_height_constraint_1,
		0,	/* PER is not compiled, use -gen-PER */
		0,
		"height"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct Rectangle, width),
		(ASN_TAG_CLASS_UNIVERSAL | (2 << 2)),
		0,
		&asn_DEF_NativeInteger,
		memb_width_constraint_1,
		0,	/* PER is not compiled, use -gen-PER */
		0,
		"width"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct Rectangle, booleen),
		(ASN_TAG_CLASS_UNIVERSAL | (1 << 2)),
		0,
		&asn_DEF_BOOLEAN,
		0,	/* Defer constraints checking to the member type */
		0,	/* PER is not compiled, use -gen-PER */
		0,
		"booleen"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct Rectangle, string),
		(ASN_TAG_CLASS_UNIVERSAL | (4 << 2)),
		0,
		&asn_DEF_OCTET_STRING,
		0,	/* Defer constraints checking to the member type */
		0,	/* PER is not compiled, use -gen-PER */
		0,
		"string"
		},
};
static const ber_tlv_tag_t asn_DEF_Rectangle_tags_1[] = {
	(ASN_TAG_CLASS_UNIVERSAL | (16 << 2))
};
static const asn_TYPE_tag2member_t asn_MAP_Rectangle_tag2el_1[] = {
    { (ASN_TAG_CLASS_UNIVERSAL | (1 << 2)), 2, 0, 0 }, /* booleen */
    { (ASN_TAG_CLASS_UNIVERSAL | (2 << 2)), 0, 0, 1 }, /* height */
    { (ASN_TAG_CLASS_UNIVERSAL | (2 << 2)), 1, -1, 0 }, /* width */
    { (ASN_TAG_CLASS_UNIVERSAL | (4 << 2)), 3, 0, 0 } /* string */
};
static asn_SEQUENCE_specifics_t asn_SPC_Rectangle_specs_1 = {
	sizeof(struct Rectangle),
	offsetof(struct Rectangle, _asn_ctx),
	asn_MAP_Rectangle_tag2el_1,
	4,	/* Count of tags in the map */
	0, 0, 0,	/* Optional elements (not needed) */
	-1,	/* Start extensions */
	-1	/* Stop extensions */
};
asn_TYPE_descriptor_t asn_DEF_Rectangle = {
	"Rectangle",
	"Rectangle",
	SEQUENCE_free,
	SEQUENCE_print,
	SEQUENCE_constraint,
	SEQUENCE_decode_ber,
	SEQUENCE_encode_der,
	SEQUENCE_decode_xer,
	SEQUENCE_encode_xer,
	0, 0,	/* No PER support, use "-gen-PER" to enable */
	0,	/* Use generic outmost tag fetcher */
	asn_DEF_Rectangle_tags_1,
	sizeof(asn_DEF_Rectangle_tags_1)
		/sizeof(asn_DEF_Rectangle_tags_1[0]), /* 1 */
	asn_DEF_Rectangle_tags_1,	/* Same as above */
	sizeof(asn_DEF_Rectangle_tags_1)
		/sizeof(asn_DEF_Rectangle_tags_1[0]), /* 1 */
	0,	/* No PER visible constraints */
	asn_MBR_Rectangle_1,
	4,	/* Elements count */
	&asn_SPC_Rectangle_specs_1	/* Additional specs */
};

