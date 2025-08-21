--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9
-- Dumped by pg_dump version 17.5

-- Started on 2025-08-20 19:52:23

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 2048001)
-- Name: Colores; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public."Colores" (
    id integer NOT NULL,
    nombre character(10),
    nombre_corto character varying(10)
);


ALTER TABLE public."Colores" OWNER TO "Comfe_owner";

--
-- TOC entry 217 (class 1259 OID 2048000)
-- Name: Colores_id_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public."Colores_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Colores_id_seq" OWNER TO "Comfe_owner";

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 217
-- Name: Colores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public."Colores_id_seq" OWNED BY public."Colores".id;


--
-- TOC entry 234 (class 1259 OID 2351153)
-- Name: cargo; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.cargo (
    id_cargo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    salario numeric(10,2) NOT NULL
);


ALTER TABLE public.cargo OWNER TO "Comfe_owner";

--
-- TOC entry 233 (class 1259 OID 2351152)
-- Name: cargo_id_cargo_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.cargo_id_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cargo_id_cargo_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 233
-- Name: cargo_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.cargo_id_cargo_seq OWNED BY public.cargo.id_cargo;


--
-- TOC entry 230 (class 1259 OID 2351129)
-- Name: ciudad; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_departamento integer NOT NULL
);


ALTER TABLE public.ciudad OWNER TO "Comfe_owner";

--
-- TOC entry 229 (class 1259 OID 2351128)
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.ciudad_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 229
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;


--
-- TOC entry 221 (class 1259 OID 2220032)
-- Name: departament; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.departament (
    id_departamento integer NOT NULL,
    departamento character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.departament OWNER TO "Comfe_owner";

--
-- TOC entry 228 (class 1259 OID 2351122)
-- Name: departamentos; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.departamentos OWNER TO "Comfe_owner";

--
-- TOC entry 227 (class 1259 OID 2351121)
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamentos_id_departamento_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 227
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.departamentos_id_departamento_seq OWNED BY public.departamentos.id_departamento;


--
-- TOC entry 236 (class 1259 OID 2351160)
-- Name: empleados; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    id_cargo integer NOT NULL,
    id_sucursal integer NOT NULL,
    fecha_contratacion date NOT NULL
);


ALTER TABLE public.empleados OWNER TO "Comfe_owner";

--
-- TOC entry 235 (class 1259 OID 2351159)
-- Name: empleados_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleados_id_empleado_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 235
-- Name: empleados_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;


--
-- TOC entry 224 (class 1259 OID 2277377)
-- Name: heroes; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.heroes (
    id integer NOT NULL,
    nombre character varying(25),
    alias character varying(25),
    ciudad_origen character varying(25),
    equipo character varying(25)
);


ALTER TABLE public.heroes OWNER TO "Comfe_owner";

--
-- TOC entry 223 (class 1259 OID 2277376)
-- Name: heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.heroes_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 223
-- Name: heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.heroes_id_seq OWNED BY public.heroes.id;


--
-- TOC entry 222 (class 1259 OID 2220038)
-- Name: municipios; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.municipios (
    id_municipio integer NOT NULL,
    municipio character varying(255) DEFAULT ''::character varying NOT NULL,
    departamento_id integer NOT NULL
);


ALTER TABLE public.municipios OWNER TO "Comfe_owner";

--
-- TOC entry 216 (class 1259 OID 2031619)
-- Name: partidos_futbol; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.partidos_futbol (
    id_equipo integer NOT NULL,
    equipo character(20),
    pais character(20),
    fecha_partido date,
    goles integer NOT NULL,
    arbitro character(20),
    hora_partido time without time zone
);


ALTER TABLE public.partidos_futbol OWNER TO "Comfe_owner";

--
-- TOC entry 220 (class 1259 OID 2048016)
-- Name: partidos_futbol_goles_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.partidos_futbol_goles_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.partidos_futbol_goles_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 220
-- Name: partidos_futbol_goles_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.partidos_futbol_goles_seq OWNED BY public.partidos_futbol.goles;


--
-- TOC entry 219 (class 1259 OID 2048009)
-- Name: partidos_futbol_id_equipo_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.partidos_futbol_id_equipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.partidos_futbol_id_equipo_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 219
-- Name: partidos_futbol_id_equipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.partidos_futbol_id_equipo_seq OWNED BY public.partidos_futbol.id_equipo;


--
-- TOC entry 226 (class 1259 OID 2277384)
-- Name: poderes; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.poderes (
    id integer NOT NULL,
    poder character varying(25),
    descripcion character varying(25),
    nivel character varying(25),
    heroe_id integer
);


ALTER TABLE public.poderes OWNER TO "Comfe_owner";

--
-- TOC entry 225 (class 1259 OID 2277383)
-- Name: poderes_id_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.poderes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.poderes_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 225
-- Name: poderes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.poderes_id_seq OWNED BY public.poderes.id;


--
-- TOC entry 232 (class 1259 OID 2351141)
-- Name: sucursal; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.sucursal (
    id_sucursal integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_ciudad integer NOT NULL
);


ALTER TABLE public.sucursal OWNER TO "Comfe_owner";

--
-- TOC entry 231 (class 1259 OID 2351140)
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.sucursal_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 231
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNED BY public.sucursal.id_sucursal;


--
-- TOC entry 215 (class 1259 OID 1966110)
-- Name: tabla; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.tabla (
    nombre "char",
    apellido "char",
    telefono "char"
);


