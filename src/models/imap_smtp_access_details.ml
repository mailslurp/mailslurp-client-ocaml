(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    smtp_server_host: string;
    smtp_server_port: int32;
    smtp_username: string;
    smtp_password: string;
    imap_server_host: string;
    imap_server_port: int32;
    imap_username: string;
    imap_password: string;
} [@@deriving yojson { strict = false }, show ];;

let create (smtp_server_host : string) (smtp_server_port : int32) (smtp_username : string) (smtp_password : string) (imap_server_host : string) (imap_server_port : int32) (imap_username : string) (imap_password : string) : t = {
    smtp_server_host = smtp_server_host;
    smtp_server_port = smtp_server_port;
    smtp_username = smtp_username;
    smtp_password = smtp_password;
    imap_server_host = imap_server_host;
    imap_server_port = imap_server_port;
    imap_username = imap_username;
    imap_password = imap_password;
}

