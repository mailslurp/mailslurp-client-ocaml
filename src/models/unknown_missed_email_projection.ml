(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    from: string option [@default None];
    subject: string option [@default None];
    _to: string list;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (created_at : string) : t = {
    id = id;
    from = None;
    subject = None;
    _to = [];
    created_at = created_at;
}

