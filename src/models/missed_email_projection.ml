(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    from: string option [@default None];
    created_at: string;
    subject: string option [@default None];
    user_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (created_at : string) : t = {
    id = id;
    from = None;
    created_at = created_at;
    subject = None;
    user_id = None;
}

