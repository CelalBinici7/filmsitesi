PGDMP     .                     z         
   filmsitesi    14.2    14.2     U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    18093 
   filmsitesi    DATABASE     g   CREATE DATABASE filmsitesi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE filmsitesi;
                postgres    false            ;          0    18095    film 
   TABLE DATA           q   COPY public.film (filmid, ad, tur, vizyon, sure, ulke, puan, yassiniri, filmlinki, aciklama, gorsel) FROM stdin;
    public          postgres    false    210   �       J          0    18287    kategori 
   TABLE DATA           +   COPY public.kategori (id, adi) FROM stdin;
    public          postgres    false    225          R          0    18593    filmkategori 
   TABLE DATA           @   COPY public.filmkategori (id, film_id, kategori_id) FROM stdin;
    public          postgres    false    233   Z       B          0    18132    fotograflar 
   TABLE DATA           8   COPY public.fotograflar (id, filmid, linki) FROM stdin;
    public          postgres    false    217   w       ?          0    18122    iletisim 
   TABLE DATA           H   COPY public.iletisim (id, ad, soyad, eposta, baslik, mesaj) FROM stdin;
    public          postgres    false    214   �       L          0    18518    systemgroup 
   TABLE DATA           B   COPY public.systemgroup (id, gname, created, updated) FROM stdin;
    public          postgres    false    227   �       N          0    18529    kullanicilar 
   TABLE DATA           Z   COPY public.kullanicilar (id, kullaniciadi, ad, soyad, eposta, sifre, ugroup) FROM stdin;
    public          postgres    false    229   !       D          0    18147    loglar 
   TABLE DATA           F   COPY public.loglar (id, kullaniciadi, hareket, ip, tarih) FROM stdin;
    public          postgres    false    219   �       P          0    18543 	   privilege 
   TABLE DATA           f   COPY public.privilege (id, sgroup, mname, icreate, iupdate, idelete, ilist, ishow, iread) FROM stdin;
    public          postgres    false    231   Q       =          0    18104    sss 
   TABLE DATA           2   COPY public.sss (soruid, soru, cevap) FROM stdin;
    public          postgres    false    212          H          0    18159    yorumlar 
   TABLE DATA           N   COPY public.yorumlar (yorumid, kullaniciid, filmid, yorum, tarih) FROM stdin;
    public          postgres    false    223   |       Y           0    0    film_filmid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.film_filmid_seq', 57, true);
          public          postgres    false    209            Z           0    0    filmkategori_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filmkategori_id_seq', 85, true);
          public          postgres    false    232            [           0    0    fotograflar_filmid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.fotograflar_filmid_seq', 1, false);
          public          postgres    false    216            \           0    0    fotograflar_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fotograflar_id_seq', 51, true);
          public          postgres    false    215            ]           0    0    iletisim_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.iletisim_id_seq', 8, true);
          public          postgres    false    213            ^           0    0    kategori_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kategori_id_seq', 23, true);
          public          postgres    false    224            _           0    0    kullanicilar_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.kullanicilar_id_seq', 12, true);
          public          postgres    false    228            `           0    0    loglar_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.loglar_id_seq', 15, true);
          public          postgres    false    218            a           0    0    privilege_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.privilege_id_seq', 24, true);
          public          postgres    false    230            b           0    0    sss_soruid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sss_soruid_seq', 57, true);
          public          postgres    false    211            c           0    0    systemgroup_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.systemgroup_id_seq', 6, true);
          public          postgres    false    226            d           0    0    yorumlar_filmid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.yorumlar_filmid_seq', 1, false);
          public          postgres    false    222            e           0    0    yorumlar_kullaniciid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.yorumlar_kullaniciid_seq', 1, false);
          public          postgres    false    221            f           0    0    yorumlar_yorumid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.yorumlar_yorumid_seq', 18, true);
          public          postgres    false    220            ;      x������ � �      J   6   x�3�t����U�.-J/�2�t�.ά���2�t)J�M�2����MM������ D�      R      x������ � �      B      x������ � �      ?   #   x�3�L�A.Δ��������W� {1�      L   J   x�3�tL����4202�50�56T04�2��24�316156�#�e�雟�Z�Xrx[�Fs�e�����=F��� r+),      N   �   x�m���0DϳU�K�΄�-�K��G��-P������H�U�]��1|ޮro�}����s�����ar�Tz�NP��ؐ;8��7F���(�I�Zrm�iXڻ���m�p:JH�P[�u��jZ� �p;�      D   �   x�3�L-J��L�,�<:_�2����FNC=0�4202�50�52�2�t����,NLKI,N�L,N#d%�`є�D]�R���A���!��H*�B!+� ) �@�A)$��i`�!nI;
�0%�8%Eq� ��K�      P   �   x�]��
�0���Èݿ/ ȼy��F0]���߄�m�}_B�j�Q�M�T�Fg*�DG��G�tq���<�yH���C+]I�.�^����� o8^�$�?��c�{�8��1l\����;�9�_��49�]��ɵG���m$lEv)�&�I6�&a�[��}���?�jxF      =   \   x�3�L,NI�L��\� ^q"B���8%�R�Ӡ,.s�40���,//�r.CN���#s�+�l,Q��)�+-R��t���M������ V�%e      H      x������ � �     