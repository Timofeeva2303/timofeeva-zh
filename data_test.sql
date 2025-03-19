--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 17.0

-- Started on 2025-03-19 13:08:42 MSK

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
-- TOC entry 3673 (class 0 OID 16385)
-- Dependencies: 209
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, name, "position", skill) FROM stdin;
AB001	Иванов Петр Сергеевич	Аналитик	3
BB233	Журавлев Иван Андреевич	Продавец	2
CC323	Сергиенко Анастасия Михайловна	Продавец	4
DK321	Петров Олег Игоревич	Кассир	1
AH325	Денисова Юлия Александровна	Логист	4
OP858	Лазарев Антон Петрович	Приемщик	8
\.


--
-- TOC entry 3674 (class 0 OID 16391)
-- Dependencies: 210
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (sale_id, branch_id, user_id, sku, quantity, price) FROM stdin;
ufidu-434	m001	CC323	Батарейка	1	100
nkcvbc-423	m001	BB233	Фильтр	2	230
iuagaa-432	m200	DK321	Телефон	1	1199
usan-214	b385	DK321	Телевизор	1	20999
\.


-- Completed on 2025-03-19 13:08:43 MSK

--
-- PostgreSQL database dump complete
--

