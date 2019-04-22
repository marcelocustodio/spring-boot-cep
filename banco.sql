--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 11.2 (Debian 11.2-1.pgdg90+1)

-- Started on 2019-04-21 19:50:00 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE cep;
--
-- TOC entry 2877 (class 1262 OID 16766)
-- Name: cep; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cep WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';


ALTER DATABASE cep OWNER TO postgres;

\connect cep

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 198 (class 1259 OID 16783)
-- Name: id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16769)
-- Name: cep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cep (
    id bigint DEFAULT nextval('public.id_seq'::regclass) NOT NULL,
    endereco character varying NOT NULL,
    cep character varying NOT NULL
);


ALTER TABLE public.cep OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16779)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 2869 (class 0 OID 16769)
-- Dependencies: 196
-- Data for Name: cep; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cep VALUES (1, 'Rua Waldemar Jardim Maues, 1041', '68098455');
INSERT INTO public.cep VALUES (2, 'Rua Dr Joao Colin, 1317', '8899901');


--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 197
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 5, true);


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 198
-- Name: id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_seq', 1, false);


--
-- TOC entry 2745 (class 2606 OID 16776)
-- Name: cep chave_primaria; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cep
    ADD CONSTRAINT chave_primaria PRIMARY KEY (id);


--
-- TOC entry 2747 (class 2606 OID 16778)
-- Name: cep restricao_cep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cep
    ADD CONSTRAINT restricao_cep UNIQUE (cep);


-- Completed on 2019-04-21 19:50:04 -03

--
-- PostgreSQL database dump complete
--

