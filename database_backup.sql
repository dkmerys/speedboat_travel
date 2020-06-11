--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tylerbowerman;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content character varying,
    city character varying,
    country character varying
);


ALTER TABLE public.reviews OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tylerbowerman;

--
-- Name: users; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-11 17:24:36.42795	2020-06-11 17:24:36.42795
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.reviews (id, author, content, city, country) FROM stdin;
1	Jerry's Mytholog	Muggle magic sustainable phlogiston fingerstache yolo lo-fi messenger bag salvia goth selvage kickstarter fanny pack roof.	Tbilisi	Morocco
2	Rick Sanchez	Disrupt gentrify mustache bushwick chartreuse hoodie letterpress put a bird on it brooklyn chambray blue bottle ugh heirloom church-key pitchfork.	Brussels	Columbia
3	King Jellybean	Deep v vinegar schlitz literally hashtag +1 goth portland intelligentsia selvage.	Ljubljana	Uruguay
4	Mr. Needful	Literally carry vhs salvia art party post-ironic kinfolk trust fund sartorial asymmetrical master waistcoat shabby chic.	Prince	Senegal
5	Squanchy	Twee hella etsy loko tumblr ramps slow-carb shabby chic direct trade echo.	Tallinn	Poland
6	Snowball	Next level fashion axe fanny pack fixie taxidermy squid chillwave hammock gastropub 8-bit swag wayfarers beard seitan brunch.	Madrid	France
7	Morty Jr.	Beard yr trust fund cold-pressed scenester keytar cred thundercats biodiesel pork belly narwhal photo booth vhs shabby chic.	Warsaw	Egypt
8	Revolio 'Gearhead' Clockberg, Jr.	Viral farm-to-table muggle magic ugh quinoa vinegar retro heirloom selvage helvetica.	Tehran	Portugal
9	Loggins	Franzen post-ironic cleanse artisan mixtape sustainable normcore single-origin coffee viral listicle yuccie occupy humblebrag kombucha mumblecore.	Manama	Brazil
10	Tinkles	Plaid celiac pabst ethical umami selfies loko echo photo booth health chartreuse tofu listicle vegan sriracha.	Praia Bangui	France
11	Unity	Kombucha banh mi echo kickstarter offal five dollar toast freegan hammock yolo ethical plaid polaroid.	Honiara	Denmark
12	Snowball	Muggle magic lumbersexual normcore austin art party chambray tote bag godard before they sold out put a bird on it ethical.	Windhoek	Senegal
13	Morty Jr.	Locavore tousled selvage godard yuccie tacos vhs pour-over lo-fi pabst sriracha before they sold out truffaut.	Baghdad	Tunisia
14	Arthricia	Hammock marfa sriracha trust fund distillery muggle magic wes anderson portland carry dreamcatcher brunch literally farm-to-table.	Tarawa Atoll	Japan
15	King Jellybean	Kitsch scenester lo-fi brunch butcher tote bag mumblecore sartorial flexitarian fingerstache wes anderson.	Ulaanbaatar	England
16	Revolio 'Gearhead' Clockberg, Jr.	Fingerstache neutra butcher echo single-origin coffee flannel goth bushwick franzen drinking occupy tattooed kombucha cred.	Saint John's	France
17	Mr. Poopybutthole	Yolo bespoke chicharrones williamsburg small batch cleanse sustainable pork belly 8-bit vinyl roof sriracha.	Minsk	Croatia
18	Arthricia	Celiac sartorial chartreuse literally polaroid retro yr whatever phlogiston sustainable.	Palikir	Australia
19	Evil Morty	Ethical next level health tilde polaroid franzen tousled shabby chic ugh hella messenger bag deep v sriracha loko flannel.	Dushanbe	Croatia
20	Morty Smith	Meditation chicharrones brunch quinoa literally cronut typewriter vinyl banh mi aesthetic synth taxidermy swag shoreditch actually.	Manama	South Korea
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.schema_migrations (version) FROM stdin;
20200608162548
20200608212324
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.users (id, email, password_digest, created_at, updated_at) FROM stdin;
\.


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.reviews_id_seq', 20, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

