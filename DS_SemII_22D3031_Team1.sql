--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-09-23 12:09:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: store_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.store_category OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16404)
-- Name: store_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_customer (
    id integer NOT NULL,
    phone character varying(10) NOT NULL,
    email character varying(254) NOT NULL,
    password character varying(100) NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL
);


ALTER TABLE public.store_customer OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16409)
-- Name: store_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_products (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    price integer NOT NULL,
    description character varying(250),
    category_id integer NOT NULL
);


ALTER TABLE public.store_products OWNER TO postgres;

--
-- TOC entry 4792 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: store_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_category (id, name) FROM stdin;
51	Electronics
21	Clothing
60	Book
\.


--
-- TOC entry 4793 (class 0 OID 16404)
-- Dependencies: 216
-- Data for Name: store_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_customer (id, phone, email, password, last_name, first_name) FROM stdin;
21	9345295284	22d3021@science.claretcollege.edu.in	pbkdf2_sha256$216000$RB7ATlbKb9Zf$7/w0/UKdoRdUV4/fOZuL5EN06n7l9Wan+r1Ad7jTUPE=	s	divya
31	6363058912	22d3031@science.claretcollege.edu.in	pbkdf2_sha256$216000$STXuzmJYpT6H$hJixbM7AKBrHmZYYDxWGqJn6aIfwueBhSNbRCHyr+7E=	K	Jagadeesh
45	8197770112	22d3045@science.claretcollege.edu.in	pbkdf2_sha256$216000$BLBVbxxfPjlV$F4wAcTOMSb67JoQImXEOjXPDDgER08/EPze8RSDa7yk=	parveez	mohammad
13	7795202781	22d3113@science.claretcollege.edu.in	pbkdf2_sha256$216000$l4HiM3ZIFTn7$lQ3/ZvzwVpCa8nlt3jg76Rb29A1jG367vHKMZ9gkzjU=	haroon	mohammad
53	6287929553	22d3053@science.claretcollege.edu.in	pbkdf2_sha256$216000$RB7ATlbKb9Zf$7/w0/UKdoRdwe7/fOZuL5EN06n7l9Wan+r1Ad7jerTU=	jha	rashmi
68	9663076796	22d3068@science.claretcollege.edu.in	pbkdf2_sha256$216000$STXuzmJYpT6H$hJixbM7AKBrHmZYYDxWGqJn6aIfwuwertyyrerrr+7E=	sanjana	s
88	8296635680	22d3088@science.claretcollege.edu.in	pbkdf2_sha256$216000$BLBVbxxfPjlV$F4wAcThtfhtdywiqowjqgXPDDgER08/EPze8RSDa7yk=	ps	varshitha
\.


