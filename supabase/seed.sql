SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict BkGa59hBPYEQ0L7wplMcU28ad8eAeeqKCoh0wz3Rmgy7eeAylaYf4h7s8VEx4ca

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', 'authenticated', 'authenticated', 'pratiksha@test.com', '$2a$10$jG8rCNOUa/I/ggJSBAoafOcHT4TpIycxvaWy.A4JUKKDNVemvtiEy', '2026-01-19 15:53:01.886759+00', NULL, '', NULL, '', NULL, '', '', NULL, '2026-01-25 09:18:49.265396+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "2a4b1a98-5fad-4c19-bd30-b0068eb69e15", "email": "pratiksha@test.com", "email_verified": true, "phone_verified": false}', NULL, '2026-01-19 15:53:01.867078+00', '2026-01-25 12:11:05.122098+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '25d9fcd3-4518-4249-9b4c-af14c91f4348', 'authenticated', 'authenticated', 'pratik@test.com', '$2a$10$p5Gv4ZGsE8yJAFH6NZicveoWHoWbwlluR0Qqf9TNAi9JSamFVv8X6', '2026-01-19 14:21:25.248156+00', NULL, '', NULL, '', NULL, '', '', NULL, '2026-01-25 07:44:21.333452+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "25d9fcd3-4518-4249-9b4c-af14c91f4348", "email": "pratik@test.com", "email_verified": true, "phone_verified": false}', NULL, '2026-01-19 14:21:25.231912+00', '2026-01-25 07:44:21.396401+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('25d9fcd3-4518-4249-9b4c-af14c91f4348', '25d9fcd3-4518-4249-9b4c-af14c91f4348', '{"sub": "25d9fcd3-4518-4249-9b4c-af14c91f4348", "email": "pratik@test.com", "email_verified": false, "phone_verified": false}', 'email', '2026-01-19 14:21:25.242675+00', '2026-01-19 14:21:25.242726+00', '2026-01-19 14:21:25.242726+00', 'f75d4818-5fe5-4448-9242-861b5412dbe4'),
	('2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '{"sub": "2a4b1a98-5fad-4c19-bd30-b0068eb69e15", "email": "pratiksha@test.com", "email_verified": false, "phone_verified": false}', 'email', '2026-01-19 15:53:01.879627+00', '2026-01-19 15:53:01.879678+00', '2026-01-19 15:53:01.879678+00', 'ba71eede-9e06-446c-ae52-8ff9a13db697');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") VALUES
	('6db8ef16-5889-4470-b801-fabd8cf275e2', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '2026-01-25 09:18:49.2655+00', '2026-01-25 12:11:05.133718+00', NULL, 'aal1', NULL, '2026-01-25 12:11:05.133584', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '43.249.187.46', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('6db8ef16-5889-4470-b801-fabd8cf275e2', '2026-01-25 09:18:49.272374+00', '2026-01-25 09:18:49.272374+00', 'password', '00d93f8c-d8a0-41f5-89cd-62386232d0b7');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 30, 'whxryomgny2i', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', true, '2026-01-25 09:18:49.271125+00', '2026-01-25 10:19:32.035114+00', NULL, '6db8ef16-5889-4470-b801-fabd8cf275e2'),
	('00000000-0000-0000-0000-000000000000', 31, 'rmfa3oost263', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', true, '2026-01-25 10:19:32.052618+00', '2026-01-25 12:11:05.112387+00', 'whxryomgny2i', '6db8ef16-5889-4470-b801-fabd8cf275e2'),
	('00000000-0000-0000-0000-000000000000', 32, '7ypzk35mjwsd', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', false, '2026-01-25 12:11:05.118335+00', '2026-01-25 12:11:05.118335+00', 'rmfa3oost263', '6db8ef16-5889-4470-b801-fabd8cf275e2');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."entries" ("id", "created_at", "name", "amount", "paid", "order", "user_id") VALUES
	('a2c414ef-3763-4de4-aad5-22a4aa4c1747', '2026-01-19 16:25:12.863139+00', 'test12', 1234, false, 1, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('d256a3d8-ec5b-4bf4-ab57-1370c6914535', '2026-01-19 16:15:28.887506+00', 'pratiksha Salary credited', 4999, true, 2, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('cdc1a4ee-8caf-4837-b04f-716cd128bcf9', '2026-01-19 16:17:27.872092+00', 'pratisha billpayment', -499, false, 3, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('8449e6ef-897b-4b64-91c7-4616af678d3a', '2026-01-19 16:20:55.218401+00', 'pratiksha bonus', 200, false, 4, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('249ac90a-3f64-4ea8-8559-60a65f47f8b9', '2026-01-25 05:47:20.428814+00', 'sss', 11, false, 5, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('8a1619ff-dbf4-45b8-afbd-0dc2774a1069', '2026-01-25 05:48:07.365132+00', 'aaa', 12, false, 6, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('ee24730e-4e33-4d4d-987a-32901091b3e1', '2026-01-25 05:49:29.624784+00', 'aaaa', 11, false, 7, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('a952019a-5c0c-4f72-9aac-8c917741c3b8', '2026-01-25 05:50:45.094607+00', 'dsdfd', 223, false, 8, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('4b2545a0-d7fe-463f-9289-169b435a5d32', '2026-01-25 06:01:36.90876+00', 'bananas', 22, false, 9, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15'),
	('9e654dea-8b15-4f4f-924e-dda76ef84af9', '2026-01-25 06:02:10.402817+00', 'applse', 22, false, 10, '2a4b1a98-5fad-4c19-bd30-b0068eb69e15');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "avatar_filename") VALUES
	('2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '1769332767121_avatar_number_1.png');


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."stats" ("id", "created_at", "name", "value") VALUES
	(1, '2026-01-25 05:38:26.268483+00', 'entries_count', 10);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") VALUES
	('avatars', 'avatars', NULL, '2026-01-25 06:55:45.451871+00', '2026-01-25 06:55:45.451871+00', true, false, NULL, '{image/*}', NULL, 'STANDARD');


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") VALUES
	('f5cb6d65-a259-47d7-97a6-2c7875b649ac', 'avatars', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15/1769327250637_3595942_e0c5_2.jpg', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '2026-01-25 07:47:33.575896+00', '2026-01-25 07:47:33.575896+00', '2026-01-25 07:47:33.575896+00', '{"eTag": "\"778354e39e7448dfc525b61fcfb36526\"", "size": 5162, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-01-25T07:47:34.000Z", "contentLength": 5162, "httpStatusCode": 200}', '76a88102-c091-4f09-b73f-8b6dbcb8ff77', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '{}', 2),
	('01a932e8-edf0-4078-bf24-805d0cd09a15', 'avatars', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15/1769332767121_avatar_number_1.png', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '2026-01-25 09:19:30.187833+00', '2026-01-25 09:19:30.187833+00', '2026-01-25 09:19:30.187833+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-01-25T09:19:31.000Z", "contentLength": 6715, "httpStatusCode": 200}', '3b54ccaa-fc0f-4ab7-af84-7ce452363a8a', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '{}', 2);


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") VALUES
	('avatars', '2a4b1a98-5fad-4c19-bd30-b0068eb69e15', '2026-01-25 07:47:33.575896+00', '2026-01-25 07:47:33.575896+00');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 32, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."stats_id_seq"', 1, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict BkGa59hBPYEQ0L7wplMcU28ad8eAeeqKCoh0wz3Rmgy7eeAylaYf4h7s8VEx4ca

RESET ALL;
