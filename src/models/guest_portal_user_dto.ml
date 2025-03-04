(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    user_id: string;
    portal_id: string;
    name: string option [@default None];
    username: string;
    email_address: string option [@default None];
    inbox_id: string option [@default None];
    login_url: string;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (user_id : string) (portal_id : string) (username : string) (login_url : string) (created_at : string) (updated_at : string) : t = {
    id = id;
    user_id = user_id;
    portal_id = portal_id;
    name = None;
    username = username;
    email_address = None;
    inbox_id = None;
    login_url = login_url;
    created_at = created_at;
    updated_at = updated_at;
}

