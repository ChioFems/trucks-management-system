-- start of serverpod generated authentication tables 
--
-- Class EmailAuth as table serverpod_email_auth
--
CREATE TABLE "serverpod_email_auth" (
    "id" serial,
    "userId" integer NOT NULL,
    -- "phone" text,
    "email" text NOT NULL,
    "hash" text NOT NULL
);
ALTER TABLE ONLY "serverpod_email_auth"
ADD CONSTRAINT serverpod_email_auth_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX serverpod_email_auth_email ON "serverpod_email_auth" USING btree ("email");
--
-- Class EmailCreateAccountRequest as table serverpod_email_create_request
--
CREATE TABLE "serverpod_email_create_request" (
    "id" serial,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    -- "phone" text,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);
ALTER TABLE ONLY "serverpod_email_create_request"
ADD CONSTRAINT serverpod_email_create_request_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX serverpod_email_auth_create_account_request_idx ON "serverpod_email_create_request" USING btree ("email");
--
-- Class EmailFailedSignIn as table serverpod_email_failed_sign_in
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" serial,
    "email" text NOT NULL,
    -- "phone" text,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);
ALTER TABLE ONLY "serverpod_email_failed_sign_in"
ADD CONSTRAINT serverpod_email_failed_sign_in_pkey PRIMARY KEY (id);
CREATE INDEX serverpod_email_failed_sign_in_email_idx ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX serverpod_email_failed_sign_in_time_idx ON "serverpod_email_failed_sign_in" USING btree ("time");
--
-- Class EmailReset as table serverpod_email_reset
--
CREATE TABLE "serverpod_email_reset" (
    "id" serial,
    "userId" integer NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);
ALTER TABLE ONLY "serverpod_email_reset"
ADD CONSTRAINT serverpod_email_reset_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX serverpod_email_reset_verification_idx ON "serverpod_email_reset" USING btree ("verificationCode");
--
-- Class GoogleRefreshToken as table serverpod_google_refresh_token
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" serial,
    "userId" integer NOT NULL,
    "refreshToken" text NOT NULL
);
ALTER TABLE ONLY "serverpod_google_refresh_token"
ADD CONSTRAINT serverpod_google_refresh_token_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX serverpod_google_refresh_token_userId_idx ON "serverpod_google_refresh_token" USING btree ("userId");
--
-- Class UserImage as table serverpod_user_image
--
CREATE TABLE "serverpod_user_image" (
    "id" serial,
    "userId" integer NOT NULL,
    "version" integer NOT NULL,
    "url" text NOT NULL
);
ALTER TABLE ONLY "serverpod_user_image"
ADD CONSTRAINT serverpod_user_image_pkey PRIMARY KEY (id);
CREATE INDEX serverpod_user_image_user_id ON "serverpod_user_image" USING btree ("userId", "version");
--
-- Class UserInfo as table serverpod_user_info
--
CREATE TABLE "serverpod_user_info" (
    "id" serial,
    "userIdentifier" text NOT NULL,
    "userName" text,
    -- "firstName" varchar(255) NOT NULL,
    -- "lastName" varchar(255) NOT NULL,
    "email" text UNIQUE,
    -- "nidaNumber" integer,
    -- "dateOfBirth" date,
    -- "phone" varchar(255) UNIQUE NOT NULL,
    -- "email" varchar(255),
    -- "roleId" integer,
    -- "gender" varchar(255),
    -- "status" varchar(255) default 'active',
    "created" timestamp without time zone NOT NULL,
    "modified" timestamp without time zone,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);
