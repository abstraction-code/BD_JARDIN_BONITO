PGDMP     4            	         {            Jardin_Bonito    15.1    15.1 P    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16598    Jardin_Bonito    DATABASE     �   CREATE DATABASE "Jardin_Bonito" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE "Jardin_Bonito";
                postgres    false            �            1259    16794    tbl_clientes    TABLE     �  CREATE TABLE public.tbl_clientes (
    id_clientes integer NOT NULL,
    id_tipodoc integer NOT NULL,
    id_comuna integer NOT NULL,
    numero_documento integer NOT NULL,
    apellidop character varying(50),
    apellidom character varying(50),
    nombres character varying(100),
    fecha_nac date,
    telefono integer NOT NULL,
    direccion character varying(50),
    email character varying(50) NOT NULL
);
     DROP TABLE public.tbl_clientes;
       public         heap    postgres    false            �            1259    16793    tbl_clientes_id_clientes_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_clientes_id_clientes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_clientes_id_clientes_seq;
       public          postgres    false    227            `           0    0    tbl_clientes_id_clientes_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_clientes_id_clientes_seq OWNED BY public.tbl_clientes.id_clientes;
          public          postgres    false    226            �            1259    16785 
   tbl_comuna    TABLE     �   CREATE TABLE public.tbl_comuna (
    id_comuna integer NOT NULL,
    id_provincia integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.tbl_comuna;
       public         heap    postgres    false            �            1259    16784    tbl_comuna_id_comuna_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_comuna_id_comuna_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_comuna_id_comuna_seq;
       public          postgres    false    225            a           0    0    tbl_comuna_id_comuna_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_comuna_id_comuna_seq OWNED BY public.tbl_comuna.id_comuna;
          public          postgres    false    224            �            1259    16808    tbl_detalleventas    TABLE     �   CREATE TABLE public.tbl_detalleventas (
    id_detalle integer NOT NULL,
    id_ventas integer NOT NULL,
    id_plantas integer NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario integer,
    iva integer,
    fecha date NOT NULL
);
 %   DROP TABLE public.tbl_detalleventas;
       public         heap    postgres    false            �            1259    16807     tbl_detalleventas_id_detalle_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_detalleventas_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_detalleventas_id_detalle_seq;
       public          postgres    false    231            b           0    0     tbl_detalleventas_id_detalle_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_detalleventas_id_detalle_seq OWNED BY public.tbl_detalleventas.id_detalle;
          public          postgres    false    230            �            1259    16749    tbl_plantas    TABLE     �   CREATE TABLE public.tbl_plantas (
    id_plantas integer NOT NULL,
    id_tipo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    precio integer,
    stock_total integer NOT NULL,
    stock_minimo integer NOT NULL
);
    DROP TABLE public.tbl_plantas;
       public         heap    postgres    false            �            1259    16748    tbl_plantas_id_plantas_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_plantas_id_plantas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_plantas_id_plantas_seq;
       public          postgres    false    217            c           0    0    tbl_plantas_id_plantas_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_plantas_id_plantas_seq OWNED BY public.tbl_plantas.id_plantas;
          public          postgres    false    216            �            1259    16776    tbl_provincia    TABLE     �   CREATE TABLE public.tbl_provincia (
    id_provincia integer NOT NULL,
    id_region integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 !   DROP TABLE public.tbl_provincia;
       public         heap    postgres    false            �            1259    16775    tbl_provincia_id_provincia_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_provincia_id_provincia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_provincia_id_provincia_seq;
       public          postgres    false    223            d           0    0    tbl_provincia_id_provincia_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_provincia_id_provincia_seq OWNED BY public.tbl_provincia.id_provincia;
          public          postgres    false    222            �            1259    16767 
   tbl_region    TABLE     n   CREATE TABLE public.tbl_region (
    id_region integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.tbl_region;
       public         heap    postgres    false            �            1259    16766    tbl_region_id_region_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_region_id_region_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_region_id_region_seq;
       public          postgres    false    221            e           0    0    tbl_region_id_region_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_region_id_region_seq OWNED BY public.tbl_region.id_region;
          public          postgres    false    220            �            1259    16758    tbl_tipodocumento    TABLE     t   CREATE TABLE public.tbl_tipodocumento (
    id_tipodoc integer NOT NULL,
    tipo character varying(50) NOT NULL
);
 %   DROP TABLE public.tbl_tipodocumento;
       public         heap    postgres    false            �            1259    16757     tbl_tipodocumento_id_tipodoc_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tipodocumento_id_tipodoc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_tipodocumento_id_tipodoc_seq;
       public          postgres    false    219            f           0    0     tbl_tipodocumento_id_tipodoc_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_tipodocumento_id_tipodoc_seq OWNED BY public.tbl_tipodocumento.id_tipodoc;
          public          postgres    false    218            �            1259    16742    tbl_tipoplanta    TABLE     e   CREATE TABLE public.tbl_tipoplanta (
    id_tipo integer NOT NULL,
    tipo character varying(50)
);
 "   DROP TABLE public.tbl_tipoplanta;
       public         heap    postgres    false            �            1259    16741    tbl_tipoplanta_id_tipo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tipoplanta_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_tipoplanta_id_tipo_seq;
       public          postgres    false    215            g           0    0    tbl_tipoplanta_id_tipo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_tipoplanta_id_tipo_seq OWNED BY public.tbl_tipoplanta.id_tipo;
          public          postgres    false    214            �            1259    16801 
   tbl_ventas    TABLE     ~   CREATE TABLE public.tbl_ventas (
    id_ventas integer NOT NULL,
    id_clientes integer NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.tbl_ventas;
       public         heap    postgres    false            �            1259    16800    tbl_ventas_id_ventas_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_ventas_id_ventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_ventas_id_ventas_seq;
       public          postgres    false    229            h           0    0    tbl_ventas_id_ventas_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_ventas_id_ventas_seq OWNED BY public.tbl_ventas.id_ventas;
          public          postgres    false    228            �           2604    16797    tbl_clientes id_clientes    DEFAULT     �   ALTER TABLE ONLY public.tbl_clientes ALTER COLUMN id_clientes SET DEFAULT nextval('public.tbl_clientes_id_clientes_seq'::regclass);
 G   ALTER TABLE public.tbl_clientes ALTER COLUMN id_clientes DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16788    tbl_comuna id_comuna    DEFAULT     |   ALTER TABLE ONLY public.tbl_comuna ALTER COLUMN id_comuna SET DEFAULT nextval('public.tbl_comuna_id_comuna_seq'::regclass);
 C   ALTER TABLE public.tbl_comuna ALTER COLUMN id_comuna DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16811    tbl_detalleventas id_detalle    DEFAULT     �   ALTER TABLE ONLY public.tbl_detalleventas ALTER COLUMN id_detalle SET DEFAULT nextval('public.tbl_detalleventas_id_detalle_seq'::regclass);
 K   ALTER TABLE public.tbl_detalleventas ALTER COLUMN id_detalle DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16752    tbl_plantas id_plantas    DEFAULT     �   ALTER TABLE ONLY public.tbl_plantas ALTER COLUMN id_plantas SET DEFAULT nextval('public.tbl_plantas_id_plantas_seq'::regclass);
 E   ALTER TABLE public.tbl_plantas ALTER COLUMN id_plantas DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16779    tbl_provincia id_provincia    DEFAULT     �   ALTER TABLE ONLY public.tbl_provincia ALTER COLUMN id_provincia SET DEFAULT nextval('public.tbl_provincia_id_provincia_seq'::regclass);
 I   ALTER TABLE public.tbl_provincia ALTER COLUMN id_provincia DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16770    tbl_region id_region    DEFAULT     |   ALTER TABLE ONLY public.tbl_region ALTER COLUMN id_region SET DEFAULT nextval('public.tbl_region_id_region_seq'::regclass);
 C   ALTER TABLE public.tbl_region ALTER COLUMN id_region DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16761    tbl_tipodocumento id_tipodoc    DEFAULT     �   ALTER TABLE ONLY public.tbl_tipodocumento ALTER COLUMN id_tipodoc SET DEFAULT nextval('public.tbl_tipodocumento_id_tipodoc_seq'::regclass);
 K   ALTER TABLE public.tbl_tipodocumento ALTER COLUMN id_tipodoc DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16745    tbl_tipoplanta id_tipo    DEFAULT     �   ALTER TABLE ONLY public.tbl_tipoplanta ALTER COLUMN id_tipo SET DEFAULT nextval('public.tbl_tipoplanta_id_tipo_seq'::regclass);
 E   ALTER TABLE public.tbl_tipoplanta ALTER COLUMN id_tipo DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16804    tbl_ventas id_ventas    DEFAULT     |   ALTER TABLE ONLY public.tbl_ventas ALTER COLUMN id_ventas SET DEFAULT nextval('public.tbl_ventas_id_ventas_seq'::regclass);
 C   ALTER TABLE public.tbl_ventas ALTER COLUMN id_ventas DROP DEFAULT;
       public          postgres    false    229    228    229            U          0    16794    tbl_clientes 
   TABLE DATA           �   COPY public.tbl_clientes (id_clientes, id_tipodoc, id_comuna, numero_documento, apellidop, apellidom, nombres, fecha_nac, telefono, direccion, email) FROM stdin;
    public          postgres    false    227   ]b       S          0    16785 
   tbl_comuna 
   TABLE DATA           E   COPY public.tbl_comuna (id_comuna, id_provincia, nombre) FROM stdin;
    public          postgres    false    225   �c       Y          0    16808    tbl_detalleventas 
   TABLE DATA           u   COPY public.tbl_detalleventas (id_detalle, id_ventas, id_plantas, cantidad, precio_unitario, iva, fecha) FROM stdin;
    public          postgres    false    231   dd       K          0    16749    tbl_plantas 
   TABLE DATA           e   COPY public.tbl_plantas (id_plantas, id_tipo, nombre, precio, stock_total, stock_minimo) FROM stdin;
    public          postgres    false    217   �d       Q          0    16776    tbl_provincia 
   TABLE DATA           H   COPY public.tbl_provincia (id_provincia, id_region, nombre) FROM stdin;
    public          postgres    false    223   `e       O          0    16767 
   tbl_region 
   TABLE DATA           7   COPY public.tbl_region (id_region, nombre) FROM stdin;
    public          postgres    false    221   f       M          0    16758    tbl_tipodocumento 
   TABLE DATA           =   COPY public.tbl_tipodocumento (id_tipodoc, tipo) FROM stdin;
    public          postgres    false    219   cf       I          0    16742    tbl_tipoplanta 
   TABLE DATA           7   COPY public.tbl_tipoplanta (id_tipo, tipo) FROM stdin;
    public          postgres    false    215   �f       W          0    16801 
   tbl_ventas 
   TABLE DATA           C   COPY public.tbl_ventas (id_ventas, id_clientes, fecha) FROM stdin;
    public          postgres    false    229   �f       i           0    0    tbl_clientes_id_clientes_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_clientes_id_clientes_seq', 1, true);
          public          postgres    false    226            j           0    0    tbl_comuna_id_comuna_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_comuna_id_comuna_seq', 15, true);
          public          postgres    false    224            k           0    0     tbl_detalleventas_id_detalle_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tbl_detalleventas_id_detalle_seq', 1, false);
          public          postgres    false    230            l           0    0    tbl_plantas_id_plantas_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_plantas_id_plantas_seq', 6, true);
          public          postgres    false    216            m           0    0    tbl_provincia_id_provincia_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_provincia_id_provincia_seq', 13, true);
          public          postgres    false    222            n           0    0    tbl_region_id_region_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_region_id_region_seq', 5, true);
          public          postgres    false    220            o           0    0     tbl_tipodocumento_id_tipodoc_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_tipodocumento_id_tipodoc_seq', 5, true);
          public          postgres    false    218            p           0    0    tbl_tipoplanta_id_tipo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_tipoplanta_id_tipo_seq', 5, true);
          public          postgres    false    214            q           0    0    tbl_ventas_id_ventas_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_ventas_id_ventas_seq', 1, false);
          public          postgres    false    228            �           2606    16799    tbl_clientes tbl_clientes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_clientes
    ADD CONSTRAINT tbl_clientes_pkey PRIMARY KEY (id_clientes);
 H   ALTER TABLE ONLY public.tbl_clientes DROP CONSTRAINT tbl_clientes_pkey;
       public            postgres    false    227            �           2606    16792     tbl_comuna tbl_comuna_nombre_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_comuna
    ADD CONSTRAINT tbl_comuna_nombre_key UNIQUE (nombre);
 J   ALTER TABLE ONLY public.tbl_comuna DROP CONSTRAINT tbl_comuna_nombre_key;
       public            postgres    false    225            �           2606    16790    tbl_comuna tbl_comuna_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_comuna
    ADD CONSTRAINT tbl_comuna_pkey PRIMARY KEY (id_comuna);
 D   ALTER TABLE ONLY public.tbl_comuna DROP CONSTRAINT tbl_comuna_pkey;
       public            postgres    false    225            �           2606    16813 (   tbl_detalleventas tbl_detalleventas_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_detalleventas
    ADD CONSTRAINT tbl_detalleventas_pkey PRIMARY KEY (id_detalle);
 R   ALTER TABLE ONLY public.tbl_detalleventas DROP CONSTRAINT tbl_detalleventas_pkey;
       public            postgres    false    231            �           2606    16756 "   tbl_plantas tbl_plantas_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_plantas
    ADD CONSTRAINT tbl_plantas_nombre_key UNIQUE (nombre);
 L   ALTER TABLE ONLY public.tbl_plantas DROP CONSTRAINT tbl_plantas_nombre_key;
       public            postgres    false    217            �           2606    16754    tbl_plantas tbl_plantas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_plantas
    ADD CONSTRAINT tbl_plantas_pkey PRIMARY KEY (id_plantas);
 F   ALTER TABLE ONLY public.tbl_plantas DROP CONSTRAINT tbl_plantas_pkey;
       public            postgres    false    217            �           2606    16783 &   tbl_provincia tbl_provincia_nombre_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_provincia
    ADD CONSTRAINT tbl_provincia_nombre_key UNIQUE (nombre);
 P   ALTER TABLE ONLY public.tbl_provincia DROP CONSTRAINT tbl_provincia_nombre_key;
       public            postgres    false    223            �           2606    16781     tbl_provincia tbl_provincia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_provincia
    ADD CONSTRAINT tbl_provincia_pkey PRIMARY KEY (id_provincia);
 J   ALTER TABLE ONLY public.tbl_provincia DROP CONSTRAINT tbl_provincia_pkey;
       public            postgres    false    223            �           2606    16774     tbl_region tbl_region_nombre_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_region
    ADD CONSTRAINT tbl_region_nombre_key UNIQUE (nombre);
 J   ALTER TABLE ONLY public.tbl_region DROP CONSTRAINT tbl_region_nombre_key;
       public            postgres    false    221            �           2606    16772    tbl_region tbl_region_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_region
    ADD CONSTRAINT tbl_region_pkey PRIMARY KEY (id_region);
 D   ALTER TABLE ONLY public.tbl_region DROP CONSTRAINT tbl_region_pkey;
       public            postgres    false    221            �           2606    16763 (   tbl_tipodocumento tbl_tipodocumento_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_tipodocumento
    ADD CONSTRAINT tbl_tipodocumento_pkey PRIMARY KEY (id_tipodoc);
 R   ALTER TABLE ONLY public.tbl_tipodocumento DROP CONSTRAINT tbl_tipodocumento_pkey;
       public            postgres    false    219            �           2606    16765 ,   tbl_tipodocumento tbl_tipodocumento_tipo_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_tipodocumento
    ADD CONSTRAINT tbl_tipodocumento_tipo_key UNIQUE (tipo);
 V   ALTER TABLE ONLY public.tbl_tipodocumento DROP CONSTRAINT tbl_tipodocumento_tipo_key;
       public            postgres    false    219            �           2606    16747 "   tbl_tipoplanta tbl_tipoplanta_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_tipoplanta
    ADD CONSTRAINT tbl_tipoplanta_pkey PRIMARY KEY (id_tipo);
 L   ALTER TABLE ONLY public.tbl_tipoplanta DROP CONSTRAINT tbl_tipoplanta_pkey;
       public            postgres    false    215            �           2606    16806    tbl_ventas tbl_ventas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_ventas
    ADD CONSTRAINT tbl_ventas_pkey PRIMARY KEY (id_ventas);
 D   ALTER TABLE ONLY public.tbl_ventas DROP CONSTRAINT tbl_ventas_pkey;
       public            postgres    false    229            �           2606    16835 "   tbl_clientes fk_clientes_comuna_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_clientes
    ADD CONSTRAINT fk_clientes_comuna_id FOREIGN KEY (id_comuna) REFERENCES public.tbl_comuna(id_comuna);
 L   ALTER TABLE ONLY public.tbl_clientes DROP CONSTRAINT fk_clientes_comuna_id;
       public          postgres    false    3243    225    227            �           2606    16830 )   tbl_clientes fk_clientes_tipodocumento_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_clientes
    ADD CONSTRAINT fk_clientes_tipodocumento_id FOREIGN KEY (id_tipodoc) REFERENCES public.tbl_tipodocumento(id_tipodoc);
 S   ALTER TABLE ONLY public.tbl_clientes DROP CONSTRAINT fk_clientes_tipodocumento_id;
       public          postgres    false    219    227    3229            �           2606    16825 !   tbl_comuna fk_comuna_provincia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_comuna
    ADD CONSTRAINT fk_comuna_provincia_id FOREIGN KEY (id_provincia) REFERENCES public.tbl_provincia(id_provincia);
 K   ALTER TABLE ONLY public.tbl_comuna DROP CONSTRAINT fk_comuna_provincia_id;
       public          postgres    false    223    225    3239            �           2606    16850 -   tbl_detalleventas fk_detalleventas_plantas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_detalleventas
    ADD CONSTRAINT fk_detalleventas_plantas_id FOREIGN KEY (id_plantas) REFERENCES public.tbl_plantas(id_plantas);
 W   ALTER TABLE ONLY public.tbl_detalleventas DROP CONSTRAINT fk_detalleventas_plantas_id;
       public          postgres    false    3227    231    217            �           2606    16845 +   tbl_detalleventas fk_detalleventas_venta_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_detalleventas
    ADD CONSTRAINT fk_detalleventas_venta_id FOREIGN KEY (id_ventas) REFERENCES public.tbl_ventas(id_ventas);
 U   ALTER TABLE ONLY public.tbl_detalleventas DROP CONSTRAINT fk_detalleventas_venta_id;
       public          postgres    false    229    3247    231            �           2606    16815    tbl_plantas fk_plantas_id_tipo    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_plantas
    ADD CONSTRAINT fk_plantas_id_tipo FOREIGN KEY (id_tipo) REFERENCES public.tbl_tipoplanta(id_tipo);
 H   ALTER TABLE ONLY public.tbl_plantas DROP CONSTRAINT fk_plantas_id_tipo;
       public          postgres    false    3223    215    217            �           2606    16820 $   tbl_provincia fk_provincia_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_provincia
    ADD CONSTRAINT fk_provincia_region_id FOREIGN KEY (id_region) REFERENCES public.tbl_region(id_region);
 N   ALTER TABLE ONLY public.tbl_provincia DROP CONSTRAINT fk_provincia_region_id;
       public          postgres    false    3235    223    221            �           2606    16840     tbl_ventas fk_ventas_clientes_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_ventas
    ADD CONSTRAINT fk_ventas_clientes_id FOREIGN KEY (id_clientes) REFERENCES public.tbl_clientes(id_clientes);
 J   ALTER TABLE ONLY public.tbl_ventas DROP CONSTRAINT fk_ventas_clientes_id;
       public          postgres    false    3245    227    229            U   8  x�M��N1Eמ��L�y8��BB-T�e�N#&R�t*ѯ���e�����h{DcPAL�~�6P�7��d��l}IZ)e-U�  *�ࡈ0�S�$�0��k�?9�S�:F�,ǾW�M��-��N6<��{����1��X�E�͠���E�h`�]�i𤋮�t����[�5_�������f�`�?������b��D۶@�9gw�5�����66��w�bt�q�����e8&��'o�`�q.Bk�GQ��\�Z��Xw�K p�"�ϋ�A�MS��Aw�u��O{�Ix�9㎷��ݸ}_UU���~�      S   �   x��=�0�g�="�g�:�H�`d�BD#�q�6��\g��d��)P��	s��
�͎�0o��Foޱ�d�G0XA�;8y_����$�-�-l�L=��%l��3y�9�H�P��$U*8���0�r����W�|PK��e�Jh�nM�^�T�B?��d)>O��S�:�      Y   r   x�u��C1�3���d��?G)M�/UUr{���I�	�F��\��P�����B�$��j�G�m��c�i�'=;qV/�����M~k�PZ��)V��)�{�?Qc_}>T���%�      K   j   x��A
�0@���a$�&Qׂ;���j�@c�5�w��<���[�\��D�=!!nB��g����"��-��̞��h9�袯�ᘍ�,g����ʦ���Џ�s�x��      Q   �   x��;�0��N�	�>e!�DA��feAb�ĉ��3�b,�L��F���;hA�#�..P+�\���Ԓ�⍔;��J]}�=�6!B�zX�f&�RJ�c�"qv�G���1;���^�)�7ϣ���R�>b�>��� �/�      O   P   x�3�t,�LNT�TH,��KL�/I�2�I,J,HL>��˘�1�$?-1=�(c��X������e��_X��������� xW      M   :   x�3�t���2��\Ɯ�ŉ�E%�\&��%E�\����y
)�ɥ��y%�\1z\\\ ^�      I   ;   x�3�L�(I-��/�2��̃2�9��s���L8sJ�R2�R�K�L���<?F��� ֆ�      W   D   x�M��	�0�����-'�2��Ƥ4=t ȕ�2L�X�ؑ/c��0y}\cq��&�)�
�F�Һ�     