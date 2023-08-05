--
-- Class Driver as table drivers
--

CREATE TABLE "drivers" (
  "id" serial,
  "userId" integer NOT NULL,
  "licenseNumber" integer NOT NULL,
  "licenseExpiryDate" timestamp without time zone NOT NULL,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "drivers"
  ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- Class Role as table roles
--

CREATE TABLE "roles" (
  "id" serial,
  "name" text NOT NULL,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "roles"
  ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Class TruckBodyType as table truck_body_types
--

CREATE TABLE "truck_body_types" (
  "id" serial,
  "bodyName" text NOT NULL,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "truck_body_types"
  ADD CONSTRAINT truck_body_types_pkey PRIMARY KEY (id);


--
-- Class TruckCargoType as table truck_cargo_types
--

CREATE TABLE "truck_cargo_types" (
  "id" serial,
  "cargoTypeName" text NOT NULL,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "truck_cargo_types"
  ADD CONSTRAINT truck_cargo_types_pkey PRIMARY KEY (id);


--
-- Class TruckModel as table truck_models
--

CREATE TABLE "truck_models" (
  "id" serial,
  "brandName" text NOT NULL,
  "modelName" text NOT NULL,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "truck_models"
  ADD CONSTRAINT truck_models_pkey PRIMARY KEY (id);


--
-- Class Truck as table trucks
--

CREATE TABLE "trucks" (
  "id" serial,
  "truckName" text NOT NULL,
  "truckModelId" integer NOT NULL,
  "registrationNumber" text NOT NULL,
  "registrationDate" timestamp without time zone NOT NULL,
  "bodyTypeId" integer,
  "cargoTypeId" integer,
  "maxLoadingCapacity" integer,
  "truckCc" integer NOT NULL,
  "defaultTruckLocation" text,
  "fuelConsumptionPerKm" integer,
  "status" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "trucks"
  ADD CONSTRAINT trucks_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "trucks"
  ADD CONSTRAINT trucks_fk_0
    FOREIGN KEY("truckModelId")
      REFERENCES truck_models(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "trucks"
  ADD CONSTRAINT trucks_fk_1
    FOREIGN KEY("bodyTypeId")
      REFERENCES truck_body_types(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "trucks"
  ADD CONSTRAINT trucks_fk_2
    FOREIGN KEY("cargoTypeId")
      REFERENCES truck_cargo_types(id)
        ON DELETE CASCADE;

--
-- Class TruckDriver as table truck_drivers
--

CREATE TABLE "truck_drivers" (
  "id" serial,
  "truckId" integer NOT NULL,
  "driverId" integer NOT NULL,
  "truckStatus" text NOT NULL,
  "modifiedBy" integer NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "truck_drivers"
  ADD CONSTRAINT truck_drivers_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "truck_drivers"
  ADD CONSTRAINT truck_drivers_fk_0
    FOREIGN KEY("truckId")
      REFERENCES trucks(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "truck_drivers"
  ADD CONSTRAINT truck_drivers_fk_1
    FOREIGN KEY("driverId")
      REFERENCES drivers(id)
        ON DELETE CASCADE;

--
-- Class User as table users
--

CREATE TABLE "users" (
  "id" serial,
  "userId" integer NOT NULL,
  "firstName" text NOT NULL,
  "lastName" text NOT NULL,
  "nidaNumber" text NOT NULL,
  "dateOfBirth" timestamp without time zone NOT NULL,
  "phone" integer NOT NULL,
  "roleId" integer NOT NULL,
  "gender" text NOT NULL,
  "status" text NOT NULL,
  "createdDate" timestamp without time zone NOT NULL,
  "modifiedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_fk_0
    FOREIGN KEY("roleId")
      REFERENCES roles(id)
        ON DELETE CASCADE;

