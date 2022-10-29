--
-- PostgreSQL database dump
--

-- Dumped from database version 11.17 (Debian 11.17-astra.se1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-10-29 12:24:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

--
-- TOC entry 9 (class 2615 OID 30384)
-- Name: Lab shiny; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "Lab shiny";


SET default_tablespace = '';

--
-- TOC entry 255 (class 1259 OID 30492)
-- Name: agent; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".agent (
    id_agent integer NOT NULL,
    title character varying
);


--
-- TOC entry 256 (class 1259 OID 30500)
-- Name: agent_priority_history; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".agent_priority_history (
    id_ag_pr_his integer NOT NULL,
    id_agent integer,
    change_date date,
    priority_value integer
);


--
-- TOC entry 257 (class 1259 OID 30505)
-- Name: agent_type; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".agent_type (
    id_agent_type integer NOT NULL,
    title character varying,
    image character varying
);


--
-- TOC entry 249 (class 1259 OID 30409)
-- Name: material; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".material (
    id_material integer NOT NULL,
    title character varying,
    countin_pack integer,
    countin_stock real,
    min_count character varying,
    description character varying,
    cost numeric,
    image character varying,
    id_material_type integer,
    unit character varying
);


--
-- TOC entry 250 (class 1259 OID 30422)
-- Name: material_count_history; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".material_count_history (
    id_mat_count_his integer NOT NULL,
    id_material integer,
    change_date date,
    count_value real
);


--
-- TOC entry 251 (class 1259 OID 30432)
-- Name: material_supplier; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".material_supplier (
    id_mat integer NOT NULL,
    id_sup integer NOT NULL
);


--
-- TOC entry 246 (class 1259 OID 30385)
-- Name: material_type; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".material_type (
    id_mat_type integer NOT NULL,
    title text,
    defected_percent real
);


--
-- TOC entry 252 (class 1259 OID 30449)
-- Name: product; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".product (
    id_product integer NOT NULL,
    title text,
    id_product_type integer,
    article_number character varying,
    description character varying,
    image character varying,
    production_person_count integer,
    production_workshop_number integer,
    min_cost_for_agent numeric
);


--
-- TOC entry 253 (class 1259 OID 30462)
-- Name: product_cost_history; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".product_cost_history (
    id_pr_cost_his integer NOT NULL,
    id_product integer,
    change_date date,
    cost_value character varying
);


--
-- TOC entry 254 (class 1259 OID 30475)
-- Name: product_material; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".product_material (
    id_product integer NOT NULL,
    id_material integer NOT NULL,
    count real
);


--
-- TOC entry 258 (class 1259 OID 30513)
-- Name: product_sale; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".product_sale (
    id_pro_sale integer NOT NULL,
    id_agent integer,
    id_product integer,
    sale_date date,
    product_count integer
);


--
-- TOC entry 247 (class 1259 OID 30393)
-- Name: product_type; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".product_type (
    id_pro_type integer NOT NULL,
    title text,
    defected_percent real
);


--
-- TOC entry 259 (class 1259 OID 30518)
-- Name: shop; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".shop (
    id_shop integer NOT NULL,
    title text,
    address character varying,
    id_agent integer
);


--
-- TOC entry 248 (class 1259 OID 30401)
-- Name: supplier; Type: TABLE; Schema: Lab shiny; Owner: -
--

CREATE TABLE "Lab shiny".supplier (
    id_sup integer NOT NULL,
    title text,
    inn character varying,
    start_date date,
    quality_rating integer,
    supplier_type character varying
);


