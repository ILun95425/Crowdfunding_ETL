CREATE TABLE "crowdfunding_db_schema"."Category" (
    category_id varchar NOT NULL,
    category varchar NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE "crowdfunding_db_schema"."Subcategory" (
    subcategory_id varchar NOT NULL,
    subcategory varchar NOT NULL,
    PRIMARY KEY (subcategory_id)
);

ALTER DATABASE "postgres" SET datestyle TO "ISO, YMD";
CREATE TABLE "crowdfunding_db_schema"."Champaign" (
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name varchar NOT NULL,
    description varchar NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar NOT NULL,
    backers_count integer NOT NULL,
    country varchar NOT NULL,
    currency varchar NOT NULL,
    launch_date date NOT NULL,
    end_date date NOT NULL,
    subcategory_id varchar NOT NULL,
    PRIMARY KEY (contact_id),
    FOREIGN KEY (subcategory_id) REFERENCES "crowdfunding_db_schema"."Subcategory" (subcategory_id)
);

CREATE TABLE "crowdfunding_db_schema"."Contacts" (
    contact_id integer NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    email varchar NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES "crowdfunding_db_schema"."Champaign" (contact_id)
);