ALTER TABLE ONLY "serverpod_user_info"
ADD CONSTRAINT serverpod_user_info_pkey PRIMARY KEY (id);
CREATE UNIQUE INDEX serverpod_user_info_user_identifier ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX serverpod_user_info_email ON "serverpod_user_info" USING btree ("email");
-- end of serverpod generated authentication tables --
--
-- --
-- -- Class TruckModel as table truck_models
-- INSERT INTO truck_models (
--     "brandName",
--     "modelName",
--     "modifiedBy",
--     "createdDate"
--   )
-- VALUES (
--     'Scania',
--     'R440',
--     1,
--     '2023/8/2'
--   );
-- --
-- CREATE TABLE "truck_models" (
--   "id" serial,
--   "brandName" varchar(255) NOT NULL,
--   "modelName" varchar(255) NOT NULL,
--   "status" varchar(255) default 'Active',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "truck_models"
--   ADD CONSTRAINT truck_models_pkey PRIMARY KEY (id);
-- --
-- -- Class TruckBodyType as table truck_body_types
-- --
-- CREATE TABLE "truck_body_types" (
--   "id" serial,
--   "bodyName" varchar(255) NOT NULL,
--   "status" varchar(255) default 'Active',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "truck_body_types"
--   ADD CONSTRAINT truck_body_types_pkey PRIMARY KEY (id);
-- --
-- -- Class TruckCargoType as table truck_cargo_types
-- --
-- CREATE TABLE "truck_cargo_types" (
--   "id" serial,
--   "cargoTypeName" varchar(255) NOT NULL,
--   "status" varchar(255) default 'Active',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "truck_cargo_types"
--   ADD CONSTRAINT truck_cargo_types_pkey PRIMARY KEY (id);
-- --
-- -- Class Driver as table drivers
-- --
-- CREATE TABLE "drivers" (
--   "id" serial,
--   "userId" integer NOT NULL,
--   "licenseNumber" integer NOT NULL,
--   "licenseExpiryDate" timestamp without time zone NOT NULL,
--   "status" varchar(255) default 'Active',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "drivers"
--   ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);
-- --
-- -- Class Truck as table trucks
-- --
-- CREATE TABLE "trucks" (
--   "id" serial,
--   "truckName" varchar(255) NOT NULL,
--   "truckModelId" integer NOT NULL,
--   "registrationNumber" varchar(255) NOT NULL,
--   "registrationDate" timestamp without time zone NOT NULL,
--   "bodyTypeId" integer,
--   "cargoTypeId" integer,
--   "maxLoadingCapacity" integer,
--   "truckCc" integer NOT NULL,
--   "defaultTruckLocation" text,
--   "fuelConsumptionPerKm" integer,
--   "status" varchar(255) default 'Active',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "trucks"
--   ADD CONSTRAINT trucks_pkey PRIMARY KEY (id);
-- ALTER TABLE ONLY "trucks"
--   ADD CONSTRAINT trucks_fk_0
--     FOREIGN KEY("truckModelId")
--       REFERENCES truck_models(id)
--         ON DELETE CASCADE;
-- ALTER TABLE ONLY "trucks"
--   ADD CONSTRAINT trucks_fk_1
--     FOREIGN KEY("bodyTypeId")
--       REFERENCES truck_body_types(id)
--         ON DELETE CASCADE;
-- ALTER TABLE ONLY "trucks"
--   ADD CONSTRAINT trucks_fk_2
--     FOREIGN KEY("cargoTypeId")
--       REFERENCES truck_cargo_types(id)
--         ON DELETE CASCADE;
-- --
-- -- Class TruckDriver as table truck_drivers
-- --
-- CREATE TABLE "truck_drivers" (
--   "id" serial,
--   "truckId" integer NOT NULL,
--   "driverId" integer NOT NULL,
--   "truckStatus" varchar(255) default 'Free',
--   "modifiedBy" integer NOT NULL,
--   "createdDate" timestamp without time zone NOT NULL,
--   "modifiedDate" timestamp without time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "truck_drivers"
--   ADD CONSTRAINT truck_drivers_pkey PRIMARY KEY (id);
-- ALTER TABLE ONLY "truck_drivers"
--   ADD CONSTRAINT truck_drivers_fk_0
--     FOREIGN KEY("truckId")
--       REFERENCES trucks(id)
--         ON DELETE CASCADE;
-- ALTER TABLE ONLY "truck_drivers"
--   ADD CONSTRAINT truck_drivers_fk_1
--     FOREIGN KEY("driverId")
--       REFERENCES drivers(id)
--         ON DELETE CASCADE;
--
-- -- Class User as table users
--
-- INSERT INTO users (
--     "firstName", "lastName", "nidaNumber", "dateOfBirth", "mobileNumber", "roleId"
--   )
-- VALUES (
--     'Joseph', 'Morghan', '20001212345534', '2000/12/23',  0755232323, 1
--   );
-- 
-- DROP TABLE "users"
--
-- CREATE TABLE "users" (
--   "id" serial,
--   "firstName" varchar(255) NOT NULL,
--   "lastName" varchar(255) NOT NULL,
--   "nidaNumber" varchar(255) UNIQUE NOT NULL,
--   "dateOfBirth" date NOT NULL,
--   "mobileNumber" integer UNIQUE NOT NULL,
--   "email" varchar(255),
--   "roleId" integer NOT NULL,
--   "gender" varchar(15) NOT NULL default 'male',
--   "image" text,
--   "status" varchar(255) default 'active',
--   "hasAccount" boolean NOT NULL default 'false',
--   "password" text,
--   "createdDate" timestamp with time zone NOT NULL default now(),
--   "modifiedDate" timestamp with time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "users"
--   ADD CONSTRAINT users_pkey PRIMARY KEY (id);
-- ALTER TABLE ONLY "users"
--   ADD CONSTRAINT users_fk_0
--     FOREIGN KEY("roleId")
--       REFERENCES roles(id)
--         ON DELETE CASCADE;
--
-- Enable password encryption extension
-- CREATE EXTENSION pgcrypto;
--
-- Class Role as table roles
-- 
-- INSERT INTO roles (name)
-- VALUES ('Admin');
-- INSERT INTO roles (name)
-- VALUES ('Manager');
-- INSERT INTO roles (name)
-- VALUES ('Driver');
-- INSERT INTO roles (name)
-- VALUES ('Assistant Driver');
--
-- CREATE TABLE "roles" (
--   "id" serial,
--   "name" varchar(255) unique NOT NULL,
--   "status" varchar(255) default 'active',
--   "createdDate" timestamp with time zone NOT NULL default now()
-- );
-- ALTER TABLE ONLY "roles"
-- ADD CONSTRAINT roles_pkey PRIMARY KEY (id);