ALTER TABLE public.tabla OWNER TO "Comfe_owner";

--
-- TOC entry 3235 (class 2604 OID 2048004)
-- Name: Colores id; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public."Colores" ALTER COLUMN id SET DEFAULT nextval('public."Colores_id_seq"'::regclass);


--
-- TOC entry 3243 (class 2604 OID 2351156)
-- Name: cargo id_cargo; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cargo ALTER COLUMN id_cargo SET DEFAULT nextval('public.cargo_id_cargo_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 2351132)
-- Name: ciudad id_ciudad; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 2351125)
-- Name: departamentos id_departamento; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamentos_id_departamento_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 2351163)
-- Name: empleados id_empleado; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 2277380)
-- Name: heroes id; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.heroes ALTER COLUMN id SET DEFAULT nextval('public.heroes_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 2048010)
-- Name: partidos_futbol id_equipo; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.partidos_futbol ALTER COLUMN id_equipo SET DEFAULT nextval('public.partidos_futbol_id_equipo_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 2048017)
-- Name: partidos_futbol goles; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.partidos_futbol ALTER COLUMN goles SET DEFAULT nextval('public.partidos_futbol_goles_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 2277387)
-- Name: poderes id; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.poderes ALTER COLUMN id SET DEFAULT nextval('public.poderes_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 2351144)
-- Name: sucursal id_sucursal; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursal_id_sucursal_seq'::regclass);


--
-- TOC entry 3423 (class 0 OID 2048001)
-- Dependencies: 218
-- Data for Name: Colores; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public."Colores" (id, nombre, nombre_corto) FROM stdin;
1	verde     	vd
2	amarillo  	amll
3	negro     	ng
4	rojo      	rj
6	rojoo     	roj
\.


--
-- TOC entry 3439 (class 0 OID 2351153)
-- Dependencies: 234
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.cargo (id_cargo, nombre, salario) FROM stdin;
1	Gerente	5000000.00
2	Vendedor	2000000.00
3	Asistente	1500000.00
\.


--
-- TOC entry 3435 (class 0 OID 2351129)
-- Dependencies: 230
-- Data for Name: ciudad; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.ciudad (id_ciudad, nombre, id_departamento) FROM stdin;
1	Medellín	1
2	Bogotá	2
3	Cali	3
\.


--
-- TOC entry 3426 (class 0 OID 2220032)
-- Dependencies: 221
-- Data for Name: departament; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.departament (id_departamento, departamento) FROM stdin;
5	Antioquia
8	Atlántico
11	Bogotá D.C.
13	Bolívar
15	Boyacá
17	Caldas
18	Caquetá
19	Cauca
20	Cesar
23	Córdoba
25	Cundinamarca
27	Chocó
41	Huila
44	La Guajira
47	Magdalena
50	Meta
52	Nariño
54	Norte de Santander
63	Quindío
66	Risaralda
68	Santander
70	Sucre
73	Tolima
76	Valle del Cauca
81	Arauca
85	Casanare
86	Putumayo
88	Archipiélago de San Andrés, Providencia y Santa Catalina
91	Amazonas
94	Guainía
95	Guaviare
97	Vaupés
99	Vichada
\.


--
-- TOC entry 3433 (class 0 OID 2351122)
-- Dependencies: 228
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.departamentos (id_departamento, nombre) FROM stdin;
1	Antioquia
2	Cundinamarca
3	Valle del Cauca
\.


--
-- TOC entry 3441 (class 0 OID 2351160)
-- Dependencies: 236
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.empleados (id_empleado, nombre, apellido, id_cargo, id_sucursal, fecha_contratacion) FROM stdin;
1	Juan	Pérez	1	1	2023-01-15
2	María	Gómez	2	2	2023-03-10
3	Carlos	Ramírez	3	3	2023-05-20
\.


--
-- TOC entry 3429 (class 0 OID 2277377)
-- Dependencies: 224
-- Data for Name: heroes; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.heroes (id, nombre, alias, ciudad_origen, equipo) FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 2220038)
-- Dependencies: 222
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.municipios (id_municipio, municipio, departamento_id) FROM stdin;
1	Leticia	91
2	El Encanto	91
3	La Chorrera	91
4	La Pedrera	91
5	La Victoria	91
6	Puerto Arica	91
7	Puerto Nariño	91
8	Puerto Santander	91
9	Tarapacá	91
10	Puerto Alegría	91
11	Miriti Paraná	91
12	Medellín	5
13	Abejorral	5
14	Abriaquí	5
15	Alejandría	5
16	Amagá	5
17	Amalfi	5
18	Andes	5
19	Angelópolis	5
20	Angostura	5
21	Anorí	5
22	Anza	5
23	Apartadó	5
24	Arboletes	5
25	Argelia	5
26	Armenia	5
27	Barbosa	5
28	Bello	5
29	Betania	5
30	Betulia	5
31	Ciudad Bolívar	5
32	Briceño	5
33	Buriticá	5
34	Cáceres	5
35	Caicedo	5
36	Caldas	5
37	Campamento	5
38	Cañasgordas	5
39	Caracolí	5
40	Caramanta	5
41	Carepa	5
42	Carolina	5
43	Caucasia	5
44	Chigorodó	5
45	Cisneros	5
46	Cocorná	5
47	Concepción	5
48	Concordia	5
49	Copacabana	5
50	Dabeiba	5
51	Don Matías	5
52	Ebéjico	5
53	El Bagre	5
54	Entrerrios	5
55	Envigado	5
56	Fredonia	5
57	Giraldo	5
58	Girardota	5
59	Gómez Plata	5
60	Guadalupe	5
61	Guarne	5
62	Guatapé	5
63	Heliconia	5
64	Hispania	5
65	Itagui	5
66	Ituango	5
67	Belmira	5
68	Jericó	5
69	La Ceja	5
70	La Estrella	5
71	La Pintada	5
72	La Unión	5
73	Liborina	5
74	Maceo	5
75	Marinilla	5
76	Montebello	5
77	Murindó	5
78	Mutatá	5
79	Nariño	5
80	Necoclí	5
81	Nechí	5
82	Olaya	5
83	Peñol	5
84	Peque	5
85	Pueblorrico	5
86	Puerto Berrío	5
87	Puerto Nare	5
88	Puerto Triunfo	5
89	Remedios	5
90	Retiro	5
91	Rionegro	5
92	Sabanalarga	5
93	Sabaneta	5
94	Salgar	5
95	San Francisco	5
96	San Jerónimo	5
97	San Luis	5
98	San Pedro	5
99	San Rafael	5
100	San Roque	5
101	San Vicente	5
102	Santa Bárbara	5
103	Santo Domingo	5
104	El Santuario	5
105	Segovia	5
106	Sopetrán	5
107	Támesis	5
108	Tarazá	5
109	Tarso	5
110	Titiribí	5
111	Toledo	5
112	Turbo	5
113	Uramita	5
114	Urrao	5
115	Valdivia	5
116	Valparaíso	5
117	Vegachí	5
118	Venecia	5
119	Yalí	5
120	Yarumal	5
121	Yolombó	5
122	Yondó	5
123	Zaragoza	5
124	San Pedro de Uraba	5
125	Santafé de Antioquia	5
126	Santa Rosa de Osos	5
127	San Andrés de Cuerquía	5
128	Vigía del Fuerte	5
129	San José de La Montaña	5
130	San Juan de Urabá	5
131	El Carmen de Viboral	5
132	San Carlos	5
133	Frontino	5
134	Granada	5
135	Jardín	5
136	Sonsón	5
137	Arauquita	81
138	Cravo Norte	81
139	Fortul	81
140	Puerto Rondón	81
141	Saravena	81
142	Tame	81
143	Arauca	81
144	Providencia	88
145	San Andrés	88
146	Barranquilla	8
147	Baranoa	8
148	Candelaria	8
149	Galapa	8
150	Luruaco	8
151	Malambo	8
152	Manatí	8
153	Piojó	8
154	Polonuevo	8
155	Sabanagrande	8
156	Sabanalarga	8
157	Santa Lucía	8
158	Santo Tomás	8
159	Soledad	8
160	Suan	8
161	Tubará	8
162	Usiacurí	8
163	Juan de Acosta	8
164	Palmar de Varela	8
165	Campo de La Cruz	8
166	Repelón	8
167	Puerto Colombia	8
168	Ponedera	8
169	Bogotá D.C.	11
170	Achí	13
171	Arenal	13
172	Arjona	13
173	Arroyohondo	13
174	Calamar	13
175	Cantagallo	13
176	Cicuco	13
177	Córdoba	13
178	Clemencia	13
179	El Guamo	13
180	Magangué	13
181	Mahates	13
182	Margarita	13
183	Montecristo	13
184	Mompós	13
185	Morales	13
186	Norosí	13
187	Pinillos	13
188	Regidor	13
189	Río Viejo	13
190	San Estanislao	13
191	San Fernando	13
192	San Juan Nepomuceno	13
193	Santa Catalina	13
194	Santa Rosa	13
195	Simití	13
196	Soplaviento	13
197	Talaigua Nuevo	13
198	Tiquisio	13
199	Turbaco	13
200	Turbaná	13
201	Villanueva	13
202	Barranco de Loba	13
203	Santa Rosa del Sur	13
204	Hatillo de Loba	13
205	El Carmen de Bolívar	13
206	San Martín de Loba	13
207	Altos del Rosario	13
208	San Jacinto del Cauca	13
209	San Pablo de Borbur	13
210	San Jacinto	13
211	El Peñón	13
212	Cartagena	13
213	María la Baja	13
214	San Cristóbal	13
215	Zambrano	13
216	Tununguá	15
217	Motavita	15
218	Ciénega	15
219	Tunja	15
220	Almeida	15
221	Aquitania	15
222	Arcabuco	15
223	Berbeo	15
224	Betéitiva	15
225	Boavita	15
226	Boyacá	15
227	Briceño	15
228	Buena Vista	15
229	Busbanzá	15
230	Caldas	15
231	Campohermoso	15
232	Cerinza	15
233	Chinavita	15
234	Chiquinquirá	15
235	Chiscas	15
236	Chita	15
237	Chitaraque	15
238	Chivatá	15
239	Cómbita	15
240	Coper	15
241	Corrales	15
242	Covarachía	15
243	Cubará	15
244	Cucaita	15
245	Cuítiva	15
246	Chíquiza	15
247	Chivor	15
248	Duitama	15
249	El Cocuy	15
250	El Espino	15
251	Firavitoba	15
252	Floresta	15
253	Gachantivá	15
254	Gameza	15
255	Garagoa	15
256	Guacamayas	15
257	Guateque	15
258	Guayatá	15
259	Güicán	15
260	Iza	15
261	Jenesano	15
262	Jericó	15
263	Labranzagrande	15
264	La Capilla	15
265	La Victoria	15
266	Macanal	15
267	Maripí	15
268	Miraflores	15
269	Mongua	15
270	Monguí	15
271	Moniquirá	15
272	Muzo	15
273	Nobsa	15
274	Nuevo Colón	15
275	Oicatá	15
276	Otanche	15
277	Pachavita	15
278	Páez	15
279	Paipa	15
280	Pajarito	15
281	Panqueba	15
282	Pauna	15
283	Paya	15
284	Pesca	15
285	Pisba	15
286	Puerto Boyacá	15
287	Quípama	15
288	Ramiriquí	15
289	Ráquira	15
290	Rondón	15
291	Saboyá	15
292	Sáchica	15
293	Samacá	15
294	San Eduardo	15
295	San Mateo	15
296	Santana	15
297	Santa María	15
298	Santa Sofía	15
299	Sativanorte	15
300	Sativasur	15
301	Siachoque	15
302	Soatá	15
303	Socotá	15
304	Socha	15
305	Sogamoso	15
306	Somondoco	15
307	Sora	15
308	Sotaquirá	15
309	Soracá	15
310	Susacón	15
311	Sutamarchán	15
312	Sutatenza	15
313	Tasco	15
314	Tenza	15
315	Tibaná	15
316	Tinjacá	15
317	Tipacoque	15
318	Toca	15
319	Tópaga	15
320	Tota	15
321	Turmequé	15
322	Tutazá	15
323	Umbita	15
324	Ventaquemada	15
325	Viracachá	15
326	Zetaquira	15
327	Togüí	15
328	Villa de Leyva	15
329	Paz de Río	15
330	Santa Rosa de Viterbo	15
331	San Pablo de Borbur	15
332	San Luis de Gaceno	15
333	San José de Pare	15
334	San Miguel de Sema	15
335	Tuta	15
336	Tibasosa	15
337	La Uvita	15
338	Belén	15
339	Manizales	17
340	Aguadas	17
341	Anserma	17
342	Aranzazu	17
343	Belalcázar	17
344	Chinchiná	17
345	Filadelfia	17
346	La Dorada	17
347	La Merced	17
348	Manzanares	17
349	Marmato	17
350	Marulanda	17
351	Neira	17
352	Norcasia	17
353	Pácora	17
354	Palestina	17
355	Pensilvania	17
356	Riosucio	17
357	Risaralda	17
358	Salamina	17
359	Samaná	17
360	San José	17
361	Supía	17
362	Victoria	17
363	Villamaría	17
364	Viterbo	17
365	Marquetalia	17
366	Florencia	18
367	Albania	18
368	Curillo	18
369	El Doncello	18
370	El Paujil	18
371	Morelia	18
372	Puerto Rico	18
373	Solano	18
374	Solita	18
375	Valparaíso	18
376	San José del Fragua	18
377	Belén de Los Andaquies	18
378	Cartagena del Chairá	18
379	Milán	18
380	La Montañita	18
381	San Vicente del Caguán	18
382	Yopal	85
383	Aguazul	85
384	Chámeza	85
385	Hato Corozal	85
386	La Salina	85
387	Monterrey	85
388	Pore	85
389	Recetor	85
390	Sabanalarga	85
391	Sácama	85
392	Tauramena	85
393	Trinidad	85
394	Villanueva	85
395	San Luis de Gaceno	85
396	Paz de Ariporo	85
397	Nunchía	85
398	Maní	85
399	Támara	85
400	Orocué	85
401	Popayán	19
402	Almaguer	19
403	Argelia	19
404	Balboa	19
405	Bolívar	19
406	Buenos Aires	19
407	Cajibío	19
408	Caldono	19
409	Caloto	19
410	Corinto	19
411	El Tambo	19
412	Florencia	19
413	Guachené	19
414	Guapi	19
415	Inzá	19
416	Jambaló	19
417	La Sierra	19
418	La Vega	19
419	López	19
420	Mercaderes	19
421	Miranda	19
422	Morales	19
423	Padilla	19
424	Patía	19
425	Piamonte	19
426	Piendamó	19
427	Puerto Tejada	19
428	Puracé	19
429	Rosas	19
430	Santa Rosa	19
431	Silvia	19
432	Sotara	19
433	Suárez	19
434	Sucre	19
435	Timbío	19
436	Timbiquí	19
437	Toribio	19
438	Totoró	19
439	Villa Rica	19
440	Santander de Quilichao	19
441	San Sebastián	19
442	Páez	19
443	Valledupar	20
444	Aguachica	20
445	Agustín Codazzi	20
446	Astrea	20
447	Becerril	20
448	Bosconia	20
449	Chimichagua	20
450	Chiriguaná	20
451	Curumaní	20
452	El Copey	20
453	El Paso	20
454	Gamarra	20
455	González	20
456	La Gloria	20
457	Manaure	20
458	Pailitas	20
459	Pelaya	20
460	Pueblo Bello	20
461	La Paz	20
462	San Alberto	20
463	San Diego	20
464	San Martín	20
465	Tamalameque	20
466	Río de Oro	20
467	La Jagua de Ibirico	20
468	Istmina	27
469	Quibdó	27
470	Acandí	27
471	Alto Baudo	27
472	Atrato	27
473	Bagadó	27
474	Bahía Solano	27
475	Bajo Baudó	27
476	Bojaya	27
477	Cértegui	27
478	Condoto	27
479	Juradó	27
480	Lloró	27
481	Medio Atrato	27
482	Medio Baudó	27
483	Medio San Juan	27
484	Nóvita	27
485	Nuquí	27
486	Río Iro	27
487	Río Quito	27
488	Riosucio	27
489	Sipí	27
490	Unguía	27
491	El Litoral del San Juan	27
492	El Cantón del San Pablo	27
493	El Carmen de Atrato	27
494	San José del Palmar	27
495	Belén de Bajira	27
496	Carmen del Darien	27
497	Tadó	27
498	Unión Panamericana	27
499	San Bernardo del Viento	23
500	Montería	23
501	Ayapel	23
502	Buenavista	23
503	Canalete	23
504	Cereté	23
505	Chimá	23
506	Chinú	23
507	Cotorra	23
508	Lorica	23
509	Los Córdobas	23
510	Momil	23
511	Moñitos	23
512	Planeta Rica	23
513	Pueblo Nuevo	23
514	Puerto Escondido	23
515	Purísima	23
516	Sahagún	23
517	San Andrés Sotavento	23
518	San Antero	23
519	San Pelayo	23
520	Tierralta	23
521	Tuchín	23
522	Valencia	23
523	San José de Uré	23
524	Ciénaga de Oro	23
525	San Carlos	23
526	Montelíbano	23
527	La Apartada	23
528	Puerto Libertador	23
529	Anapoima	25
530	Arbeláez	25
531	Beltrán	25
532	Bituima	25
533	Bojacá	25
534	Cabrera	25
535	Cachipay	25
536	Cajicá	25
537	Caparrapí	25
538	Caqueza	25
539	Chaguaní	25
540	Chipaque	25
541	Choachí	25
542	Chocontá	25
543	Cogua	25
544	Cota	25
545	Cucunubá	25
546	El Colegio	25
547	El Rosal	25
548	Fomeque	25
549	Fosca	25
550	Funza	25
551	Fúquene	25
552	Gachala	25
553	Gachancipá	25
554	Gachetá	25
555	Girardot	25
556	Granada	25
557	Guachetá	25
558	Guaduas	25
559	Guasca	25
560	Guataquí	25
561	Guatavita	25
562	Guayabetal	25
563	Gutiérrez	25
564	Jerusalén	25
565	Junín	25
566	La Calera	25
567	La Mesa	25
568	La Palma	25
569	La Peña	25
570	La Vega	25
571	Lenguazaque	25
572	Macheta	25
573	Madrid	25
574	Manta	25
575	Medina	25
576	Mosquera	25
577	Nariño	25
578	Nemocón	25
579	Nilo	25
580	Nimaima	25
581	Nocaima	25
582	Venecia	25
583	Pacho	25
584	Paime	25
585	Pandi	25
586	Paratebueno	25
587	Pasca	25
588	Puerto Salgar	25
589	Pulí	25
590	Quebradanegra	25
591	Quetame	25
592	Quipile	25
593	Apulo	25
594	Ricaurte	25
595	San Bernardo	25
596	San Cayetano	25
597	San Francisco	25
598	Sesquilé	25
599	Sibaté	25
600	Silvania	25
601	Simijaca	25
602	Soacha	25
603	Subachoque	25
604	Suesca	25
605	Supatá	25
606	Susa	25
607	Sutatausa	25
608	Tabio	25
609	Tausa	25
610	Tena	25
611	Tenjo	25
612	Tibacuy	25
613	Tibirita	25
614	Tocaima	25
615	Tocancipá	25
616	Topaipí	25
617	Ubalá	25
618	Ubaque	25
619	Une	25
620	Útica	25
621	Vianí	25
622	Villagómez	25
623	Villapinzón	25
624	Villeta	25
625	Viotá	25
626	Zipacón	25
627	San Juan de Río Seco	25
628	Villa de San Diego de Ubate	25
629	Guayabal de Siquima	25
630	San Antonio del Tequendama	25
631	Agua de Dios	25
632	Carmen de Carupa	25
633	Vergara	25
634	Albán	25
635	Anolaima	25
636	Chía	25
637	El Peñón	25
638	Sopó	25
639	Gama	25
640	Sasaima	25
641	Yacopí	25
642	Fusagasugá	25
643	Zipaquirá	25
644	Facatativá	25
645	Inírida	94
646	Barranco Minas	94
647	Mapiripana	94
648	San Felipe	94
649	Puerto Colombia	94
650	La Guadalupe	94
651	Cacahual	94
652	Pana Pana	94
653	Morichal	94
654	Calamar	95
655	San José del Guaviare	95
656	Miraflores	95
657	El Retorno	95
658	Neiva	41
659	Acevedo	41
660	Agrado	41
661	Aipe	41
662	Algeciras	41
663	Altamira	41
664	Baraya	41
665	Campoalegre	41
666	Colombia	41
667	Elías	41
668	Garzón	41
669	Gigante	41
670	Guadalupe	41
671	Hobo	41
672	Iquira	41
673	Isnos	41
674	La Argentina	41
675	La Plata	41
676	Nátaga	41
677	Oporapa	41
678	Paicol	41
679	Palermo	41
680	Palestina	41
681	Pital	41
682	Pitalito	41
683	Rivera	41
684	Saladoblanco	41
685	Santa María	41
686	Suaza	41
687	Tarqui	41
688	Tesalia	41
689	Tello	41
690	Teruel	41
691	Timaná	41
692	Villavieja	41
693	Yaguará	41
694	San Agustín	41
695	Riohacha	44
696	Albania	44
697	Barrancas	44
698	Dibula	44
699	Distracción	44
700	El Molino	44
701	Fonseca	44
702	Hatonuevo	44
703	Maicao	44
704	Manaure	44
705	Uribia	44
706	Urumita	44
707	Villanueva	44
708	La Jagua del Pilar	44
709	San Juan del Cesar	44
710	Santa Marta	47
711	Algarrobo	47
712	Aracataca	47
713	Ariguaní	47
714	Cerro San Antonio	47
715	Chivolo	47
716	Concordia	47
717	El Banco	47
718	El Piñon	47
719	El Retén	47
720	Fundación	47
721	Guamal	47
722	Nueva Granada	47
723	Pedraza	47
724	Pivijay	47
725	Plato	47
726	Remolino	47
727	Salamina	47
728	San Zenón	47
729	Santa Ana	47
730	Sitionuevo	47
731	Tenerife	47
732	Zapayán	47
733	Zona Bananera	47
734	San Sebastián de Buenavista	47
735	Sabanas de San Angel	47
736	Pijiño del Carmen	47
737	Santa Bárbara de Pinto	47
738	Pueblo Viejo	47
739	Ciénaga	47
740	Uribe	50
741	Villavicencio	50
742	Acacias	50
743	Cabuyaro	50
744	Cubarral	50
745	Cumaral	50
746	El Calvario	50
747	El Castillo	50
748	El Dorado	50
749	Granada	50
750	Guamal	50
751	Mapiripán	50
752	Mesetas	50
753	La Macarena	50
754	Lejanías	50
755	Puerto Concordia	50
756	Puerto Gaitán	50
757	Puerto López	50
758	Puerto Lleras	50
759	Puerto Rico	50
760	Restrepo	50
761	San Juanito	50
762	San Martín	50
763	Vista Hermosa	50
764	Barranca de Upía	50
765	Fuente de Oro	50
766	San Carlos de Guaroa	50
767	San Juan de Arama	50
768	Castilla la Nueva	50
769	Santacruz	52
770	Pasto	52
771	Albán	52
772	Aldana	52
773	Ancuyá	52
774	Barbacoas	52
775	Colón	52
776	Consaca	52
777	Contadero	52
778	Córdoba	52
779	Cuaspud	52
780	Cumbal	52
781	Cumbitara	52
782	El Charco	52
783	El Peñol	52
784	El Rosario	52
785	El Tambo	52
786	Funes	52
787	Guachucal	52
788	Guaitarilla	52
789	Gualmatán	52
790	Iles	52
791	Imués	52
792	Ipiales	52
793	La Cruz	52
794	La Florida	52
795	La Llanada	52
796	La Tola	52
797	La Unión	52
798	Leiva	52
799	Linares	52
800	Los Andes	52
801	Magüí	52
802	Mallama	52
803	Mosquera	52
804	Nariño	52
805	Olaya Herrera	52
806	Ospina	52
807	Francisco Pizarro	52
808	Policarpa	52
809	Potosí	52
810	Providencia	52
811	Puerres	52
812	Pupiales	52
813	Ricaurte	52
814	Roberto Payán	52
815	Samaniego	52
816	Sandoná	52
817	San Bernardo	52
818	San Lorenzo	52
819	San Pablo	52
820	Santa Bárbara	52
821	Sapuyes	52
822	Taminango	52
823	Tangua	52
824	Túquerres	52
825	Yacuanquer	52
826	San Pedro de Cartago	52
827	El Tablón de Gómez	52
828	Buesaco	52
829	San Andrés de Tumaco	52
830	Belén	52
831	Chachagüí	52
832	Arboleda	52
833	Silos	54
834	Cácota	54
835	Toledo	54
836	Mutiscua	54
837	El Zulia	54
838	Salazar	54
839	Cucutilla	54
840	Puerto Santander	54
841	Gramalote	54
842	El Tarra	54
843	Teorama	54
844	Arboledas	54
845	Lourdes	54
846	Bochalema	54
847	Convención	54
848	Hacarí	54
849	Herrán	54
850	Tibú	54
851	San Cayetano	54
852	San Calixto	54
853	La Playa	54
854	Chinácota	54
855	Ragonvalia	54
856	La Esperanza	54
857	Villa del Rosario	54
858	Chitagá	54
859	Sardinata	54
860	Abrego	54
861	Los Patios	54
862	Ocaña	54
863	Bucarasica	54
864	Santiago	54
865	Labateca	54
866	Cachirá	54
867	Villa Caro	54
868	Durania	54
869	Pamplona	54
870	Pamplonita	54
871	Cúcuta	54
872	El Carmen	54
873	Mocoa	86
874	Colón	86
875	Orito	86
876	Puerto Caicedo	86
877	Puerto Guzmán	86
878	Leguízamo	86
879	Sibundoy	86
880	San Francisco	86
881	San Miguel	86
882	Santiago	86
883	Valle de Guamez	86
884	Puerto Asís	86
885	Villagarzón	86
886	Armenia	63
887	Buenavista	63
888	Circasia	63
889	Córdoba	63
890	Filandia	63
891	La Tebaida	63
892	Montenegro	63
893	Pijao	63
894	Quimbaya	63
895	Salento	63
896	Calarcá	63
897	Génova	63
898	Pereira	66
899	Apía	66
900	Balboa	66
901	Dosquebradas	66
902	Guática	66
903	La Celia	66
904	La Virginia	66
905	Marsella	66
906	Mistrató	66
907	Pueblo Rico	66
908	Quinchía	66
909	Santuario	66
910	Santa Rosa de Cabal	66
911	Belén de Umbría	66
912	Puerto Wilches	68
913	Puerto Parra	68
914	Bucaramanga	68
915	Aguada	68
916	Albania	68
917	Aratoca	68
918	Barbosa	68
919	Barichara	68
920	Barrancabermeja	68
921	Betulia	68
922	Bolívar	68
923	Cabrera	68
924	California	68
925	Carcasí	68
926	Cepitá	68
927	Cerrito	68
928	Charalá	68
929	Charta	68
930	Chipatá	68
931	Cimitarra	68
932	Concepción	68
933	Confines	68
934	Contratación	68
935	Coromoro	68
936	Curití	68
937	El Guacamayo	68
938	El Playón	68
939	Encino	68
940	Enciso	68
941	Florián	68
942	Floridablanca	68
943	Galán	68
944	Gambita	68
945	Girón	68
946	Guaca	68
947	Guadalupe	68
948	Guapotá	68
949	Guavatá	68
950	Güepsa	68
951	Jesús María	68
952	Jordán	68
953	La Belleza	68
954	Landázuri	68
955	La Paz	68
956	Lebríja	68
957	Los Santos	68
958	Macaravita	68
959	Málaga	68
960	Matanza	68
961	Mogotes	68
962	Molagavita	68
963	Ocamonte	68
964	Oiba	68
965	Onzaga	68
966	Palmar	68
967	Páramo	68
968	Piedecuesta	68
969	Pinchote	68
970	Puente Nacional	68
971	Rionegro	68
972	San Andrés	68
973	San Gil	68
974	San Joaquín	68
975	San Miguel	68
976	Santa Bárbara	68
977	Simacota	68
978	Socorro	68
979	Suaita	68
980	Sucre	68
981	Suratá	68
982	Tona	68
983	Vélez	68
984	Vetas	68
985	Villanueva	68
986	Zapatoca	68
987	Palmas del Socorro	68
988	San Vicente de Chucurí	68
989	San José de Miranda	68
990	Santa Helena del Opón	68
991	Sabana de Torres	68
992	El Carmen de Chucurí	68
993	Valle de San José	68
994	San Benito	68
995	Hato	68
996	Chimá	68
997	Capitanejo	68
998	El Peñón	68
999	Sincelejo	70
1000	Buenavista	70
1001	Caimito	70
1002	Coloso	70
1003	Coveñas	70
1004	Chalán	70
1005	El Roble	70
1006	Galeras	70
1007	Guaranda	70
1008	La Unión	70
1009	Los Palmitos	70
1010	Majagual	70
1011	Morroa	70
1012	Ovejas	70
1013	Palmito	70
1014	San Benito Abad	70
1015	San Marcos	70
1016	San Onofre	70
1017	San Pedro	70
1018	Sucre	70
1019	Tolú Viejo	70
1020	San Luis de Sincé	70
1021	San Juan de Betulia	70
1022	Santiago de Tolú	70
1023	Sampués	70
1024	Corozal	70
1025	Alpujarra	73
1026	Alvarado	73
1027	Ambalema	73
1028	Armero	73
1029	Ataco	73
1030	Cajamarca	73
1031	Chaparral	73
1032	Coello	73
1033	Coyaima	73
1034	Cunday	73
1035	Dolores	73
1036	Espinal	73
1037	Falan	73
1038	Flandes	73
1039	Fresno	73
1040	Guamo	73
1041	Herveo	73
1042	Honda	73
1043	Icononzo	73
1044	Mariquita	73
1045	Melgar	73
1046	Murillo	73
1047	Natagaima	73
1048	Ortega	73
1049	Palocabildo	73
1050	Piedras	73
1051	Planadas	73
1052	Prado	73
1053	Purificación	73
1054	Rio Blanco	73
1055	Roncesvalles	73
1056	Rovira	73
1057	Saldaña	73
1058	Santa Isabel	73
1059	Venadillo	73
1060	Villahermosa	73
1061	Villarrica	73
1062	Valle de San Juan	73
1063	Carmen de Apicala	73
1064	San Luis	73
1065	San Antonio	73
1066	Casabianca	73
1067	Anzoátegui	73
1068	Ibagué	73
1069	Líbano	73
1070	Lérida	73
1071	Suárez	73
1072	El Dovio	76
1073	Roldanillo	76
1074	Argelia	76
1075	Sevilla	76
1076	Zarzal	76
1077	El Cerrito	76
1078	Cartago	76
1079	Caicedonia	76
1080	El Cairo	76
1081	La Unión	76
1082	Restrepo	76
1083	Dagua	76
1084	Guacarí	76
1085	Ansermanuevo	76
1086	Bugalagrande	76
1087	La Victoria	76
1088	Ginebra	76
1089	Yumbo	76
1090	Obando	76
1091	Bolívar	76
1092	Cali	76
1093	San Pedro	76
1094	Guadalajara de Buga	76
1095	Calima	76
1096	Andalucía	76
1097	Pradera	76
1098	Yotoco	76
1099	Palmira	76
1100	Riofrío	76
1101	Alcalá	76
1102	Versalles	76
1103	El Águila	76
1104	Toro	76
1105	Candelaria	76
1106	La Cumbre	76
1107	Ulloa	76
1108	Trujillo	76
1109	Vijes	76
1110	Tuluá	76
1111	Florida	76
1112	Jamundí	76
1113	Buenaventura	76
1114	Mitú	97
1115	Carurú	97
1116	Taraira	97
1117	Papunahua	97
1118	Yavaraté	97
1119	Pacoa	97
1120	Puerto Carreño	99
1121	La Primavera	99
1122	Santa Rosalía	99
1123	Cumaribo	99
\.


--
-- TOC entry 3421 (class 0 OID 2031619)
-- Dependencies: 216
-- Data for Name: partidos_futbol; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.partidos_futbol (id_equipo, equipo, pais, fecha_partido, goles, arbitro, hora_partido) FROM stdin;
2	colombia            	colombia            	2025-04-07	4	juanin              	13:00:00
1	atletico bucaramanga	colombia            	2025-09-07	5	juan                	10:00:00
\.


--
-- TOC entry 3431 (class 0 OID 2277384)
-- Dependencies: 226
-- Data for Name: poderes; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.poderes (id, poder, descripcion, nivel, heroe_id) FROM stdin;
\.


--
-- TOC entry 3437 (class 0 OID 2351141)
-- Dependencies: 232
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.sucursal (id_sucursal, nombre, id_ciudad) FROM stdin;
1	Sucursal Centro Medellín	1
2	Sucursal Norte Bogotá	2
3	Sucursal Sur Cali	3
\.


--
-- TOC entry 3420 (class 0 OID 1966110)
-- Dependencies: 215
-- Data for Name: tabla; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.tabla (nombre, apellido, telefono) FROM stdin;
\.


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 217
-- Name: Colores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public."Colores_id_seq"', 6, true);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 233
-- Name: cargo_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.cargo_id_cargo_seq', 3, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 229
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 3, true);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 227
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.departamentos_id_departamento_seq', 3, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 235
-- Name: empleados_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 3, true);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 223
-- Name: heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.heroes_id_seq', 1, false);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 220
-- Name: partidos_futbol_goles_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.partidos_futbol_goles_seq', 1, false);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 219
-- Name: partidos_futbol_id_equipo_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.partidos_futbol_id_equipo_seq', 2, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 225
-- Name: poderes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.poderes_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 231
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.sucursal_id_sucursal_seq', 3, true);


--
-- TOC entry 3248 (class 2606 OID 2048006)
-- Name: Colores Colores_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public."Colores"
    ADD CONSTRAINT "Colores_pkey" PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 2351158)
