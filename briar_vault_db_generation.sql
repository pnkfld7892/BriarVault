-- ** Database generated with pgModeler (PostgreSQL Database Modeler).
-- ** pgModeler version: 2.0.0-beta1
-- ** PostgreSQL version: 18.0
-- ** Project Site: pgmodeler.io
-- ** Model Author: ---

-- ** Database creation must be performed outside a multi lined SQL file. 
-- ** These commands were put in this file only as a convenience.

-- object: "briar-vault" | type: DATABASE --
-- DROP DATABASE IF EXISTS "briar-vault";
--CREATE DATABASE "briar-vault";
-- ddl-end --


-- object: bv | type: SCHEMA --
-- DROP SCHEMA IF EXISTS bv CASCADE;
CREATE SCHEMA bv;
-- ddl-end --
ALTER SCHEMA bv OWNER TO postgres;
-- ddl-end --

SET search_path TO pg_catalog,public,bv;
-- ddl-end --

-- object: public.brand | type: TABLE --
-- DROP TABLE IF EXISTS public.brand CASCADE;
CREATE TABLE public.brand (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	brand_name text NOT NULL,
	brand_desc smallint,
	CONSTRAINT brand_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.brand OWNER TO postgres;
-- ddl-end --

-- object: public.pipe | type: TABLE --
-- DROP TABLE IF EXISTS public.pipe CASCADE;
CREATE TABLE public.pipe (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	pipe_name text NOT NULL,
	pipe_desc text,
	brand_id bigint,
	pipe_material_id bigint NOT NULL,
	stem_material_id bigint,
	CONSTRAINT pipe_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.pipe OWNER TO postgres;
-- ddl-end --

-- object: brand_fk | type: CONSTRAINT --
-- ALTER TABLE public.pipe DROP CONSTRAINT IF EXISTS brand_fk CASCADE;
ALTER TABLE public.pipe ADD CONSTRAINT brand_fk FOREIGN KEY (brand_id)
REFERENCES public.brand (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.tobacco | type: TABLE --
-- DROP TABLE IF EXISTS public.tobacco CASCADE;
CREATE TABLE public.tobacco (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	tobacco_name text NOT NULL,
	tobacco_desc text,
	brand_id bigint,
	CONSTRAINT tobacco_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.tobacco OWNER TO postgres;
-- ddl-end --

-- object: brand_fk | type: CONSTRAINT --
-- ALTER TABLE public.tobacco DROP CONSTRAINT IF EXISTS brand_fk CASCADE;
ALTER TABLE public.tobacco ADD CONSTRAINT brand_fk FOREIGN KEY (brand_id)
REFERENCES public.brand (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.tobacco_component | type: TABLE --
-- DROP TABLE IF EXISTS public.tobacco_component CASCADE;
CREATE TABLE public.tobacco_component (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	component_name text NOT NULL,
	component_desc smallint,
	CONSTRAINT tobacco_component_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.tobacco_component OWNER TO postgres;
-- ddl-end --

-- object: public.tobacco_x_tobacco_component | type: TABLE --
-- DROP TABLE IF EXISTS public.tobacco_x_tobacco_component CASCADE;
CREATE TABLE public.tobacco_x_tobacco_component (
	id_tobacco bigint NOT NULL,
	id_tobacco_component bigint NOT NULL,
	CONSTRAINT tobacco_x_tobacco_component_pk PRIMARY KEY (id_tobacco, id_tobacco_component)
);
-- ddl-end --

-- object: tobacco_fk | type: CONSTRAINT --
-- ALTER TABLE public.tobacco_x_tobacco_component DROP CONSTRAINT IF EXISTS tobacco_fk CASCADE;
ALTER TABLE public.tobacco_x_tobacco_component ADD CONSTRAINT tobacco_fk FOREIGN KEY (id_tobacco)
REFERENCES public.tobacco (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: tobacco_component_fk | type: CONSTRAINT --
-- ALTER TABLE public.tobacco_x_tobacco_component DROP CONSTRAINT IF EXISTS tobacco_component_fk CASCADE;
ALTER TABLE public.tobacco_x_tobacco_component ADD CONSTRAINT tobacco_component_fk FOREIGN KEY (id_tobacco_component)
REFERENCES public.tobacco_component (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public."user" | type: TABLE --
-- DROP TABLE IF EXISTS public."user" CASCADE;
CREATE TABLE public."user" (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	username smallint,
	CONSTRAINT user_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public."user" OWNER TO postgres;
-- ddl-end --

-- object: public.cellar | type: TABLE --
-- DROP TABLE IF EXISTS public.cellar CASCADE;
CREATE TABLE public.cellar (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	cellar_name smallint,
	CONSTRAINT cellar_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.cellar OWNER TO postgres;
-- ddl-end --

-- object: public.cellar_x_tobacco | type: TABLE --
-- DROP TABLE IF EXISTS public.cellar_x_tobacco CASCADE;
CREATE TABLE public.cellar_x_tobacco (
	id_cellar bigint NOT NULL,
	id_tobacco bigint NOT NULL,
	CONSTRAINT cellar_x_tobacco_pk PRIMARY KEY (id_cellar, id_tobacco)
);
-- ddl-end --

-- object: cellar_fk | type: CONSTRAINT --
-- ALTER TABLE public.cellar_x_tobacco DROP CONSTRAINT IF EXISTS cellar_fk CASCADE;
ALTER TABLE public.cellar_x_tobacco ADD CONSTRAINT cellar_fk FOREIGN KEY (id_cellar)
REFERENCES public.cellar (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: tobacco_fk | type: CONSTRAINT --
-- ALTER TABLE public.cellar_x_tobacco DROP CONSTRAINT IF EXISTS tobacco_fk CASCADE;
ALTER TABLE public.cellar_x_tobacco ADD CONSTRAINT tobacco_fk FOREIGN KEY (id_tobacco)
REFERENCES public.tobacco (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public.cellar_x_pipe | type: TABLE --
-- DROP TABLE IF EXISTS public.cellar_x_pipe CASCADE;
CREATE TABLE public.cellar_x_pipe (
	id_pipe bigint NOT NULL,
	id_cellar bigint NOT NULL,
	CONSTRAINT cellar_x_pipe_pk PRIMARY KEY (id_pipe, id_cellar)
);
-- ddl-end --

-- object: pipe_fk | type: CONSTRAINT --
-- ALTER TABLE public.cellar_x_pipe DROP CONSTRAINT IF EXISTS pipe_fk CASCADE;
ALTER TABLE public.cellar_x_pipe ADD CONSTRAINT pipe_fk FOREIGN KEY (id_pipe)
REFERENCES public.pipe (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: cellar_fk | type: CONSTRAINT --
-- ALTER TABLE public.cellar_x_pipe DROP CONSTRAINT IF EXISTS cellar_fk CASCADE;
ALTER TABLE public.cellar_x_pipe ADD CONSTRAINT cellar_fk FOREIGN KEY (id_cellar)
REFERENCES public.cellar (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public.user_x_cellar | type: TABLE --
-- DROP TABLE IF EXISTS public.user_x_cellar CASCADE;
CREATE TABLE public.user_x_cellar (
	id_user bigint NOT NULL,
	id_cellar bigint NOT NULL,
	CONSTRAINT user_x_cellar_pk PRIMARY KEY (id_user, id_cellar)
);
-- ddl-end --

-- object: user_fk | type: CONSTRAINT --
-- ALTER TABLE public.user_x_cellar DROP CONSTRAINT IF EXISTS user_fk CASCADE;
ALTER TABLE public.user_x_cellar ADD CONSTRAINT user_fk FOREIGN KEY (id_user)
REFERENCES public."user" (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: cellar_fk | type: CONSTRAINT --
-- ALTER TABLE public.user_x_cellar DROP CONSTRAINT IF EXISTS cellar_fk CASCADE;
ALTER TABLE public.user_x_cellar ADD CONSTRAINT cellar_fk FOREIGN KEY (id_cellar)
REFERENCES public.cellar (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public.material | type: TABLE --
-- DROP TABLE IF EXISTS public.material CASCADE;
CREATE TABLE public.material (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ,
	material_name text NOT NULL,
	material_desc text,
	CONSTRAINT material_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.material OWNER TO postgres;
-- ddl-end --

-- object: pipe_material_fk | type: CONSTRAINT --
-- ALTER TABLE public.pipe DROP CONSTRAINT IF EXISTS pipe_material_fk CASCADE;
ALTER TABLE public.pipe ADD CONSTRAINT pipe_material_fk FOREIGN KEY (pipe_material_id)
REFERENCES public.material (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: stem_material_fk | type: CONSTRAINT --
-- ALTER TABLE public.pipe DROP CONSTRAINT IF EXISTS stem_material_fk CASCADE;
ALTER TABLE public.pipe ADD CONSTRAINT stem_material_fk FOREIGN KEY (stem_material_id)
REFERENCES public.material (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


