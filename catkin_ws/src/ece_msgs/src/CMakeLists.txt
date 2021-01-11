set(ASN1_SRCS
asn_application.h asn_application.c
asn_bit_data.h asn_bit_data.c
asn_codecs_prim.h asn_codecs_prim.c
asn_codecs.h
asn_internal.h asn_internal.c
asn_ioc.h
asn_random_fill.h asn_random_fill.c
asn_system.h
ber_decoder.h ber_decoder.c
ber_tlv_length.h ber_tlv_length.c
ber_tlv_tag.h ber_tlv_tag.c
BIT_STRING_oer.c
BIT_STRING.h BIT_STRING.c
BOOLEAN.h BOOLEAN.c
constr_CHOICE_oer.c
constr_CHOICE.h constr_CHOICE.c
constr_SEQUENCE_oer.c
constr_SEQUENCE.h constr_SEQUENCE.c
constr_TYPE.h constr_TYPE.c
constraints.h constraints.c
der_encoder.h der_encoder.c
Ecemessage.h Ecemessage.c
INTEGER_oer.c
INTEGER.h INTEGER.c
NativeInteger_oer.c
NativeInteger.h NativeInteger.c
OCTET_STRING_oer.c
OCTET_STRING.h OCTET_STRING.c
oer_decoder.h oer_decoder.c
oer_encoder.h oer_encoder.c
oer_support.h oer_support.c
OPEN_TYPE_oer.c 
OPEN_TYPE.h OPEN_TYPE.c
per_decoder.h per_decoder.c
per_encoder.h per_encoder.c
per_opentype.h per_opentype.c
per_support.h per_support.c
Rectangle.h Rectangle.c
xer_decoder.h xer_decoder.c
xer_encoder.h xer_encoder.c
xer_support.h xer_support.c
)

include_directories(
  include
  ${ASN1_INCLUDE_DIRS}
)
set(LIB_TYPE STATIC)
add_library(ASN1 ${LIB_TYPE} ${ASN1_SRCS})