-- Name: cargo cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id_cargo);


--
-- TOC entry 3264 (class 2606 OID 2351134)
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);


--
-- TOC entry 3252 (class 2606 OID 2220037)
-- Name: departament departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departament
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 3262 (class 2606 OID 2351127)
-- Name: departamentos departamentos_pkey1; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey1 PRIMARY KEY (id_departamento);


--
-- TOC entry 3270 (class 2606 OID 2351165)
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3258 (class 2606 OID 2277391)
-- Name: poderes heroe_id; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.poderes
    ADD CONSTRAINT heroe_id UNIQUE (heroe_id);


--
-- TOC entry 3256 (class 2606 OID 2277382)
-- Name: heroes heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.heroes
    ADD CONSTRAINT heroes_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 2220043)
-- Name: municipios municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (id_municipio);


--
-- TOC entry 3250 (class 2606 OID 2048008)
-- Name: Colores nombre unico; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public."Colores"
    ADD CONSTRAINT "nombre unico" UNIQUE (nombre);


--
-- TOC entry 3246 (class 2606 OID 2048015)
-- Name: partidos_futbol partidos_futbol_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.partidos_futbol
    ADD CONSTRAINT partidos_futbol_pkey PRIMARY KEY (id_equipo);


--
-- TOC entry 3260 (class 2606 OID 2277389)
-- Name: poderes poderes_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.poderes
    ADD CONSTRAINT poderes_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 2351146)
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_sucursal);


