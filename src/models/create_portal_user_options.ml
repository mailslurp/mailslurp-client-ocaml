(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    password: string option [@default None];
    name: string option [@default None];
    username: string option [@default None];
    skip_inbox_creation: bool option [@default None];
    inbox_id: string option [@default None];
    create_inbox_options: Create_inbox_dto.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    password = None;
    name = None;
    username = None;
    skip_inbox_creation = None;
    inbox_id = None;
    create_inbox_options = None;
}