--
-- TOC entry 3199 (class 0 OID 30492)
-- Dependencies: 255
-- Data for Name: agent; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3200 (class 0 OID 30500)
-- Dependencies: 256
-- Data for Name: agent_priority_history; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3201 (class 0 OID 30505)
-- Dependencies: 257
-- Data for Name: agent_type; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3193 (class 0 OID 30409)
-- Dependencies: 249
-- Data for Name: material; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3194 (class 0 OID 30422)
-- Dependencies: 250
-- Data for Name: material_count_history; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3195 (class 0 OID 30432)
-- Dependencies: 251
-- Data for Name: material_supplier; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3190 (class 0 OID 30385)
-- Dependencies: 246
-- Data for Name: material_type; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3196 (class 0 OID 30449)
-- Dependencies: 252
-- Data for Name: product; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3197 (class 0 OID 30462)
-- Dependencies: 253
-- Data for Name: product_cost_history; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3198 (class 0 OID 30475)
-- Dependencies: 254
-- Data for Name: product_material; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3202 (class 0 OID 30513)
-- Dependencies: 258
-- Data for Name: product_sale; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3191 (class 0 OID 30393)
-- Dependencies: 247
-- Data for Name: product_type; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3203 (class 0 OID 30518)
-- Dependencies: 259
-- Data for Name: shop; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3192 (class 0 OID 30401)
-- Dependencies: 248
-- Data for Name: supplier; Type: TABLE DATA; Schema: Lab shiny; Owner: -
--



--
-- TOC entry 3046 (class 2606 OID 30499)
-- Name: agent agent_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent
    ADD CONSTRAINT agent_pk PRIMARY KEY (id_agent);


--
-- TOC entry 3048 (class 2606 OID 30504)
-- Name: agent_priority_history agent_priority_history_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent_priority_history
    ADD CONSTRAINT agent_priority_history_pk PRIMARY KEY (id_ag_pr_his);


--
-- TOC entry 3050 (class 2606 OID 30512)
-- Name: agent_type agent_type_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent_type
    ADD CONSTRAINT agent_type_pk PRIMARY KEY (id_agent_type);


--
-- TOC entry 3036 (class 2606 OID 30426)
-- Name: material_count_history material_count_history_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_count_history
    ADD CONSTRAINT material_count_history_pk PRIMARY KEY (id_mat_count_his);


--
-- TOC entry 3034 (class 2606 OID 30416)
-- Name: material material_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material
    ADD CONSTRAINT material_pk PRIMARY KEY (id_material);


--
-- TOC entry 3038 (class 2606 OID 30438)
-- Name: material_supplier material_supplier_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_supplier
    ADD CONSTRAINT material_supplier_pk PRIMARY KEY (id_mat, id_sup);


--
-- TOC entry 3028 (class 2606 OID 30392)
-- Name: material_type material_type_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_type
    ADD CONSTRAINT material_type_pk PRIMARY KEY (id_mat_type);


--
-- TOC entry 3042 (class 2606 OID 30469)
-- Name: product_cost_history product_cost_history_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_cost_history
    ADD CONSTRAINT product_cost_history_pk PRIMARY KEY (id_pr_cost_his);


--
-- TOC entry 3044 (class 2606 OID 30481)
-- Name: product_material product_material_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_material
    ADD CONSTRAINT product_material_pk PRIMARY KEY (id_product, id_material);


--
-- TOC entry 3040 (class 2606 OID 30456)
-- Name: product product_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product
    ADD CONSTRAINT product_pk PRIMARY KEY (id_product);


--
-- TOC entry 3052 (class 2606 OID 30517)
-- Name: product_sale product_sale_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_sale
    ADD CONSTRAINT product_sale_pk PRIMARY KEY (id_pro_sale);


--
-- TOC entry 3030 (class 2606 OID 30400)
-- Name: product_type product_type_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_type
    ADD CONSTRAINT product_type_pk PRIMARY KEY (id_pro_type);


--
-- TOC entry 3054 (class 2606 OID 30525)
-- Name: shop shop_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".shop
    ADD CONSTRAINT shop_pk PRIMARY KEY (id_shop);


--
-- TOC entry 3032 (class 2606 OID 30408)
-- Name: supplier supplier_pk; Type: CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (id_sup);


