(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val check_sending_consent_for_email_address : email_address:string -> Opt_in_sending_consent_dto.t Lwt.t
val get_opt_in_identities : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Page_opt_in_identity_projection.t Lwt.t
val revoke_opt_in_consent_for_email_address : email_address:string -> Opt_in_sending_consent_dto.t Lwt.t
val send_opt_in_consent_for_email_address : opt_in_consent_options_t:Opt_in_consent_options.t -> Opt_in_consent_send_result.t Lwt.t
