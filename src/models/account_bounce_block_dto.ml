(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    is_sending_blocked: bool;
    bounce_count: int64;
    bounce_count_today: int64;
    maximum_daily_bounces: int64;
    maximum_account_bounces: int64;
} [@@deriving yojson { strict = false }, show ];;

let create (is_sending_blocked : bool) (bounce_count : int64) (bounce_count_today : int64) (maximum_daily_bounces : int64) (maximum_account_bounces : int64) : t = {
    is_sending_blocked = is_sending_blocked;
    bounce_count = bounce_count;
    bounce_count_today = bounce_count_today;
    maximum_daily_bounces = maximum_daily_bounces;
    maximum_account_bounces = maximum_account_bounces;
}
