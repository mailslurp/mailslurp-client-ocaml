(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    created_at: string;
    read: bool option [@default None];
    uid: int64;
    seq_num: int64;
    id: string;
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (uid : int64) (seq_num : int64) (id : string) : t = {
    created_at = created_at;
    read = None;
    uid = uid;
    seq_num = seq_num;
    id = id;
}