--
-- TOC entry 3273 (class 2606 OID 2351135)
-- Name: ciudad ciudad_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento);


--
-- TOC entry 3275 (class 2606 OID 2351166)
-- Name: empleados empleados_id_cargo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_cargo_fkey FOREIGN KEY (id_cargo) REFERENCES public.cargo(id_cargo);


--
-- TOC entry 3276 (class 2606 OID 2351171)
-- Name: empleados empleados_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- TOC entry 3272 (class 2606 OID 2277392)
-- Name: poderes heore_id; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.poderes
    ADD CONSTRAINT heore_id FOREIGN KEY (heroe_id) REFERENCES public.heroes(id) NOT VALID;


--
-- TOC entry 3271 (class 2606 OID 2220044)
-- Name: municipios relacion; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT relacion FOREIGN KEY (departamento_id) REFERENCES public.departament(id_departamento) NOT VALID;


--
-- TOC entry 3274 (class 2606 OID 2351147)
-- Name: sucursal sucursal_id_ciudad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_id_ciudad_fkey FOREIGN KEY (id_ciudad) REFERENCES public.ciudad(id_ciudad);


--
-- TOC entry 2092 (class 826 OID 1982469)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- TOC entry 2091 (class 826 OID 1982468)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO neon_superuser WITH GRANT OPTION;


-- Completed on 2025-08-20 19:52:34

--
-- PostgreSQL database dump complete
--

