--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: albums; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    genre character varying
);


ALTER TABLE public.albums OWNER TO "Guest";

--
-- Name: albums_artists; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.albums_artists (
    artist_id bigint,
    album_id bigint
);


ALTER TABLE public.albums_artists OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: artists; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.artists (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.artists OWNER TO "Guest";

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO "Guest";

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: songs; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.songs (
    id bigint NOT NULL,
    name character varying,
    lyrics character varying,
    album_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.songs OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.albums (id, name, year, created_at, updated_at, genre) FROM stdin;
56	protocol	\N	2020-01-15 18:01:13.491236	2020-01-15 18:01:13.491236	Overriding the firewall won't do anything, we need to synthesize the auxiliary sql pixel!
57	pixel	\N	2020-01-15 18:01:13.494586	2020-01-15 18:01:13.494586	You can't transmit the protocol without compressing the 1080p FTP bandwidth!
58	matrix	\N	2020-01-15 18:01:13.496969	2020-01-15 18:01:13.496969	The HDD sensor is down, generate the mobile port so we can synthesize the RSS panel!
59	feed	\N	2020-01-15 18:01:13.499237	2020-01-15 18:01:13.499237	I'll bypass the optical EXE microchip, that should system the GB array!
60	matrix	\N	2020-01-15 18:01:13.501566	2020-01-15 18:01:13.501566	We need to program the solid state PNG sensor!
61	driver	\N	2020-01-15 18:01:13.504041	2020-01-15 18:01:13.504041	I'll navigate the haptic EXE driver, that should firewall the EXE port!
62	protocol	\N	2020-01-15 18:01:13.506402	2020-01-15 18:01:13.506402	I'll navigate the bluetooth SQL program, that should card the RSS bandwidth!
63	protocol	\N	2020-01-15 18:01:13.508652	2020-01-15 18:01:13.508652	Try to compress the THX circuit, maybe it will program the back-end matrix!
64	program	\N	2020-01-15 18:01:13.511265	2020-01-15 18:01:13.511265	If we hack the pixel, we can get to the FTP interface through the multi-byte SMS alarm!
65	matrix	\N	2020-01-15 18:01:13.513531	2020-01-15 18:01:13.513531	You can't input the driver without programming the wireless SQL card!
66	microchip	\N	2020-01-15 18:01:13.516238	2020-01-15 18:01:13.516238	The HDD microchip is down, copy the digital driver so we can index the PCI bus!
67	interface	\N	2020-01-15 18:01:13.518673	2020-01-15 18:01:13.518673	I'll compress the multi-byte PCI hard drive, that should bandwidth the SMTP hard drive!
68	matrix	\N	2020-01-15 18:01:13.521067	2020-01-15 18:01:13.521067	Indexing the firewall won't do anything, we need to reboot the cross-platform exe interface!
69	array	\N	2020-01-15 18:01:13.523547	2020-01-15 18:01:13.523547	Try to transmit the SCSI hard drive, maybe it will override the bluetooth matrix!
70	capacitor	\N	2020-01-15 18:01:13.526185	2020-01-15 18:01:13.526185	The IB firewall is down, connect the auxiliary pixel so we can copy the JSON firewall!
71	feed	\N	2020-01-15 18:01:13.528442	2020-01-15 18:01:13.528442	Try to index the ADP interface, maybe it will parse the wireless protocol!
72	port	\N	2020-01-15 18:01:13.530718	2020-01-15 18:01:13.530718	You can't transmit the hard drive without compressing the virtual USB card!
73	hard drive	\N	2020-01-15 18:01:13.533206	2020-01-15 18:01:13.533206	You can't bypass the sensor without parsing the wireless AI driver!
74	protocol	\N	2020-01-15 18:01:13.535695	2020-01-15 18:01:13.535695	We need to bypass the optical JBOD matrix!
75	hard drive	\N	2020-01-15 18:01:13.538043	2020-01-15 18:01:13.538043	If we parse the alarm, we can get to the ADP array through the wireless JSON bus!
76	panel	\N	2020-01-15 18:01:13.540242	2020-01-15 18:01:13.540242	Try to calculate the SQL interface, maybe it will compress the digital interface!
77	bus	\N	2020-01-15 18:01:13.542626	2020-01-15 18:01:13.542626	You can't reboot the bus without hacking the open-source USB driver!
78	bandwidth	\N	2020-01-15 18:01:13.544877	2020-01-15 18:01:13.544877	If we back up the firewall, we can get to the JSON system through the wireless FTP capacitor!
79	port	\N	2020-01-15 18:01:13.547233	2020-01-15 18:01:13.547233	If we reboot the hard drive, we can get to the HDD bus through the haptic SAS bandwidth!
80	monitor	\N	2020-01-15 18:01:13.549835	2020-01-15 18:01:13.549835	The SQL alarm is down, transmit the digital port so we can index the PCI hard drive!
81	interface	\N	2020-01-15 18:01:13.552395	2020-01-15 18:01:13.552395	Try to connect the PNG microchip, maybe it will index the virtual array!
82	capacitor	\N	2020-01-15 18:01:13.554707	2020-01-15 18:01:13.554707	Try to quantify the RSS transmitter, maybe it will connect the auxiliary driver!
83	alarm	\N	2020-01-15 18:01:13.556972	2020-01-15 18:01:13.556972	Use the optical GB card, then you can input the virtual hard drive!
84	circuit	\N	2020-01-15 18:01:13.559549	2020-01-15 18:01:13.559549	The TCP array is down, parse the optical panel so we can navigate the FTP card!
85	sensor	\N	2020-01-15 18:01:13.562044	2020-01-15 18:01:13.562044	Overriding the pixel won't do anything, we need to transmit the primary sdd monitor!
86	circuit	\N	2020-01-15 18:01:13.564415	2020-01-15 18:01:13.564415	We need to calculate the neural SAS program!
87	sensor	\N	2020-01-15 18:01:13.566743	2020-01-15 18:01:13.566743	Try to quantify the SMTP firewall, maybe it will reboot the cross-platform application!
88	microchip	\N	2020-01-15 18:01:13.56906	2020-01-15 18:01:13.56906	If we copy the capacitor, we can get to the CSS bandwidth through the solid state COM port!
89	driver	\N	2020-01-15 18:01:13.571329	2020-01-15 18:01:13.571329	You can't override the port without calculating the cross-platform THX port!
90	pixel	\N	2020-01-15 18:01:13.57363	2020-01-15 18:01:13.57363	The SAS hard drive is down, generate the virtual interface so we can copy the SAS feed!
91	driver	\N	2020-01-15 18:01:13.576252	2020-01-15 18:01:13.576252	If we override the transmitter, we can get to the ADP transmitter through the cross-platform SAS hard drive!
92	application	\N	2020-01-15 18:01:13.578539	2020-01-15 18:01:13.578539	Use the online SSL bus, then you can parse the optical sensor!
93	sensor	\N	2020-01-15 18:01:13.58079	2020-01-15 18:01:13.58079	We need to reboot the auxiliary TCP circuit!
94	monitor	\N	2020-01-15 18:01:13.583308	2020-01-15 18:01:13.583308	The SDD matrix is down, reboot the wireless hard drive so we can connect the TCP driver!
95	firewall	\N	2020-01-15 18:01:13.585843	2020-01-15 18:01:13.585843	You can't compress the panel without hacking the open-source SDD alarm!
96	monitor	\N	2020-01-15 18:01:13.588189	2020-01-15 18:01:13.588189	If we hack the application, we can get to the SSL feed through the optical IB panel!
97	port	\N	2020-01-15 18:01:13.590663	2020-01-15 18:01:13.590663	Use the multi-byte JSON alarm, then you can index the back-end driver!
98	sensor	\N	2020-01-15 18:01:13.5932	2020-01-15 18:01:13.5932	Bypassing the bus won't do anything, we need to copy the primary exe bus!
99	bandwidth	\N	2020-01-15 18:01:13.595678	2020-01-15 18:01:13.595678	If we parse the card, we can get to the CSS bandwidth through the open-source PCI protocol!
100	panel	\N	2020-01-15 18:01:13.598263	2020-01-15 18:01:13.598263	I'll transmit the bluetooth PNG firewall, that should capacitor the SDD interface!
101	pixel	\N	2020-01-15 18:01:13.671468	2020-01-15 18:01:13.671468	You can't parse the transmitter without connecting the primary CSS pixel!
102	hard drive	\N	2020-01-15 18:01:13.673949	2020-01-15 18:01:13.673949	If we generate the driver, we can get to the AGP circuit through the cross-platform GB hard drive!
103	card	\N	2020-01-15 18:01:13.676209	2020-01-15 18:01:13.676209	Compressing the capacitor won't do anything, we need to connect the 1080p xml capacitor!
104	port	\N	2020-01-15 18:01:13.678471	2020-01-15 18:01:13.678471	Try to index the EXE protocol, maybe it will navigate the wireless alarm!
105	program	\N	2020-01-15 18:01:13.680846	2020-01-15 18:01:13.680846	If we input the driver, we can get to the IB panel through the neural SSL driver!
106	 Alb1	\N	2020-01-15 18:09:52.991513	2020-01-15 18:09:52.991513	Rock
107	 Alb4	\N	2020-01-15 18:11:09.295484	2020-01-15 18:11:09.295484	Rock
\.


--
-- Data for Name: albums_artists; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.albums_artists (artist_id, album_id) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-01-15 16:34:28.799095	2020-01-15 16:34:28.799095
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.artists (id, name, created_at, updated_at) FROM stdin;
1	["Oak"]	2020-01-15 17:41:31.058214	2020-01-15 17:41:31.058214
2	["Pine"]	2020-01-15 17:41:31.061817	2020-01-15 17:41:31.061817
3	["Sycamore"]	2020-01-15 17:41:31.064342	2020-01-15 17:41:31.064342
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20200113172717
20200113173333
20200113173937
20200113174042
20200115170521
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.songs (id, name, lyrics, album_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.albums_id_seq', 107, true);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.artists_id_seq', 3, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.songs_id_seq', 3, true);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: index_albums_artists_on_album_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_albums_artists_on_album_id ON public.albums_artists USING btree (album_id);


--
-- Name: index_albums_artists_on_artist_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_albums_artists_on_artist_id ON public.albums_artists USING btree (artist_id);


--
-- Name: songs fk_rails_f4e40cd655; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_rails_f4e40cd655 FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- PostgreSQL database dump complete
--

