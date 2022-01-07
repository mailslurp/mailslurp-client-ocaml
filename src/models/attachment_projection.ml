(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    name: string option [@default None];
    (* Content length of attachment in bytes *)
    content_length: int64 option [@default None];
    (* Content type of attachment. *)
    content_type: string option [@default None];
    user_id: string;
    (* Attachment ID *)
    attachment_id: string;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (user_id : string) (attachment_id : string) (created_at : string) (updated_at : string) : t = {
    name = None;
    content_length = None;
    content_type = None;
    user_id = user_id;
    attachment_id = attachment_id;
    created_at = created_at;
    updated_at = updated_at;
}

