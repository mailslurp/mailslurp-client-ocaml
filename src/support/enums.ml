(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type value = [
| `TRUE [@printer fun fmt _ -> Format.pp_print_string fmt "TRUE"] [@name "TRUE"]
| `FALSE [@printer fun fmt _ -> Format.pp_print_string fmt "FALSE"] [@name "FALSE"]
] [@@deriving yojson, show { with_path = false }];;

let value_of_yojson json = value_of_yojson (`List [json])
let value_to_yojson e =
    match value_to_yojson e with
    | `List [json] -> json
    | json -> json

type counttype = [
| `EXACTLY [@printer fun fmt _ -> Format.pp_print_string fmt "EXACTLY"] [@name "EXACTLY"]
| `ATLEAST [@printer fun fmt _ -> Format.pp_print_string fmt "ATLEAST"] [@name "ATLEAST"]
] [@@deriving yojson, show { with_path = false }];;

let counttype_of_yojson json = counttype_of_yojson (`List [json])
let counttype_to_yojson e =
    match counttype_to_yojson e with
    | `List [json] -> json
    | json -> json

type outputformat = [
| `CSV_DEFAULT [@printer fun fmt _ -> Format.pp_print_string fmt "CSV_DEFAULT"] [@name "CSV_DEFAULT"]
| `CSV_EXCEL [@printer fun fmt _ -> Format.pp_print_string fmt "CSV_EXCEL"] [@name "CSV_EXCEL"]
] [@@deriving yojson, show { with_path = false }];;

let outputformat_of_yojson json = outputformat_of_yojson (`List [json])
let outputformat_to_yojson e =
    match outputformat_to_yojson e with
    | `List [json] -> json
    | json -> json

type handler = [
| `EXCEPTION [@printer fun fmt _ -> Format.pp_print_string fmt "EXCEPTION"] [@name "EXCEPTION"]
] [@@deriving yojson, show { with_path = false }];;

let handler_of_yojson json = handler_of_yojson (`List [json])
let handler_to_yojson e =
    match handler_to_yojson e with
    | `List [json] -> json
    | json -> json

type sendstrategy = [
| `SINGLE_MESSAGE [@printer fun fmt _ -> Format.pp_print_string fmt "SINGLE_MESSAGE"] [@name "SINGLE_MESSAGE"]
] [@@deriving yojson, show { with_path = false }];;

let sendstrategy_of_yojson json = sendstrategy_of_yojson (`List [json])
let sendstrategy_to_yojson e =
    match sendstrategy_to_yojson e with
    | `List [json] -> json
    | json -> json

type inboxtype = [
| `HTTP_INBOX [@printer fun fmt _ -> Format.pp_print_string fmt "HTTP_INBOX"] [@name "HTTP_INBOX"]
| `SMTP_INBOX [@printer fun fmt _ -> Format.pp_print_string fmt "SMTP_INBOX"] [@name "SMTP_INBOX"]
] [@@deriving yojson, show { with_path = false }];;

let inboxtype_of_yojson json = inboxtype_of_yojson (`List [json])
let inboxtype_to_yojson e =
    match inboxtype_to_yojson e with
    | `List [json] -> json
    | json -> json

type action = [
| `BLOCK [@printer fun fmt _ -> Format.pp_print_string fmt "BLOCK"] [@name "BLOCK"]
| `ALLOW [@printer fun fmt _ -> Format.pp_print_string fmt "ALLOW"] [@name "ALLOW"]
| `FILTER_REMOVE [@printer fun fmt _ -> Format.pp_print_string fmt "FILTER_REMOVE"] [@name "FILTER_REMOVE"]
] [@@deriving yojson, show { with_path = false }];;

let action_of_yojson json = action_of_yojson (`List [json])
let action_to_yojson e =
    match action_to_yojson e with
    | `List [json] -> json
    | json -> json

type should = [
| `CONTAIN [@printer fun fmt _ -> Format.pp_print_string fmt "CONTAIN"] [@name "CONTAIN"]
| `EQUAL [@printer fun fmt _ -> Format.pp_print_string fmt "EQUAL"] [@name "EQUAL"]
] [@@deriving yojson, show { with_path = false }];;

let should_of_yojson json = should_of_yojson (`List [json])
let should_to_yojson e =
    match should_to_yojson e with
    | `List [json] -> json
    | json -> json

type domaintype = [
| `HTTP_INBOX [@printer fun fmt _ -> Format.pp_print_string fmt "HTTP_INBOX"] [@name "HTTP_INBOX"]
| `SMTP_DOMAIN [@printer fun fmt _ -> Format.pp_print_string fmt "SMTP_DOMAIN"] [@name "SMTP_DOMAIN"]
] [@@deriving yojson, show { with_path = false }];;

let domaintype_of_yojson json = domaintype_of_yojson (`List [json])
let domaintype_to_yojson e =
    match domaintype_to_yojson e with
    | `List [json] -> json
    | json -> json

type exporttype = [
| `INBOXES [@printer fun fmt _ -> Format.pp_print_string fmt "INBOXES"] [@name "INBOXES"]
| `CONTACTS [@printer fun fmt _ -> Format.pp_print_string fmt "CONTACTS"] [@name "CONTACTS"]
| `ATTACHMENTS [@printer fun fmt _ -> Format.pp_print_string fmt "ATTACHMENTS"] [@name "ATTACHMENTS"]
| `EMAILS [@printer fun fmt _ -> Format.pp_print_string fmt "EMAILS"] [@name "EMAILS"]
] [@@deriving yojson, show { with_path = false }];;

let exporttype_of_yojson json = exporttype_of_yojson (`List [json])
let exporttype_to_yojson e =
    match exporttype_to_yojson e with
    | `List [json] -> json
    | json -> json

type webhookdto_method = [
| `GET [@printer fun fmt _ -> Format.pp_print_string fmt "GET"] [@name "GET"]
| `HEAD [@printer fun fmt _ -> Format.pp_print_string fmt "HEAD"] [@name "HEAD"]
| `POST [@printer fun fmt _ -> Format.pp_print_string fmt "POST"] [@name "POST"]
| `PUT [@printer fun fmt _ -> Format.pp_print_string fmt "PUT"] [@name "PUT"]
| `PATCH [@printer fun fmt _ -> Format.pp_print_string fmt "PATCH"] [@name "PATCH"]
| `DELETE [@printer fun fmt _ -> Format.pp_print_string fmt "DELETE"] [@name "DELETE"]
| `OPTIONS [@printer fun fmt _ -> Format.pp_print_string fmt "OPTIONS"] [@name "OPTIONS"]
| `TRACE [@printer fun fmt _ -> Format.pp_print_string fmt "TRACE"] [@name "TRACE"]
] [@@deriving yojson, show { with_path = false }];;

let webhookdto_method_of_yojson json = webhookdto_method_of_yojson (`List [json])
let webhookdto_method_to_yojson e =
    match webhookdto_method_to_yojson e with
    | `List [json] -> json
    | json -> json

type recordtypes = [
| `A [@printer fun fmt _ -> Format.pp_print_string fmt "A"] [@name "A"]
| `NS [@printer fun fmt _ -> Format.pp_print_string fmt "NS"] [@name "NS"]
| `MD [@printer fun fmt _ -> Format.pp_print_string fmt "MD"] [@name "MD"]
| `MF [@printer fun fmt _ -> Format.pp_print_string fmt "MF"] [@name "MF"]
| `CNAME [@printer fun fmt _ -> Format.pp_print_string fmt "CNAME"] [@name "CNAME"]
| `SOA [@printer fun fmt _ -> Format.pp_print_string fmt "SOA"] [@name "SOA"]
| `MB [@printer fun fmt _ -> Format.pp_print_string fmt "MB"] [@name "MB"]
| `MG [@printer fun fmt _ -> Format.pp_print_string fmt "MG"] [@name "MG"]
| `MR [@printer fun fmt _ -> Format.pp_print_string fmt "MR"] [@name "MR"]
| `NULL [@printer fun fmt _ -> Format.pp_print_string fmt "NULL"] [@name "NULL"]
| `WKS [@printer fun fmt _ -> Format.pp_print_string fmt "WKS"] [@name "WKS"]
| `PTR [@printer fun fmt _ -> Format.pp_print_string fmt "PTR"] [@name "PTR"]
| `HINFO [@printer fun fmt _ -> Format.pp_print_string fmt "HINFO"] [@name "HINFO"]
| `MINFO [@printer fun fmt _ -> Format.pp_print_string fmt "MINFO"] [@name "MINFO"]
| `MX [@printer fun fmt _ -> Format.pp_print_string fmt "MX"] [@name "MX"]
| `TXT [@printer fun fmt _ -> Format.pp_print_string fmt "TXT"] [@name "TXT"]
| `RP [@printer fun fmt _ -> Format.pp_print_string fmt "RP"] [@name "RP"]
| `AFSDB [@printer fun fmt _ -> Format.pp_print_string fmt "AFSDB"] [@name "AFSDB"]
| `X25 [@printer fun fmt _ -> Format.pp_print_string fmt "X25"] [@name "X25"]
| `ISDN [@printer fun fmt _ -> Format.pp_print_string fmt "ISDN"] [@name "ISDN"]
| `RT [@printer fun fmt _ -> Format.pp_print_string fmt "RT"] [@name "RT"]
| `NSAP [@printer fun fmt _ -> Format.pp_print_string fmt "NSAP"] [@name "NSAP"]
| `NSAP_PTR [@printer fun fmt _ -> Format.pp_print_string fmt "NSAP_PTR"] [@name "NSAP_PTR"]
| `SIG [@printer fun fmt _ -> Format.pp_print_string fmt "SIG"] [@name "SIG"]
| `KEY [@printer fun fmt _ -> Format.pp_print_string fmt "KEY"] [@name "KEY"]
| `PX [@printer fun fmt _ -> Format.pp_print_string fmt "PX"] [@name "PX"]
| `GPOS [@printer fun fmt _ -> Format.pp_print_string fmt "GPOS"] [@name "GPOS"]
| `AAAA [@printer fun fmt _ -> Format.pp_print_string fmt "AAAA"] [@name "AAAA"]
| `LOC [@printer fun fmt _ -> Format.pp_print_string fmt "LOC"] [@name "LOC"]
| `NXT [@printer fun fmt _ -> Format.pp_print_string fmt "NXT"] [@name "NXT"]
| `EID [@printer fun fmt _ -> Format.pp_print_string fmt "EID"] [@name "EID"]
| `NIMLOC [@printer fun fmt _ -> Format.pp_print_string fmt "NIMLOC"] [@name "NIMLOC"]
| `SRV [@printer fun fmt _ -> Format.pp_print_string fmt "SRV"] [@name "SRV"]
| `ATMA [@printer fun fmt _ -> Format.pp_print_string fmt "ATMA"] [@name "ATMA"]
| `NAPTR [@printer fun fmt _ -> Format.pp_print_string fmt "NAPTR"] [@name "NAPTR"]
| `KX [@printer fun fmt _ -> Format.pp_print_string fmt "KX"] [@name "KX"]
| `CERT [@printer fun fmt _ -> Format.pp_print_string fmt "CERT"] [@name "CERT"]
| `A6 [@printer fun fmt _ -> Format.pp_print_string fmt "A6"] [@name "A6"]
| `DNAME [@printer fun fmt _ -> Format.pp_print_string fmt "DNAME"] [@name "DNAME"]
| `SINK [@printer fun fmt _ -> Format.pp_print_string fmt "SINK"] [@name "SINK"]
| `OPT [@printer fun fmt _ -> Format.pp_print_string fmt "OPT"] [@name "OPT"]
| `APL [@printer fun fmt _ -> Format.pp_print_string fmt "APL"] [@name "APL"]
| `DS [@printer fun fmt _ -> Format.pp_print_string fmt "DS"] [@name "DS"]
| `SSHFP [@printer fun fmt _ -> Format.pp_print_string fmt "SSHFP"] [@name "SSHFP"]
| `IPSECKEY [@printer fun fmt _ -> Format.pp_print_string fmt "IPSECKEY"] [@name "IPSECKEY"]
| `RRSIG [@printer fun fmt _ -> Format.pp_print_string fmt "RRSIG"] [@name "RRSIG"]
| `NSEC [@printer fun fmt _ -> Format.pp_print_string fmt "NSEC"] [@name "NSEC"]
| `DNSKEY [@printer fun fmt _ -> Format.pp_print_string fmt "DNSKEY"] [@name "DNSKEY"]
| `DHCID [@printer fun fmt _ -> Format.pp_print_string fmt "DHCID"] [@name "DHCID"]
| `NSEC3 [@printer fun fmt _ -> Format.pp_print_string fmt "NSEC3"] [@name "NSEC3"]
| `NSEC3PARAM [@printer fun fmt _ -> Format.pp_print_string fmt "NSEC3PARAM"] [@name "NSEC3PARAM"]
| `TLSA [@printer fun fmt _ -> Format.pp_print_string fmt "TLSA"] [@name "TLSA"]
| `SMIMEA [@printer fun fmt _ -> Format.pp_print_string fmt "SMIMEA"] [@name "SMIMEA"]
| `HIP [@printer fun fmt _ -> Format.pp_print_string fmt "HIP"] [@name "HIP"]
| `NINFO [@printer fun fmt _ -> Format.pp_print_string fmt "NINFO"] [@name "NINFO"]
| `RKEY [@printer fun fmt _ -> Format.pp_print_string fmt "RKEY"] [@name "RKEY"]
| `TALINK [@printer fun fmt _ -> Format.pp_print_string fmt "TALINK"] [@name "TALINK"]
| `CDS [@printer fun fmt _ -> Format.pp_print_string fmt "CDS"] [@name "CDS"]
| `CDNSKEY [@printer fun fmt _ -> Format.pp_print_string fmt "CDNSKEY"] [@name "CDNSKEY"]
| `OPENPGPKEY [@printer fun fmt _ -> Format.pp_print_string fmt "OPENPGPKEY"] [@name "OPENPGPKEY"]
| `CSYNC [@printer fun fmt _ -> Format.pp_print_string fmt "CSYNC"] [@name "CSYNC"]
| `ZONEMD [@printer fun fmt _ -> Format.pp_print_string fmt "ZONEMD"] [@name "ZONEMD"]
| `SVCB [@printer fun fmt _ -> Format.pp_print_string fmt "SVCB"] [@name "SVCB"]
| `HTTPS [@printer fun fmt _ -> Format.pp_print_string fmt "HTTPS"] [@name "HTTPS"]
| `SPF [@printer fun fmt _ -> Format.pp_print_string fmt "SPF"] [@name "SPF"]
| `UINFO [@printer fun fmt _ -> Format.pp_print_string fmt "UINFO"] [@name "UINFO"]
| `UID [@printer fun fmt _ -> Format.pp_print_string fmt "UID"] [@name "UID"]
| `GID [@printer fun fmt _ -> Format.pp_print_string fmt "GID"] [@name "GID"]
| `UNSPEC [@printer fun fmt _ -> Format.pp_print_string fmt "UNSPEC"] [@name "UNSPEC"]
| `NID [@printer fun fmt _ -> Format.pp_print_string fmt "NID"] [@name "NID"]
| `L32 [@printer fun fmt _ -> Format.pp_print_string fmt "L32"] [@name "L32"]
| `L64 [@printer fun fmt _ -> Format.pp_print_string fmt "L64"] [@name "L64"]
| `LP [@printer fun fmt _ -> Format.pp_print_string fmt "LP"] [@name "LP"]
| `EUI48 [@printer fun fmt _ -> Format.pp_print_string fmt "EUI48"] [@name "EUI48"]
| `EUI64 [@printer fun fmt _ -> Format.pp_print_string fmt "EUI64"] [@name "EUI64"]
| `TKEY [@printer fun fmt _ -> Format.pp_print_string fmt "TKEY"] [@name "TKEY"]
| `TSIG [@printer fun fmt _ -> Format.pp_print_string fmt "TSIG"] [@name "TSIG"]
| `IXFR [@printer fun fmt _ -> Format.pp_print_string fmt "IXFR"] [@name "IXFR"]
| `AXFR [@printer fun fmt _ -> Format.pp_print_string fmt "AXFR"] [@name "AXFR"]
| `MAILB [@printer fun fmt _ -> Format.pp_print_string fmt "MAILB"] [@name "MAILB"]
| `MAILA [@printer fun fmt _ -> Format.pp_print_string fmt "MAILA"] [@name "MAILA"]
| `ANY [@printer fun fmt _ -> Format.pp_print_string fmt "ANY"] [@name "ANY"]
| `URI [@printer fun fmt _ -> Format.pp_print_string fmt "URI"] [@name "URI"]
| `CAA [@printer fun fmt _ -> Format.pp_print_string fmt "CAA"] [@name "CAA"]
| `AVC [@printer fun fmt _ -> Format.pp_print_string fmt "AVC"] [@name "AVC"]
| `DOA [@printer fun fmt _ -> Format.pp_print_string fmt "DOA"] [@name "DOA"]
| `AMTRELAY [@printer fun fmt _ -> Format.pp_print_string fmt "AMTRELAY"] [@name "AMTRELAY"]
| `TA [@printer fun fmt _ -> Format.pp_print_string fmt "TA"] [@name "TA"]
| `DLV [@printer fun fmt _ -> Format.pp_print_string fmt "DLV"] [@name "DLV"]
] [@@deriving yojson, show { with_path = false }];;

