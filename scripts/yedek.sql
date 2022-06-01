PGDMP                          z         
   filmsitesi    14.2    14.2 d    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    18093 
   filmsitesi    DATABASE     g   CREATE DATABASE filmsitesi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE filmsitesi;
                postgres    false            �            1259    18095    film    TABLE     �   CREATE TABLE public.film (
    filmid bigint NOT NULL,
    ad text,
    tur text,
    vizyon text,
    sure text,
    ulke text,
    puan numeric,
    yassiniri text,
    filmlinki text,
    aciklama text,
    gorsel text
);
    DROP TABLE public.film;
       public         heap    postgres    false            �            1259    18094    film_filmid_seq    SEQUENCE     x   CREATE SEQUENCE public.film_filmid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.film_filmid_seq;
       public          postgres    false    210            q           0    0    film_filmid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.film_filmid_seq OWNED BY public.film.filmid;
          public          postgres    false    209            �            1259    18593    filmkategori    TABLE     l   CREATE TABLE public.filmkategori (
    id integer NOT NULL,
    film_id integer,
    kategori_id integer
);
     DROP TABLE public.filmkategori;
       public         heap    postgres    false            �            1259    18592    filmkategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filmkategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filmkategori_id_seq;
       public          postgres    false    233            r           0    0    filmkategori_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filmkategori_id_seq OWNED BY public.filmkategori.id;
          public          postgres    false    232            �            1259    18132    fotograflar    TABLE     h   CREATE TABLE public.fotograflar (
    id bigint NOT NULL,
    filmid bigint NOT NULL,
    linki text
);
    DROP TABLE public.fotograflar;
       public         heap    postgres    false            �            1259    18131    fotograflar_filmid_seq    SEQUENCE        CREATE SEQUENCE public.fotograflar_filmid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.fotograflar_filmid_seq;
       public          postgres    false    217            s           0    0    fotograflar_filmid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.fotograflar_filmid_seq OWNED BY public.fotograflar.filmid;
          public          postgres    false    216            �            1259    18130    fotograflar_id_seq    SEQUENCE     {   CREATE SEQUENCE public.fotograflar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fotograflar_id_seq;
       public          postgres    false    217            t           0    0    fotograflar_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fotograflar_id_seq OWNED BY public.fotograflar.id;
          public          postgres    false    215            �            1259    18122    iletisim    TABLE     �   CREATE TABLE public.iletisim (
    id bigint NOT NULL,
    ad text,
    soyad text,
    eposta text,
    baslik text,
    mesaj text
);
    DROP TABLE public.iletisim;
       public         heap    postgres    false            �            1259    18121    iletisim_id_seq    SEQUENCE     x   CREATE SEQUENCE public.iletisim_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.iletisim_id_seq;
       public          postgres    false    214            u           0    0    iletisim_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.iletisim_id_seq OWNED BY public.iletisim.id;
          public          postgres    false    213            �            1259    18287    kategori    TABLE     H   CREATE TABLE public.kategori (
    id integer NOT NULL,
    adi text
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    18286    kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.kategori_id_seq;
       public          postgres    false    225            v           0    0    kategori_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kategori_id_seq OWNED BY public.kategori.id;
          public          postgres    false    224            �            1259    18529    kullanicilar    TABLE     �   CREATE TABLE public.kullanicilar (
    id bigint NOT NULL,
    kullaniciadi text,
    ad text,
    soyad text,
    eposta text,
    sifre text,
    ugroup integer NOT NULL
);
     DROP TABLE public.kullanicilar;
       public         heap    postgres    false            �            1259    18528    kullanicilar_id_seq    SEQUENCE     |   CREATE SEQUENCE public.kullanicilar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.kullanicilar_id_seq;
       public          postgres    false    229            w           0    0    kullanicilar_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.kullanicilar_id_seq OWNED BY public.kullanicilar.id;
          public          postgres    false    228            �            1259    18147    loglar    TABLE     �   CREATE TABLE public.loglar (
    id bigint NOT NULL,
    kullaniciadi text,
    hareket text,
    ip text,
    tarih date DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.loglar;
       public         heap    postgres    false            �            1259    18146    loglar_id_seq    SEQUENCE     v   CREATE SEQUENCE public.loglar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.loglar_id_seq;
       public          postgres    false    219            x           0    0    loglar_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.loglar_id_seq OWNED BY public.loglar.id;
          public          postgres    false    218            �            1259    18543 	   privilege    TABLE     �  CREATE TABLE public.privilege (
    id integer NOT NULL,
    sgroup integer NOT NULL,
    mname character varying(250) NOT NULL,
    icreate boolean DEFAULT false NOT NULL,
    iupdate boolean DEFAULT false NOT NULL,
    idelete boolean DEFAULT false NOT NULL,
    ilist boolean DEFAULT false NOT NULL,
    ishow boolean DEFAULT false NOT NULL,
    iread boolean DEFAULT false NOT NULL
);
    DROP TABLE public.privilege;
       public         heap    postgres    false            �            1259    18542    privilege_id_seq    SEQUENCE     �   CREATE SEQUENCE public.privilege_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.privilege_id_seq;
       public          postgres    false    231            y           0    0    privilege_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.privilege_id_seq OWNED BY public.privilege.id;
          public          postgres    false    230            �            1259    18104    sss    TABLE     W   CREATE TABLE public.sss (
    soruid bigint NOT NULL,
    soru text,
    cevap text
);
    DROP TABLE public.sss;
       public         heap    postgres    false            �            1259    18103    sss_soruid_seq    SEQUENCE     w   CREATE SEQUENCE public.sss_soruid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.sss_soruid_seq;
       public          postgres    false    212            z           0    0    sss_soruid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.sss_soruid_seq OWNED BY public.sss.soruid;
          public          postgres    false    211            �            1259    18518    systemgroup    TABLE        CREATE TABLE public.systemgroup (
    id integer NOT NULL,
    gname character varying(250) NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.systemgroup;
       public         heap    postgres    false            �            1259    18517    systemgroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.systemgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.systemgroup_id_seq;
       public          postgres    false    227            {           0    0    systemgroup_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.systemgroup_id_seq OWNED BY public.systemgroup.id;
          public          postgres    false    226            �            1259    18159    yorumlar    TABLE     �   CREATE TABLE public.yorumlar (
    yorumid bigint NOT NULL,
    kullaniciid bigint NOT NULL,
    filmid bigint NOT NULL,
    yorum text,
    tarih date DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.yorumlar;
       public         heap    postgres    false            �            1259    18158    yorumlar_filmid_seq    SEQUENCE     |   CREATE SEQUENCE public.yorumlar_filmid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.yorumlar_filmid_seq;
       public          postgres    false    223            |           0    0    yorumlar_filmid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.yorumlar_filmid_seq OWNED BY public.yorumlar.filmid;
          public          postgres    false    222            �            1259    18157    yorumlar_kullaniciid_seq    SEQUENCE     �   CREATE SEQUENCE public.yorumlar_kullaniciid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.yorumlar_kullaniciid_seq;
       public          postgres    false    223            }           0    0    yorumlar_kullaniciid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.yorumlar_kullaniciid_seq OWNED BY public.yorumlar.kullaniciid;
          public          postgres    false    221            �            1259    18156    yorumlar_yorumid_seq    SEQUENCE     }   CREATE SEQUENCE public.yorumlar_yorumid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.yorumlar_yorumid_seq;
       public          postgres    false    223            ~           0    0    yorumlar_yorumid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.yorumlar_yorumid_seq OWNED BY public.yorumlar.yorumid;
          public          postgres    false    220            �           2604    18623    film filmid    DEFAULT     j   ALTER TABLE ONLY public.film ALTER COLUMN filmid SET DEFAULT nextval('public.film_filmid_seq'::regclass);
 :   ALTER TABLE public.film ALTER COLUMN filmid DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    18624    filmkategori id    DEFAULT     r   ALTER TABLE ONLY public.filmkategori ALTER COLUMN id SET DEFAULT nextval('public.filmkategori_id_seq'::regclass);
 >   ALTER TABLE public.filmkategori ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    18625    fotograflar id    DEFAULT     p   ALTER TABLE ONLY public.fotograflar ALTER COLUMN id SET DEFAULT nextval('public.fotograflar_id_seq'::regclass);
 =   ALTER TABLE public.fotograflar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    215    217            �           2604    18626    fotograflar filmid    DEFAULT     x   ALTER TABLE ONLY public.fotograflar ALTER COLUMN filmid SET DEFAULT nextval('public.fotograflar_filmid_seq'::regclass);
 A   ALTER TABLE public.fotograflar ALTER COLUMN filmid DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    18627    iletisim id    DEFAULT     j   ALTER TABLE ONLY public.iletisim ALTER COLUMN id SET DEFAULT nextval('public.iletisim_id_seq'::regclass);
 :   ALTER TABLE public.iletisim ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    18628    kategori id    DEFAULT     j   ALTER TABLE ONLY public.kategori ALTER COLUMN id SET DEFAULT nextval('public.kategori_id_seq'::regclass);
 :   ALTER TABLE public.kategori ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    18629    kullanicilar id    DEFAULT     r   ALTER TABLE ONLY public.kullanicilar ALTER COLUMN id SET DEFAULT nextval('public.kullanicilar_id_seq'::regclass);
 >   ALTER TABLE public.kullanicilar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    18630 	   loglar id    DEFAULT     f   ALTER TABLE ONLY public.loglar ALTER COLUMN id SET DEFAULT nextval('public.loglar_id_seq'::regclass);
 8   ALTER TABLE public.loglar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    18631    privilege id    DEFAULT     l   ALTER TABLE ONLY public.privilege ALTER COLUMN id SET DEFAULT nextval('public.privilege_id_seq'::regclass);
 ;   ALTER TABLE public.privilege ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    18632 
   sss soruid    DEFAULT     h   ALTER TABLE ONLY public.sss ALTER COLUMN soruid SET DEFAULT nextval('public.sss_soruid_seq'::regclass);
 9   ALTER TABLE public.sss ALTER COLUMN soruid DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    18633    systemgroup id    DEFAULT     p   ALTER TABLE ONLY public.systemgroup ALTER COLUMN id SET DEFAULT nextval('public.systemgroup_id_seq'::regclass);
 =   ALTER TABLE public.systemgroup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    18634    yorumlar yorumid    DEFAULT     t   ALTER TABLE ONLY public.yorumlar ALTER COLUMN yorumid SET DEFAULT nextval('public.yorumlar_yorumid_seq'::regclass);
 ?   ALTER TABLE public.yorumlar ALTER COLUMN yorumid DROP DEFAULT;
       public          postgres    false    223    220    223            �           2604    18635    yorumlar kullaniciid    DEFAULT     |   ALTER TABLE ONLY public.yorumlar ALTER COLUMN kullaniciid SET DEFAULT nextval('public.yorumlar_kullaniciid_seq'::regclass);
 C   ALTER TABLE public.yorumlar ALTER COLUMN kullaniciid DROP DEFAULT;
       public          postgres    false    223    221    223            �           2604    18636    yorumlar filmid    DEFAULT     r   ALTER TABLE ONLY public.yorumlar ALTER COLUMN filmid SET DEFAULT nextval('public.yorumlar_filmid_seq'::regclass);
 >   ALTER TABLE public.yorumlar ALTER COLUMN filmid DROP DEFAULT;
       public          postgres    false    223    222    223            S          0    18095    film 
   TABLE DATA           q   COPY public.film (filmid, ad, tur, vizyon, sure, ulke, puan, yassiniri, filmlinki, aciklama, gorsel) FROM stdin;
    public          postgres    false    210   Qn       j          0    18593    filmkategori 
   TABLE DATA           @   COPY public.filmkategori (id, film_id, kategori_id) FROM stdin;
    public          postgres    false    233   nn       Z          0    18132    fotograflar 
   TABLE DATA           8   COPY public.fotograflar (id, filmid, linki) FROM stdin;
    public          postgres    false    217   �n       W          0    18122    iletisim 
   TABLE DATA           H   COPY public.iletisim (id, ad, soyad, eposta, baslik, mesaj) FROM stdin;
    public          postgres    false    214   �n       b          0    18287    kategori 
   TABLE DATA           +   COPY public.kategori (id, adi) FROM stdin;
    public          postgres    false    225   �n       f          0    18529    kullanicilar 
   TABLE DATA           Z   COPY public.kullanicilar (id, kullaniciadi, ad, soyad, eposta, sifre, ugroup) FROM stdin;
    public          postgres    false    229   !o       \          0    18147    loglar 
   TABLE DATA           F   COPY public.loglar (id, kullaniciadi, hareket, ip, tarih) FROM stdin;
    public          postgres    false    219   �o       h          0    18543 	   privilege 
   TABLE DATA           f   COPY public.privilege (id, sgroup, mname, icreate, iupdate, idelete, ilist, ishow, iread) FROM stdin;
    public          postgres    false    231   Qp       U          0    18104    sss 
   TABLE DATA           2   COPY public.sss (soruid, soru, cevap) FROM stdin;
    public          postgres    false    212   q       d          0    18518    systemgroup 
   TABLE DATA           B   COPY public.systemgroup (id, gname, created, updated) FROM stdin;
    public          postgres    false    227   |q       `          0    18159    yorumlar 
   TABLE DATA           N   COPY public.yorumlar (yorumid, kullaniciid, filmid, yorum, tarih) FROM stdin;
    public          postgres    false    223   �q                  0    0    film_filmid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.film_filmid_seq', 57, true);
          public          postgres    false    209            �           0    0    filmkategori_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filmkategori_id_seq', 85, true);
          public          postgres    false    232            �           0    0    fotograflar_filmid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.fotograflar_filmid_seq', 1, false);
          public          postgres    false    216            �           0    0    fotograflar_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fotograflar_id_seq', 51, true);
          public          postgres    false    215            �           0    0    iletisim_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.iletisim_id_seq', 8, true);
          public          postgres    false    213            �           0    0    kategori_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kategori_id_seq', 23, true);
          public          postgres    false    224            �           0    0    kullanicilar_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.kullanicilar_id_seq', 12, true);
          public          postgres    false    228            �           0    0    loglar_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.loglar_id_seq', 15, true);
          public          postgres    false    218            �           0    0    privilege_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.privilege_id_seq', 24, true);
          public          postgres    false    230            �           0    0    sss_soruid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sss_soruid_seq', 57, true);
          public          postgres    false    211            �           0    0    systemgroup_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.systemgroup_id_seq', 6, true);
          public          postgres    false    226            �           0    0    yorumlar_filmid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.yorumlar_filmid_seq', 1, false);
          public          postgres    false    222            �           0    0    yorumlar_kullaniciid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.yorumlar_kullaniciid_seq', 1, false);
          public          postgres    false    221            �           0    0    yorumlar_yorumid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.yorumlar_yorumid_seq', 18, true);
          public          postgres    false    220            �           2606    18102    film film_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (filmid);
 8   ALTER TABLE ONLY public.film DROP CONSTRAINT film_pkey;
       public            postgres    false    210            �           2606    18598    filmkategori filmkategori_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filmkategori
    ADD CONSTRAINT filmkategori_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filmkategori DROP CONSTRAINT filmkategori_pkey;
       public            postgres    false    233            �           2606    18140    fotograflar fotograflar_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fotograflar
    ADD CONSTRAINT fotograflar_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fotograflar DROP CONSTRAINT fotograflar_pkey;
       public            postgres    false    217            �           2606    18129    iletisim iletisim_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.iletisim
    ADD CONSTRAINT iletisim_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.iletisim DROP CONSTRAINT iletisim_pkey;
       public            postgres    false    214            �           2606    18294    kategori kategori_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    225            �           2606    18536    kullanicilar kullanicilar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kullanicilar
    ADD CONSTRAINT kullanicilar_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.kullanicilar DROP CONSTRAINT kullanicilar_pkey;
       public            postgres    false    229            �           2606    18155    loglar loglar_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.loglar
    ADD CONSTRAINT loglar_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.loglar DROP CONSTRAINT loglar_pkey;
       public            postgres    false    219            �           2606    18554    privilege privilege_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.privilege DROP CONSTRAINT privilege_pkey;
       public            postgres    false    231            �           2606    18111    sss sss_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sss
    ADD CONSTRAINT sss_pkey PRIMARY KEY (soruid);
 6   ALTER TABLE ONLY public.sss DROP CONSTRAINT sss_pkey;
       public            postgres    false    212            �           2606    18527 !   systemgroup systemgroup_gname_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.systemgroup
    ADD CONSTRAINT systemgroup_gname_key UNIQUE (gname);
 K   ALTER TABLE ONLY public.systemgroup DROP CONSTRAINT systemgroup_gname_key;
       public            postgres    false    227            �           2606    18525    systemgroup systemgroup_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.systemgroup
    ADD CONSTRAINT systemgroup_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.systemgroup DROP CONSTRAINT systemgroup_pkey;
       public            postgres    false    227            �           2606    18169    yorumlar yorumlar_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.yorumlar
    ADD CONSTRAINT yorumlar_pkey PRIMARY KEY (yorumid);
 @   ALTER TABLE ONLY public.yorumlar DROP CONSTRAINT yorumlar_pkey;
       public            postgres    false    223            �           2606    18599 &   filmkategori filmkategori_film_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.filmkategori
    ADD CONSTRAINT filmkategori_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(filmid);
 P   ALTER TABLE ONLY public.filmkategori DROP CONSTRAINT filmkategori_film_id_fkey;
       public          postgres    false    233    210    3242            �           2606    18604 *   filmkategori filmkategori_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.filmkategori
    ADD CONSTRAINT filmkategori_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(id);
 T   ALTER TABLE ONLY public.filmkategori DROP CONSTRAINT filmkategori_kategori_id_fkey;
       public          postgres    false    233    225    3254            �           2606    18141 #   fotograflar fotograflar_filmid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fotograflar
    ADD CONSTRAINT fotograflar_filmid_fkey FOREIGN KEY (filmid) REFERENCES public.film(filmid);
 M   ALTER TABLE ONLY public.fotograflar DROP CONSTRAINT fotograflar_filmid_fkey;
       public          postgres    false    210    3242    217            �           2606    18537 %   kullanicilar kullanicilar_ugroup_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kullanicilar
    ADD CONSTRAINT kullanicilar_ugroup_fkey FOREIGN KEY (ugroup) REFERENCES public.systemgroup(id);
 O   ALTER TABLE ONLY public.kullanicilar DROP CONSTRAINT kullanicilar_ugroup_fkey;
       public          postgres    false    229    3258    227            �           2606    18555    privilege privilege_sgroup_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT privilege_sgroup_fkey FOREIGN KEY (sgroup) REFERENCES public.systemgroup(id);
 I   ALTER TABLE ONLY public.privilege DROP CONSTRAINT privilege_sgroup_fkey;
       public          postgres    false    3258    227    231            �           2606    18175    yorumlar yorumlar_filmid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.yorumlar
    ADD CONSTRAINT yorumlar_filmid_fkey FOREIGN KEY (filmid) REFERENCES public.film(filmid);
 G   ALTER TABLE ONLY public.yorumlar DROP CONSTRAINT yorumlar_filmid_fkey;
       public          postgres    false    3242    223    210            S      x������ � �      j      x������ � �      Z      x������ � �      W   #   x�3�L�A.Δ��������W� {1�      b   6   x�3�t����U�.-J/�2�t�.ά���2�t)J�M�2����MM������ D�      f   �   x�m���0DϳU�K�΄�-�K��G��-P������H�U�]��1|ޮro�}����s�����ar�Tz�NP��ؐ;8��7F���(�I�Zrm�iXڻ���m�p:JH�P[�u��jZ� �p;�      \   �   x�3�L-J��L�,�<:_�2����FNC=0�4202�50�52�2�t����,NLKI,N�L,N#d%�`є�D]�R���A���!��H*�B!+� ) �@�A)$��i`�!nI;
�0%�8%Eq� ��K�      h   �   x�]��
�0���Èݿ/ ȼy��F0]���߄�m�}_B�j�Q�M�T�Fg*�DG��G�tq���<�yH���C+]I�.�^����� o8^�$�?��c�{�8��1l\����;�9�_��49�]��ɵG���m$lEv)�&�I6�&a�[��}���?�jxF      U   \   x�3�L,NI�L��\� ^q"B���8%�R�Ӡ,.s�40���,//�r.CN���#s�+�l,Q��)�+-R��t���M������ V�%e      d   J   x�3�tL����4202�50�56T04�2��24�316156�#�e�雟�Z�Xrx[�Fs�e�����=F��� r+),      `      x������ � �     