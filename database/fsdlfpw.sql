PGDMP         !            	    z           fsdl-fpw    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16425    fsdl-fpw    DATABASE     f   CREATE DATABASE "fsdl-fpw" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE "fsdl-fpw";
                postgres    false            ?            1259    16430    prodotto    TABLE     ?   CREATE TABLE public.prodotto (
    id integer NOT NULL,
    nome character varying(50),
    descrizione character varying(500),
    prezzo character varying(10),
    foto character varying(20),
    creatore character varying(20)
);
    DROP TABLE public.prodotto;
       public         heap    postgres    false            ?            1259    16433    prodotto_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.prodotto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.prodotto_id_seq;
       public          postgres    false    209            ?           0    0    prodotto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.prodotto_id_seq OWNED BY public.prodotto.id;
          public          postgres    false    210            ?            1259    16434    utente    TABLE     ?   CREATE TABLE public.utente (
    username character varying(50) NOT NULL,
    password character varying(50),
    nome character varying(50),
    cognome character varying(50),
    email character varying(50),
    citta character varying(20)
);
    DROP TABLE public.utente;
       public         heap    postgres    false            `           2604    16438    prodotto id    DEFAULT     j   ALTER TABLE ONLY public.prodotto ALTER COLUMN id SET DEFAULT nextval('public.prodotto_id_seq'::regclass);
 :   ALTER TABLE public.prodotto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            ?          0    16430    prodotto 
   TABLE DATA           Q   COPY public.prodotto (id, nome, descrizione, prezzo, foto, creatore) FROM stdin;
    public          postgres    false    209          ?          0    16434    utente 
   TABLE DATA           Q   COPY public.utente (username, password, nome, cognome, email, citta) FROM stdin;
    public          postgres    false    211   T       ?           0    0    prodotto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.prodotto_id_seq', 8, true);
          public          postgres    false    210            b           2606    16440    prodotto prodotto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.prodotto DROP CONSTRAINT prodotto_pkey;
       public            postgres    false    209            d           2606    16442    utente utente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (username);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    211            e           2606    16445    prodotto prodotto_creatore_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_creatore_fkey FOREIGN KEY (creatore) REFERENCES public.utente(username) ON UPDATE CASCADE;
 I   ALTER TABLE ONLY public.prodotto DROP CONSTRAINT prodotto_creatore_fkey;
       public          postgres    false    3172    209    211            ?   )  x?m?=n?0?k?)?U:cm?H?6Eq???jGډ)?LRkxO?2WH???Q??I#H$??{?Fg???C/??gu?Yi???`?U??&G?-???!P?f?-iֽ?hm??I?(I??A?zˑ_(???r*28???F?????}?\?????_}?*???*???3??Pu?????uM??K????%=P;m?.?4e??n
?D?c0o?{????P???7?? W	??uB???d?:????k$c/??ĝ-?.?|ڇ?]??..\?W??=???P<??Z???+?#^ᑦњ????r?P??l??wPm!GC???I?鸈˸?QQ?????d0=3????h?|9???x??{?E???[?xP	[???'}??l/?FKi?P?[?:f?вw?$":P?d?Q?^QUo&Mh???vd?????1$???J7??]'?ft1?t??x?0?Q????"K?RKl37{??4_?k????P*E??n.Y?T(?#?Yn/{??7?+ݨ?U????"?????ep?[????̀^????????.?c?v      ?   e   x?m??
?0 ??c?ops'???K?
?д??ku????X??-?o??????t??5
%??I"86? ?X????a?EN??N?0/??y
b??ę??*?     