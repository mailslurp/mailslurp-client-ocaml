(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_o_auth_connection : redirect_base:string -> o_auth_connection_type:Enums.mailprovider -> ?email_address:string -> unit -> Create_o_auth_connection_result.t Lwt.t
val exchange_authorization_token_and_create_or_update_inbox : authorization_code:string -> redirect_uri:string -> Create_o_auth_exchange_result.t Lwt.t
