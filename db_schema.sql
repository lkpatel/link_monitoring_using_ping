--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: link_info; Type: TABLE; Schema: public; Owner: lkpatel; Tablespace: 
--

CREATE TABLE link_info (
    link_id integer,
    interface_ip1 inet,
    interface_ip2 inet,
    link_status boolean,
    last_updated timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.link_info OWNER TO lkpatel;

--
-- Data for Name: link_info; Type: TABLE DATA; Schema: public; Owner: lkpatel
COPY link_info (link_id, interface_ip1, interface_ip2, link_status, last_updated) FROM stdin;
1       172.20.21.97    172.20.21.98    f       2017-02-14 15:04:10
\.


--
-- PostgreSQL database dump complete
--
