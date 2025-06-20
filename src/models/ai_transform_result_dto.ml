(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    user_id: string;
    ai_transform_id: string;
    ai_transform_mapping_id: string;
    value: Yojson.Safe.t option;
    entity_id: string;
    entity_type: Enums.createaitransformermappingoptions_entitytype;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (user_id : string) (ai_transform_id : string) (ai_transform_mapping_id : string) (value : Yojson.Safe.t option) (entity_id : string) (entity_type : Enums.createaitransformermappingoptions_entitytype) (created_at : string) (updated_at : string) : t = {
    id = id;
    user_id = user_id;
    ai_transform_id = ai_transform_id;
    ai_transform_mapping_id = ai_transform_mapping_id;
    value = value;
    entity_id = entity_id;
    entity_type = entity_type;
    created_at = created_at;
    updated_at = updated_at;
}