let recordtypes_of_yojson json = recordtypes_of_yojson (`List [json])
let recordtypes_to_yojson e =
    match recordtypes_to_yojson e with
    | `List [json] -> json
    | json -> json

type eventname = [
| `EMAIL_RECEIVED [@printer fun fmt _ -> Format.pp_print_string fmt "EMAIL_RECEIVED"] [@name "EMAIL_RECEIVED"]
| `NEW_EMAIL [@printer fun fmt _ -> Format.pp_print_string fmt "NEW_EMAIL"] [@name "NEW_EMAIL"]
| `NEW_CONTACT [@printer fun fmt _ -> Format.pp_print_string fmt "NEW_CONTACT"] [@name "NEW_CONTACT"]
| `NEW_ATTACHMENT [@printer fun fmt _ -> Format.pp_print_string fmt "NEW_ATTACHMENT"] [@name "NEW_ATTACHMENT"]
] [@@deriving yojson, show { with_path = false }];;

let eventname_of_yojson json = eventname_of_yojson (`List [json])
let eventname_to_yojson e =
    match eventname_to_yojson e with
    | `List [json] -> json
    | json -> json

type variabletype = [
| `STRING [@printer fun fmt _ -> Format.pp_print_string fmt "STRING"] [@name "STRING"]
] [@@deriving yojson, show { with_path = false }];;

let variabletype_of_yojson json = variabletype_of_yojson (`List [json])
let variabletype_to_yojson e =
    match variabletype_to_yojson e with
    | `List [json] -> json
    | json -> json

type scope = [
| `RECEIVING_EMAILS [@printer fun fmt _ -> Format.pp_print_string fmt "RECEIVING_EMAILS"] [@name "RECEIVING_EMAILS"]
| `SENDING_EMAILS [@printer fun fmt _ -> Format.pp_print_string fmt "SENDING_EMAILS"] [@name "SENDING_EMAILS"]
] [@@deriving yojson, show { with_path = false }];;

let scope_of_yojson json = scope_of_yojson (`List [json])
let scope_to_yojson e =
    match scope_to_yojson e with
    | `List [json] -> json
    | json -> json

type sortdirection = [
| `ASC [@printer fun fmt _ -> Format.pp_print_string fmt "ASC"] [@name "ASC"]
| `DESC [@printer fun fmt _ -> Format.pp_print_string fmt "DESC"] [@name "DESC"]
] [@@deriving yojson, show { with_path = false }];;

let sortdirection_of_yojson json = sortdirection_of_yojson (`List [json])
let sortdirection_to_yojson e =
    match sortdirection_to_yojson e with
    | `List [json] -> json
    | json -> json

type field = [
| `SUBJECT [@printer fun fmt _ -> Format.pp_print_string fmt "SUBJECT"] [@name "SUBJECT"]
| `TO [@printer fun fmt _ -> Format.pp_print_string fmt "TO"] [@name "TO"]
| `BCC [@printer fun fmt _ -> Format.pp_print_string fmt "BCC"] [@name "BCC"]
| `CC [@printer fun fmt _ -> Format.pp_print_string fmt "CC"] [@name "CC"]
| `FROM [@printer fun fmt _ -> Format.pp_print_string fmt "FROM"] [@name "FROM"]
] [@@deriving yojson, show { with_path = false }];;

let field_of_yojson json = field_of_yojson (`List [json])
let field_to_yojson e =
    match field_to_yojson e with
    | `List [json] -> json
    | json -> json

type condition = [
| `HAS_ATTACHMENTS [@printer fun fmt _ -> Format.pp_print_string fmt "HAS_ATTACHMENTS"] [@name "HAS_ATTACHMENTS"]
] [@@deriving yojson, show { with_path = false }];;

let condition_of_yojson json = condition_of_yojson (`List [json])
let condition_to_yojson e =
    match condition_to_yojson e with
    | `List [json] -> json
    | json -> json
