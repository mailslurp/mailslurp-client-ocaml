(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Imap_smtp_access_details.t : Access details for inbox using SMTP or IMAP
 *)

type t = {
    (* Secure TLS SMTP server host domain *)
    secure_smtp_server_host: string;
    (* Secure TLS SMTP server host port *)
    secure_smtp_server_port: int32;
    (* Secure TLS SMTP username for login *)
    secure_smtp_username: string;
    (* Secure TLS SMTP password for login *)
    secure_smtp_password: string;
    (* SMTP server host domain *)
    smtp_server_host: string;
    (* SMTP server host port *)
    smtp_server_port: int32;
    (* SMTP username for login *)
    smtp_username: string;
    (* SMTP password for login *)
    smtp_password: string;
    (* IMAP server host domain *)
    imap_server_host: string;
    (* IMAP server host port *)
    imap_server_port: int32;
    (* IMAP username for login *)
    imap_username: string;
    (* IMAP password for login *)
    imap_password: string;
    (* Mail from domain or SMTP HELO value *)
    mail_from_domain: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Access details for inbox using SMTP or IMAP *)
let create (secure_smtp_server_host : string) (secure_smtp_server_port : int32) (secure_smtp_username : string) (secure_smtp_password : string) (smtp_server_host : string) (smtp_server_port : int32) (smtp_username : string) (smtp_password : string) (imap_server_host : string) (imap_server_port : int32) (imap_username : string) (imap_password : string) : t = {
    secure_smtp_server_host = secure_smtp_server_host;
    secure_smtp_server_port = secure_smtp_server_port;
    secure_smtp_username = secure_smtp_username;
    secure_smtp_password = secure_smtp_password;
    smtp_server_host = smtp_server_host;
    smtp_server_port = smtp_server_port;
    smtp_username = smtp_username;
    smtp_password = smtp_password;
    imap_server_host = imap_server_host;
    imap_server_port = imap_server_port;
    imap_username = imap_username;
    imap_password = imap_password;
    mail_from_domain = None;
}

