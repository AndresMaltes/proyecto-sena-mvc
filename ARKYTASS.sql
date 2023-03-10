PGDMP         !                {            arkytass    15.2    15.2 ;    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ]           1262    16397    arkytass    DATABASE     ~   CREATE DATABASE arkytass WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE arkytass;
                postgres    false            ?            1259    16639    actividades    TABLE     6  CREATE TABLE public.actividades (
    idactividad integer NOT NULL,
    nombreactividad character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    fechapublicacion date NOT NULL,
    fechaentrega date NOT NULL,
    estado character varying(15) NOT NULL,
    act_idproyecto integer
);
    DROP TABLE public.actividades;
       public         heap    postgres    false            ?            1259    16674    archivosolucion    TABLE     ?   CREATE TABLE public.archivosolucion (
    idarchivo integer NOT NULL,
    fechaentrega date NOT NULL,
    urlarchivo character varying(40) NOT NULL,
    estado character varying(15) NOT NULL,
    arc_idusuario integer,
    arc_idactividad integer
);
 #   DROP TABLE public.archivosolucion;
       public         heap    postgres    false            ?            1259    16649 
   asignarrol    TABLE     ?   CREATE TABLE public.asignarrol (
    idasignarrol integer NOT NULL,
    asi_idusuario integer,
    asi_idrol integer,
    asi_idactividad integer,
    asi_idgrupo integer
);
    DROP TABLE public.asignarrol;
       public         heap    postgres    false            ?            1259    16566 
   asistencia    TABLE       CREATE TABLE public.asistencia (
    idasistencia integer NOT NULL,
    fechaingreso date NOT NULL,
    horaingresa time without time zone NOT NULL,
    fechasalida date NOT NULL,
    horasalida time without time zone NOT NULL,
    asi_idusuario integer
);
    DROP TABLE public.asistencia;
       public         heap    postgres    false            ?            1259    16581    catalogo    TABLE     ?   CREATE TABLE public.catalogo (
    idcatalogo integer NOT NULL,
    nombreparticipantes character varying(150) NOT NULL,
    empresacontratante character varying(50) NOT NULL,
    area character varying(30) NOT NULL
);
    DROP TABLE public.catalogo;
       public         heap    postgres    false            ?            1259    16626    encargadoproyecto    TABLE     ?   CREATE TABLE public.encargadoproyecto (
    fechainicio date NOT NULL,
    fechafinal date NOT NULL,
    observaciones character varying(100) NOT NULL,
    enpr_idproyecto integer,
    enpr_idusuario integer
);
 %   DROP TABLE public.encargadoproyecto;
       public         heap    postgres    false            ?            1259    16596    grupotrabajo    TABLE     ?   CREATE TABLE public.grupotrabajo (
    idgrupo integer NOT NULL,
    codigogrupo character varying(40) NOT NULL,
    fechainicio date NOT NULL,
    fechadesactivacion date NOT NULL
);
     DROP TABLE public.grupotrabajo;
       public         heap    postgres    false            ?            1259    16586    imagen    TABLE     ?   CREATE TABLE public.imagen (
    idimagen integer NOT NULL,
    urlimagen character varying(50) NOT NULL,
    img_idcatalogo integer
);
    DROP TABLE public.imagen;
       public         heap    postgres    false            ?            1259    16606    proyecto    TABLE     ?  CREATE TABLE public.proyecto (
    idproyecto integer NOT NULL,
    nombreproyecto character varying(40) NOT NULL,
    fecharealizacion date NOT NULL,
    codigoproyecto character varying(30) NOT NULL,
    fechaentrega date NOT NULL,
    estado character varying(15) NOT NULL,
    descripcion character varying(250),
    pro_idcatalogo integer,
    pro_idgrupo integer,
    pro_idtipoproyecto integer
);
    DROP TABLE public.proyecto;
       public         heap    postgres    false            ?            1259    16576    rol    TABLE     f   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    nombrerol character varying(25) NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            ?            1259    16689    seguimientoproyecto    TABLE     ?   CREATE TABLE public.seguimientoproyecto (
    idseguimiento integer NOT NULL,
    seg_idusuario integer,
    seg_idgrupo integer,
    seg_idactividades integer
);
 '   DROP TABLE public.seguimientoproyecto;
       public         heap    postgres    false            ?            1259    16601    tipoproyecto    TABLE     ?   CREATE TABLE public.tipoproyecto (
    idtipoproyecto integer NOT NULL,
    nombretipoproyecto character varying(30) NOT NULL
);
     DROP TABLE public.tipoproyecto;
       public         heap    postgres    false            ?            1259    16561    usuario    TABLE     -  CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nombre character varying(40),
    apellido character varying(40),
    email character varying(40),
    numerodocumento integer,
    password character varying(250),
    estado character varying(10),
    imagen character varying(50)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            T          0    16639    actividades 
   TABLE DATA           ?   COPY public.actividades (idactividad, nombreactividad, descripcion, fechapublicacion, fechaentrega, estado, act_idproyecto) FROM stdin;
    public          postgres    false    223   PP       V          0    16674    archivosolucion 
   TABLE DATA           v   COPY public.archivosolucion (idarchivo, fechaentrega, urlarchivo, estado, arc_idusuario, arc_idactividad) FROM stdin;
    public          postgres    false    225   mP       U          0    16649 
   asignarrol 
   TABLE DATA           j   COPY public.asignarrol (idasignarrol, asi_idusuario, asi_idrol, asi_idactividad, asi_idgrupo) FROM stdin;
    public          postgres    false    224   ?P       L          0    16566 
   asistencia 
   TABLE DATA           u   COPY public.asistencia (idasistencia, fechaingreso, horaingresa, fechasalida, horasalida, asi_idusuario) FROM stdin;
    public          postgres    false    215   ?P       N          0    16581    catalogo 
   TABLE DATA           ]   COPY public.catalogo (idcatalogo, nombreparticipantes, empresacontratante, area) FROM stdin;
    public          postgres    false    217   ?P       S          0    16626    encargadoproyecto 
   TABLE DATA           t   COPY public.encargadoproyecto (fechainicio, fechafinal, observaciones, enpr_idproyecto, enpr_idusuario) FROM stdin;
    public          postgres    false    222   ?P       P          0    16596    grupotrabajo 
   TABLE DATA           ]   COPY public.grupotrabajo (idgrupo, codigogrupo, fechainicio, fechadesactivacion) FROM stdin;
    public          postgres    false    219   ?P       O          0    16586    imagen 
   TABLE DATA           E   COPY public.imagen (idimagen, urlimagen, img_idcatalogo) FROM stdin;
    public          postgres    false    218   Q       R          0    16606    proyecto 
   TABLE DATA           ?   COPY public.proyecto (idproyecto, nombreproyecto, fecharealizacion, codigoproyecto, fechaentrega, estado, descripcion, pro_idcatalogo, pro_idgrupo, pro_idtipoproyecto) FROM stdin;
    public          postgres    false    221   8Q       M          0    16576    rol 
   TABLE DATA           /   COPY public.rol (idrol, nombrerol) FROM stdin;
    public          postgres    false    216   UQ       W          0    16689    seguimientoproyecto 
   TABLE DATA           k   COPY public.seguimientoproyecto (idseguimiento, seg_idusuario, seg_idgrupo, seg_idactividades) FROM stdin;
    public          postgres    false    226   rQ       Q          0    16601    tipoproyecto 
   TABLE DATA           J   COPY public.tipoproyecto (idtipoproyecto, nombretipoproyecto) FROM stdin;
    public          postgres    false    220   ?Q       K          0    16561    usuario 
   TABLE DATA           p   COPY public.usuario (idusuario, nombre, apellido, email, numerodocumento, password, estado, imagen) FROM stdin;
    public          postgres    false    214   ?Q       ?           2606    16643    actividades actividades_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT actividades_pkey PRIMARY KEY (idactividad);
 F   ALTER TABLE ONLY public.actividades DROP CONSTRAINT actividades_pkey;
       public            postgres    false    223            ?           2606    16678 $   archivosolucion archivosolucion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.archivosolucion
    ADD CONSTRAINT archivosolucion_pkey PRIMARY KEY (idarchivo);
 N   ALTER TABLE ONLY public.archivosolucion DROP CONSTRAINT archivosolucion_pkey;
       public            postgres    false    225            ?           2606    16653    asignarrol asignarrol_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.asignarrol
    ADD CONSTRAINT asignarrol_pkey PRIMARY KEY (idasignarrol);
 D   ALTER TABLE ONLY public.asignarrol DROP CONSTRAINT asignarrol_pkey;
       public            postgres    false    224            ?           2606    16570    asistencia asistencia_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT asistencia_pkey PRIMARY KEY (idasistencia);
 D   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT asistencia_pkey;
       public            postgres    false    215            ?           2606    16585    catalogo catalogo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalogo
    ADD CONSTRAINT catalogo_pkey PRIMARY KEY (idcatalogo);
 @   ALTER TABLE ONLY public.catalogo DROP CONSTRAINT catalogo_pkey;
       public            postgres    false    217            ?           2606    16600    grupotrabajo grupotrabajo_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.grupotrabajo
    ADD CONSTRAINT grupotrabajo_pkey PRIMARY KEY (idgrupo);
 H   ALTER TABLE ONLY public.grupotrabajo DROP CONSTRAINT grupotrabajo_pkey;
       public            postgres    false    219            ?           2606    16590    imagen imagen_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (idimagen);
 <   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_pkey;
       public            postgres    false    218            ?           2606    16610    proyecto proyecto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (idproyecto);
 @   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pkey;
       public            postgres    false    221            ?           2606    16580    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (idrol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    216            ?           2606    16693 ,   seguimientoproyecto seguimientoproyecto_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.seguimientoproyecto
    ADD CONSTRAINT seguimientoproyecto_pkey PRIMARY KEY (idseguimiento);
 V   ALTER TABLE ONLY public.seguimientoproyecto DROP CONSTRAINT seguimientoproyecto_pkey;
       public            postgres    false    226            ?           2606    16605    tipoproyecto tipoproyecto_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipoproyecto
    ADD CONSTRAINT tipoproyecto_pkey PRIMARY KEY (idtipoproyecto);
 H   ALTER TABLE ONLY public.tipoproyecto DROP CONSTRAINT tipoproyecto_pkey;
       public            postgres    false    220            ?           2606    16565    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    214            ?           2606    16644 +   actividades actividades_act_idproyecto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT actividades_act_idproyecto_fkey FOREIGN KEY (act_idproyecto) REFERENCES public.proyecto(idproyecto);
 U   ALTER TABLE ONLY public.actividades DROP CONSTRAINT actividades_act_idproyecto_fkey;
       public          postgres    false    221    3235    223            ?           2606    16684 4   archivosolucion archivosolucion_arc_idactividad_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.archivosolucion
    ADD CONSTRAINT archivosolucion_arc_idactividad_fkey FOREIGN KEY (arc_idactividad) REFERENCES public.actividades(idactividad);
 ^   ALTER TABLE ONLY public.archivosolucion DROP CONSTRAINT archivosolucion_arc_idactividad_fkey;
       public          postgres    false    3237    223    225            ?           2606    16679 2   archivosolucion archivosolucion_arc_idusuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.archivosolucion
    ADD CONSTRAINT archivosolucion_arc_idusuario_fkey FOREIGN KEY (arc_idusuario) REFERENCES public.usuario(idusuario);
 \   ALTER TABLE ONLY public.archivosolucion DROP CONSTRAINT archivosolucion_arc_idusuario_fkey;
       public          postgres    false    3221    225    214            ?           2606    16664 *   asignarrol asignarrol_asi_idactividad_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignarrol
    ADD CONSTRAINT asignarrol_asi_idactividad_fkey FOREIGN KEY (asi_idactividad) REFERENCES public.actividades(idactividad);
 T   ALTER TABLE ONLY public.asignarrol DROP CONSTRAINT asignarrol_asi_idactividad_fkey;
       public          postgres    false    224    223    3237            ?           2606    16669 &   asignarrol asignarrol_asi_idgrupo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignarrol
    ADD CONSTRAINT asignarrol_asi_idgrupo_fkey FOREIGN KEY (asi_idgrupo) REFERENCES public.grupotrabajo(idgrupo);
 P   ALTER TABLE ONLY public.asignarrol DROP CONSTRAINT asignarrol_asi_idgrupo_fkey;
       public          postgres    false    219    3231    224            ?           2606    16659 $   asignarrol asignarrol_asi_idrol_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignarrol
    ADD CONSTRAINT asignarrol_asi_idrol_fkey FOREIGN KEY (asi_idrol) REFERENCES public.rol(idrol);
 N   ALTER TABLE ONLY public.asignarrol DROP CONSTRAINT asignarrol_asi_idrol_fkey;
       public          postgres    false    224    216    3225            ?           2606    16654 (   asignarrol asignarrol_asi_idusuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignarrol
    ADD CONSTRAINT asignarrol_asi_idusuario_fkey FOREIGN KEY (asi_idusuario) REFERENCES public.usuario(idusuario);
 R   ALTER TABLE ONLY public.asignarrol DROP CONSTRAINT asignarrol_asi_idusuario_fkey;
       public          postgres    false    224    3221    214            ?           2606    16571 (   asistencia asistencia_asi_idusuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT asistencia_asi_idusuario_fkey FOREIGN KEY (asi_idusuario) REFERENCES public.usuario(idusuario);
 R   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT asistencia_asi_idusuario_fkey;
       public          postgres    false    3221    215    214            ?           2606    16629 8   encargadoproyecto encargadoproyecto_enpr_idproyecto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.encargadoproyecto
    ADD CONSTRAINT encargadoproyecto_enpr_idproyecto_fkey FOREIGN KEY (enpr_idproyecto) REFERENCES public.proyecto(idproyecto);
 b   ALTER TABLE ONLY public.encargadoproyecto DROP CONSTRAINT encargadoproyecto_enpr_idproyecto_fkey;
       public          postgres    false    221    222    3235            ?           2606    16634 7   encargadoproyecto encargadoproyecto_enpr_idusuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.encargadoproyecto
    ADD CONSTRAINT encargadoproyecto_enpr_idusuario_fkey FOREIGN KEY (enpr_idusuario) REFERENCES public.usuario(idusuario);
 a   ALTER TABLE ONLY public.encargadoproyecto DROP CONSTRAINT encargadoproyecto_enpr_idusuario_fkey;
       public          postgres    false    214    3221    222            ?           2606    16591 !   imagen imagen_img_idcatalogo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.imagen
    ADD CONSTRAINT imagen_img_idcatalogo_fkey FOREIGN KEY (img_idcatalogo) REFERENCES public.catalogo(idcatalogo);
 K   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_img_idcatalogo_fkey;
       public          postgres    false    3227    218    217            ?           2606    16611 %   proyecto proyecto_pro_idcatalogo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pro_idcatalogo_fkey FOREIGN KEY (pro_idcatalogo) REFERENCES public.catalogo(idcatalogo);
 O   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pro_idcatalogo_fkey;
       public          postgres    false    221    217    3227            ?           2606    16616 "   proyecto proyecto_pro_idgrupo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pro_idgrupo_fkey FOREIGN KEY (pro_idgrupo) REFERENCES public.grupotrabajo(idgrupo);
 L   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pro_idgrupo_fkey;
       public          postgres    false    221    219    3231            ?           2606    16621 )   proyecto proyecto_pro_idtipoproyecto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pro_idtipoproyecto_fkey FOREIGN KEY (pro_idtipoproyecto) REFERENCES public.tipoproyecto(idtipoproyecto);
 S   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pro_idtipoproyecto_fkey;
       public          postgres    false    3233    220    221            ?           2606    16704 >   seguimientoproyecto seguimientoproyecto_seg_idactividades_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seguimientoproyecto
    ADD CONSTRAINT seguimientoproyecto_seg_idactividades_fkey FOREIGN KEY (seg_idactividades) REFERENCES public.actividades(idactividad);
 h   ALTER TABLE ONLY public.seguimientoproyecto DROP CONSTRAINT seguimientoproyecto_seg_idactividades_fkey;
       public          postgres    false    226    3237    223            ?           2606    16699 8   seguimientoproyecto seguimientoproyecto_seg_idgrupo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seguimientoproyecto
    ADD CONSTRAINT seguimientoproyecto_seg_idgrupo_fkey FOREIGN KEY (seg_idgrupo) REFERENCES public.grupotrabajo(idgrupo);
 b   ALTER TABLE ONLY public.seguimientoproyecto DROP CONSTRAINT seguimientoproyecto_seg_idgrupo_fkey;
       public          postgres    false    226    219    3231            ?           2606    16694 :   seguimientoproyecto seguimientoproyecto_seg_idusuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seguimientoproyecto
    ADD CONSTRAINT seguimientoproyecto_seg_idusuario_fkey FOREIGN KEY (seg_idusuario) REFERENCES public.usuario(idusuario);
 d   ALTER TABLE ONLY public.seguimientoproyecto DROP CONSTRAINT seguimientoproyecto_seg_idusuario_fkey;
       public          postgres    false    214    226    3221            T      x?????? ? ?      V      x?????? ? ?      U      x?????? ? ?      L      x?????? ? ?      N      x?????? ? ?      S      x?????? ? ?      P      x?????? ? ?      O      x?????? ? ?      R      x?????? ? ?      M      x?????? ? ?      W      x?????? ? ?      Q      x?????? ? ?      K      x?????? ? ?     