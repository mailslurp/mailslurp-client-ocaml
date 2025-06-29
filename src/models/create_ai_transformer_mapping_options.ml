(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    name: string;
    ai_transform_id: string;
    entity_id: string;
    entity_type: Enums.createaitransformermappingoptions_entitytype;
    content_selector: Enums.contentselector option [@default None];
    trigger_selector: Enums.triggerselector option [@default None];
    spread_root_array: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (name : string) (ai_transform_id : string) (entity_id : string) (entity_type : Enums.createaitransformermappingoptions_entitytype) : t = {
    name = name;
    ai_transform_id = ai_transform_id;
    entity_id = entity_id;
    entity_type = entity_type;
    content_selector = None;
    trigger_selector = None;
    spread_root_array = None;
}

