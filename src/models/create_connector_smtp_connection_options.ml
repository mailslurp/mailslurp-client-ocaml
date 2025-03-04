(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    enabled: bool option [@default None];
    smtp_host: string;
    smtp_port: int32 option [@default None];
    smtp_ssl: bool option [@default None];
    smtp_username: string option [@default None];
    smtp_password: string option [@default None];
    smtp_mechanisms: string list;
    start_tls: bool option [@default None];
    local_host_name: string option [@default None];
    proxy_host: string option [@default None];
    proxy_port: int32 option [@default None];
    proxy_enabled: bool option [@default None];
    ssl_trust: string option [@default None];
    ssl_protocols: string list;
} [@@deriving yojson { strict = false }, show ];;

let create (smtp_host : string) : t = {
    enabled = None;
    smtp_host = smtp_host;
    smtp_port = None;
    smtp_ssl = None;
    smtp_username = None;
    smtp_password = None;
    smtp_mechanisms = [];
    start_tls = None;
    local_host_name = None;
    proxy_host = None;
    proxy_port = None;
    proxy_enabled = None;
    ssl_trust = None;
    ssl_protocols = [];
}

