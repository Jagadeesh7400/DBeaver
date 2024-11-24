--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-09-23 12:06:46

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
-- TOC entry 218 (class 1259 OID 16419)
-- Name: store_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_order (
    id integer NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    customer_id integer NOT NULL,
    product_id integer NOT NULL,
    address character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    date date NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.store_order OWNER TO postgres;

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
-- TOC entry 4798 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: store_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_category (id, name) FROM stdin;
51	Electronics
21	Clothing
60	Book
\.


--
-- TOC entry 4799 (class 0 OID 16404)
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
-- TOC entry 4801 (class 0 OID 16419)
-- Dependencies: 218
-- Data for Name: store_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_order (id, quantity, price, customer_id, product_id, address, phone, date, status) FROM stdin;
150	1	8000	45	1041	dehli	232323233	2023-04-19	t
101	2	8000	31	1001	bangalor north	3434343434	2023-01-01	t
113	1	6500	21	1018	dehli	9528381590	2023-12-02	f
102	3	1400	45	1022	Jahangirabad	9528381590	2023-02-03	f
114	1	600	13	1084	mumbai	232323233	2023-11-04	t
103	2	1400	68	1008	Uttar Pradesh	232323233	2023-03-05	f
115	1	2950	31	1074	Jahangirabad	232323233	2023-10-06	t
104	3	1500	45	1025	bangalor north	9528381590	2023-04-07	f
116	1	2450	88	1015	dehli	919528381590	2023-09-08	t
105	2	300	21	1071	Jahangirabad	232323233	2023-05-09	t
117	4	950	31	1035	mumbai	232323233	2023-08-10	f
106	2	470	45	1035	Jahangirabad	232323233	2023-06-11	f
118	1	1550	13	1083	Uttar Pradesh	232324324	2023-07-12	t
107	3	650	31	1010	dehli	9528381590	2023-07-13	t
119	1	9500	21	1020	bangalor north	9528381590	2023-06-14	f
108	2	2300	68	1028	mumbai	232323233	2023-08-15	t
120	1	3250	45	1011	Jahangirabad	232323233	2023-05-16	f
109	3	599	13	1032	bangalor north	232323233	2023-09-17	t
121	2	1000	21	1025	Uttar Pradesh	232324324	2023-04-18	f
110	3	500	31	1071	mumbai	237459374	2023-10-19	f
122	1	7000	45	1018	dehli	9528381590	2023-03-20	t
111	2	350	45	1010	mumbai	919528381590	2023-11-21	t
123	1	9000	88	1065	Jahangirabad	232323233	2023-02-22	f
112	1	12000	13	1034	Uttar Pradesh	232323233	2023-12-23	t
124	3	1250	21	1008	bangalor north	232323233	2023-01-24	t
140	1	150	68	1071	dehli	232324324	2023-08-25	f
125	2	399	45	1032	Jahangirabad	237459374	2023-01-26	f
149	1	9000	88	1020	mumbai	237459374	2023-09-27	t
126	1	3400	21	1011	Uttar Pradesh	237459374	2023-12-28	t
148	3	400	13	1072	dehli	237459374	2023-05-29	f
127	1	750	68	1021	bangalor north	237459374	2023-11-30	t
143	2	600	45	1022	Uttar Pradesh	237459374	2023-01-01	f
128	1	14000	21	1034	mumbai	237459374	2023-10-02	t
147	3	2500	13	1006	Jahangirabad	237459374	2023-02-03	f
129	2	399	68	1032	bangalor north	237459374	2023-09-04	f
146	1	3000	45	1074	Uttar Pradesh	237459374	2023-12-05	t
130	2	350	31	1071	dehli	237459374	2023-08-06	t
145	3	1500	21	1084	bangalor north	232324324	2023-10-07	f
139	1	9500	88	1041	Jahangirabad	237459374	2023-07-08	f
131	2	2000	45	1028	mumbai	237459374	2023-01-09	t
138	1	550	13	1025	bangalor north	237459374	2023-06-10	f
132	1	9500	21	1065	Jahangirabad	237459374	2023-03-11	t
144	2	400	13	1035	Uttar Pradesh	9528381590	2023-05-12	t
133	1	195	68	1071	mumbai	919528381590	2023-07-13	f
142	3	500	45	1032	dehli	232323233	2023-04-14	f
134	2	300	88	1072	bangalor north	232323233	2023-06-15	t
135	1	700	21	1021	Jahangirabad	232323233	2023-03-16	t
141	4	800	31	1010	Uttar Pradesh	9528381590	2023-05-17	t
136	3	700	68	1076	mumbai	919528381590	2023-02-18	f
137	2	1000	21	1084	bangalor north	232323233	2023-01-20	t
\.


--
-- TOC entry 4800 (class 0 OID 16409)
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
-- TOC entry 4650 (class 2606 OID 16423)
-- Name: store_order store_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_pkey PRIMARY KEY (id);


--
-- TOC entry 4647 (class 2606 OID 16413)
-- Name: store_products store_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4648 (class 1259 OID 24591)
-- Name: store_order_customer_id_13d6d43e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_order_customer_id_13d6d43e ON public.store_order USING btree (customer_id);


--
-- TOC entry 4651 (class 1259 OID 24592)
-- Name: store_order_product_id_11796f0f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_order_product_id_11796f0f ON public.store_order USING btree (product_id);


--
-- TOC entry 4645 (class 1259 OID 24590)
-- Name: store_products_category_id_48867233; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_products_category_id_48867233 ON public.store_products USING btree (category_id);


--
-- TOC entry 4653 (class 2606 OID 16424)
-- Name: store_order store_order_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.store_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4654 (class 2606 OID 16429)
-- Name: store_order store_order_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4652 (class 2606 OID 16414)
-- Name: store_products store_products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.store_category(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-09-23 12:06:46

--
-- PostgreSQL database dump complete
--

