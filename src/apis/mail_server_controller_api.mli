(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val describe_mail_server_domain : describe_options:Describe_domain_options.t -> Describe_mail_server_domain_result.t Lwt.t
val get_dns_lookup : dns_lookup_options:Dns_lookup_options.t -> Dns_lookup_results.t Lwt.t
val get_ip_address : name:string -> Ip_address_result.t Lwt.t
val verify_email_address : verify_options:Verify_email_address_options.t -> Email_verification_result.t Lwt.t