--
-- TOC entry 3063 (class 2606 OID 30526)
-- Name: agent agent_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent
    ADD CONSTRAINT agent_fk FOREIGN KEY (id_agent) REFERENCES "Lab shiny".agent_type(id_agent_type);


--
-- TOC entry 3064 (class 2606 OID 30531)
-- Name: agent_priority_history agent_priority_history_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent_priority_history
    ADD CONSTRAINT agent_priority_history_fk FOREIGN KEY (id_agent) REFERENCES "Lab shiny".agent(id_agent);


--
-- TOC entry 3065 (class 2606 OID 30536)
-- Name: agent_type agent_type_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".agent_type
    ADD CONSTRAINT agent_type_fk FOREIGN KEY (id_agent_type) REFERENCES "Lab shiny".agent(id_agent);


--
-- TOC entry 3056 (class 2606 OID 30427)
-- Name: material_count_history material_count_history_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_count_history
    ADD CONSTRAINT material_count_history_fk FOREIGN KEY (id_material) REFERENCES "Lab shiny".material(id_material);


--
-- TOC entry 3055 (class 2606 OID 30417)
-- Name: material material_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material
    ADD CONSTRAINT material_fk FOREIGN KEY (id_material_type) REFERENCES "Lab shiny".material_type(id_mat_type);


--
-- TOC entry 3057 (class 2606 OID 30439)
-- Name: material_supplier material_supplie1r_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_supplier
    ADD CONSTRAINT material_supplie1r_fk FOREIGN KEY (id_sup) REFERENCES "Lab shiny".supplier(id_sup);


--
-- TOC entry 3058 (class 2606 OID 30444)
-- Name: material_supplier material_supplier_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".material_supplier
    ADD CONSTRAINT material_supplier_fk FOREIGN KEY (id_mat) REFERENCES "Lab shiny".material(id_material);


--
-- TOC entry 3060 (class 2606 OID 30470)
-- Name: product_cost_history product_cost_history_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_cost_history
    ADD CONSTRAINT product_cost_history_fk FOREIGN KEY (id_product) REFERENCES "Lab shiny".product(id_product);


--
-- TOC entry 3059 (class 2606 OID 30457)
-- Name: product product_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product
    ADD CONSTRAINT product_fk FOREIGN KEY (id_product_type) REFERENCES "Lab shiny".product_type(id_pro_type);


--
-- TOC entry 3061 (class 2606 OID 30482)
-- Name: product_material product_material_f2k; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_material
    ADD CONSTRAINT product_material_f2k FOREIGN KEY (id_material) REFERENCES "Lab shiny".material(id_material);


--
-- TOC entry 3062 (class 2606 OID 30487)
-- Name: product_material product_material_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_material
    ADD CONSTRAINT product_material_fk FOREIGN KEY (id_product) REFERENCES "Lab shiny".product(id_product);


--
-- TOC entry 3066 (class 2606 OID 30541)
-- Name: product_sale product_sale_1fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_sale
    ADD CONSTRAINT product_sale_1fk FOREIGN KEY (id_product) REFERENCES "Lab shiny".product(id_product);


--
-- TOC entry 3067 (class 2606 OID 30546)
-- Name: product_sale product_sale_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".product_sale
    ADD CONSTRAINT product_sale_fk FOREIGN KEY (id_agent) REFERENCES "Lab shiny".agent(id_agent);


--
-- TOC entry 3068 (class 2606 OID 30551)
-- Name: shop shop_fk; Type: FK CONSTRAINT; Schema: Lab shiny; Owner: -
--

ALTER TABLE ONLY "Lab shiny".shop
    ADD CONSTRAINT shop_fk FOREIGN KEY (id_agent) REFERENCES "Lab shiny".agent(id_agent);


-- Completed on 2022-10-29 12:24:16

--
-- PostgreSQL database dump complete
--

