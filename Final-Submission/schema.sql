-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
​
​
CREATE TABLE "nyc_abnb_listings" (
    "listing_id" VARCHAR   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "host_id" VARCHAR   NOT NULL,
    "host_since" DATE   NOT NULL,
    "host_location" VARCHAR   NOT NULL,
    "host_response_time" VARCHAR   NOT NULL,
    "host_response_rate" VARCHAR   NOT NULL,
    "host_acceptance_rate" VARCHAR   NOT NULL,
    "host_is_superhost" VARCHAR   NOT NULL,
    "host_total_listings_count" INT   NOT NULL,
    "host_has_profile_pic" VARCHAR   NOT NULL,
    "host_identity_verified" VARCHAR   NOT NULL,
    "neighbourhood" VARCHAR   NOT NULL,
    "district" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "latitude" VARCHAR   NOT NULL,
    "longitude" VARCHAR   NOT NULL,
    "property_type" VARCHAR   NOT NULL,
    "room_type" VARCHAR   NOT NULL,
    "accommodates" INT   NOT NULL,
    "bedrooms" INT   NOT NULL,
    "amenities" VARCHAR   NOT NULL,
    "price" FLOAT   NOT NULL,
    "minimum_nights" INT   NOT NULL,
    "maximum_nights" INT   NOT NULL,
    "review_scores_rating" INT   NOT NULL,
    "review_scores_accuracy" INT   NOT NULL,
    "review_scores_cleanliness" INT   NOT NULL,
    "review_scores_checkin" INT   NOT NULL,
    "review_scores_communication" INT   NOT NULL,
    "review_scores_location" INT   NOT NULL,
    "review_scores_value" INT   NOT NULL,
    "instant_bookable" VARCHAR   NOT NULL,
    CONSTRAINT "pk_nyc_abnb_listings" PRIMARY KEY (
        "listing_id"
     )
);
​
CREATE TABLE "abnb_reviews" (
    "listing_id" VARCHAR   NOT NULL,
    "review_id" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "reviewer_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_abnb_reviews" PRIMARY KEY (
        "review_id"
     )
);
​
CREATE TABLE "nyc_crime" (
    "arrest_key" VARCHAR   NOT NULL,
    "arrest_date" DATE   NOT NULL,
    "pd_desc" VARCHAR   NOT NULL,
    "ofns_desc" VARCHAR   NOT NULL,
    "law_code" VARCHAR   NOT NULL,
    "law_cat_cd" VARCHAR   NOT NULL,
    "age_group" VARCHAR   NOT NULL,
    "perp_sex" VARCHAR   NOT NULL,
    "perp_race" VARCHAR   NOT NULL,
    "latitude" VARCHAR   NOT NULL,
    "longitude" VARCHAR   NOT NULL,
    "arrest_boro" VARCHAR   NOT NULL,
    "district" VARCHAR   NOT NULL,
    "arrest_precinct" VARCHAR   NOT NULL,
    "jurisdiction_code" VARCHAR   NOT NULL,
    CONSTRAINT "pk_nyc_crime" PRIMARY KEY (
        "arrest_key"
     )
);
​
ALTER TABLE "abnb_reviews" ADD CONSTRAINT "fk_abnb_reviews_listing_id" FOREIGN KEY("listing_id")
REFERENCES "nyc_abnb_listings" ("listing_id");
​
ALTER TABLE "nyc_crime" ADD CONSTRAINT "fk_nyc_crime_latitude_longitude" FOREIGN KEY("latitude", "longitude")
REFERENCES "nyc_abnb_listings" ("latitude", "longitude");