--
-- TOC entry 4794 (class 0 OID 16409)
-- Dependencies: 217
-- Data for Name: store_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_products (id, name, price, description, category_id) FROM stdin;
1022	The Odyssey	500	\N	60
1028	Soundbar	1300	\N	51
1023	Blazers	800	\N	21
1024	Moby-Dick	250	\N	60
1029	VR headset	15500	\N	51
1025	Coats	600	\N	21
1026	War and Peace	850	\N	60
1030	Vests	450	\N	21
1027	Digital audio player	9000	\N	51
1031	The Hobbit	1000	\N	60
1039	Harry Potter	550	\N	60
1032	Leggings	200	\N	21
1038	Drone	5000	\N	51
1033	The Lord of the Rings	800	\N	60
1037	Sweatshirts	400	\N	21
1034	Computer peripherals	15000	\N	51
1036	The Catcher in the Rye	750	\N	60
1035	Tank tops	250	\N	21
1041	Home security cameras	10000	\N	51
1040	Pride and Prejudice	400	\N	60
1042	Sleepwear	500	\N	21
1001	Car Stereo System	4500	\N	51
1003	men Moccasins	600	\N	21
1002	To Kill a Mockingbird	500	\N	60
1005	MP3 Player	2000	\N	51
1004	Flats	1000	\N	21
1006	Fitness Tracker	1000	\N	51
1008	Loafers	500	\N	21
1009	Flip-flops	800	\N	21
1007	Wi-Fi Router	5000	\N	51
1010	One Hundred Years of Solitude	250	\N	60
1012	The Kite Runner	800	\N	60
1011	GPS Navigation Device	3500	\N	51
1014	Espadrilles	750	\N	21
1013	The Grapes of Wrath	1000	\N	60
1015	Portable Power Bank	2500	\N	51
1017	Slippers	650	\N	21
1018	Home TheaterSystem	7000	\N	51
1019	Gone with the Wind	550	\N	60
1016	Clogs	850	\N	21
1020	Digital Voice Assistant	9500	\N	51
1021	The Iliad	800	\N	60
1064	Smartphone	6000	\N	51
1065	Laptop	10000	\N	51
1066	Camera	4000	\N	51
1067	T-Shirt	300	\N	21
1068	Jeans	500	\N	21
1069	Dress	700	\N	21
1070	The Great Gatsby	150	\N	60
1071	Harry Potter and the Sorcerer's Stone	200	\N	60
1072	1984	180	\N	60
1073	Headphones	500	\N	51
1074	Tablet	3000	\N	51
1075	Sweater	300	\N	21
1076	Shorts	250	\N	21
1077	Lord of the Rings	180	\N	60
1078	Smartwatch	800	\N	51
1079	Blu-ray Player	700	\N	51
1080	Sneakers	450	\N	21
1081	Hoodie	350	\N	21
1082	To Kill a Mockingbird	140	\N	60
1083	Digital Camera	2000	\N	21
1084	E-reader	600	\N	21
1085	Sony playstation 5	6000	\N	51
1086	Apple watch	10000	\N	51
1087	Mac book Air	4000	\N	51
1088	Levis	300	\N	21
1089	Gucci	500	\N	21
1090	Calvin klein	700	\N	21
1091	The silent Patient	150	\N	60
1092	Dune	200	\N	60
1093	Becoming	180	\N	60
1094	Fitbit charge 5	500	\N	51
1095	Samsung Galaxy	3000	\N	51
1096	Nike Air sneakers	300	\N	21
1097	Trousers	250	\N	21
1098	The hunger games	180	\N	60
1099	Camera	800	\N	51
1100	Ear phones	700	\N	51
1101	Belts	450	\N	21
1102	Tie	350	\N	21
1103	The Alchemist	140	\N	60
1104	Computer(Laptop)	2000	\N	21
1105	Mobile Charger	600	\N	21
1127	Digital Weighing Scale	459	\N	51
1128	Writing Tablet	339	\N	51
1129	Bluetooth Camera Shutter Control	129	\N	51
1130	Car Charger Adapter	399	\N	51
1131	Webcam	599	\N	51
1132	Car Dashcam	3599	\N	51
1133	Wifi Video Doorbell	4499	\N	51
1134	Pepe Jeans Women	1099	\N	21
1135	Cargo pants Women	599	\N	21
1136	Puma Activewear	1299	\N	21
1137	Linen Shirt	999	\N	21
1138	Biba Salwar Suit Set	1999	\N	21
1139	Kanjivaram Silk Saree	1899	\N	21
1140	Air Jordan 1	10549	\N	21
1141	13 Reasons Why	282	\N	60
1142	The Fault in Our Stars	266	\N	60
1143	The Girl on the Train	351	\N	60
1144	The Shining	479	\N	60
1145	The Diary of A Young Girl	119	\N	60
1146	Dark Matter	320	\N	60
1147	Sherlock Holmes Series Collection	990	\N	60
1043	Smartphone	6000	\N	51
1044	Laptop	10000	\N	51
1046	T-Shirt	300	\N	21
1047	Jeans	500	\N	21
1048	Dress	700	\N	21
1049	The Great Gatsby	150	\N	60
1050	Harry Potter and the Sorcerer's Stone	200	\N	60
1051	1984	180	\N	60
1052	Headphones	500	\N	51
1053	Tablet	3000	\N	51
1054	Sweater	300	\N	21
1055	Shorts	250	\N	21
1056	Lord of the Rings	180	\N	60
1057	Smartwatch	800	\N	51
1058	Blu-ray Player	700	\N	51
1060	Gucci Hoddie	350	\N	21
1061	To Kill a Mockingbird  Part 2	140	\N	60
1062	Digital Camera	2000	\N	51
1063	Amazon reader	600	\N	51
1148	Samsung Smartphone	6000	\N	51
1149	Dell Laptop	10000	\N	51
1150	Canon Camera	4000	\N	51
1151	Nike T-Shirt	300	\N	21
1152	Levis Jeans	500	\N	21
1153	Calvin Klein Dress	700	\N	21
1154	The Great Gatsby Book	150	\N	60
1155	Harry Potter Book	200	\N	60
1156	1984 Book	180	\N	60
1157	Sony Headphones	500	\N	51
1158	Apple Tablet	3000	\N	51
1159	Adidas Sweater	300	\N	21
1160	Puma Shorts	250	\N	21
1161	Lord of the Rings Book	180	\N	60
1162	Garmin Smartwatch	800	\N	51
1163	Sony Blu-ray Player	700	\N	51
1164	Reebok Sneakers	450	\N	21
1165	Columbia Hoodie	350	\N	21
1166	to the unknown world Book	140	\N	60
1167	Nikon Digital Camera	2000	\N	51
1168	Kindle E-reader	600	\N	51
1059	Sneaker nike	450	\N	21
1045	Camera	4000	\N	51
\.


--
-- TOC entry 4642 (class 2606 OID 16403)
-- Name: store_category store_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_category
    ADD CONSTRAINT store_category_pkey PRIMARY KEY (id);


--
-- TOC entry 4644 (class 2606 OID 16408)
-- Name: store_customer store_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_pkey PRIMARY KEY (id);


--
-- TOC entry 4647 (class 2606 OID 16413)
-- Name: store_products store_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4645 (class 1259 OID 24590)
-- Name: store_products_category_id_48867233; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_products_category_id_48867233 ON public.store_products USING btree (category_id);


--
-- TOC entry 4648 (class 2606 OID 16414)
-- Name: store_products store_products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.store_category(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-09-23 12:09:39

--
-- PostgreSQL database dump complete
--

