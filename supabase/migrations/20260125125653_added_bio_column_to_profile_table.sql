alter table "public"."profiles" add column "bio" text;

alter table "public"."profiles" alter column "avatar_filename" drop not null;


