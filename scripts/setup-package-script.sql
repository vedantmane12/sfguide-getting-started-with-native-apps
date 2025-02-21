-- ################################################################
-- Create SHARED_CONTENT_SCHEMA to share in the application package
-- ################################################################
USE NATIVE_APP_QUICKSTART_PACKAGE_PKG_VEDANT;
create schema if not exists shared_content_schema;

use schema shared_content_schema;
create or replace view MFG_SHIPPING as select * from NATIVE_APP_QUICKSTART_DB.NATIVE_APP_QUICKSTART_SCHEMA.MFG_SHIPPING;

grant usage on schema shared_content_schema to share in application package NATIVE_APP_QUICKSTART_PACKAGE_PKG_VEDANT;
grant reference_usage on database NATIVE_APP_QUICKSTART_DB to share in application package NATIVE_APP_QUICKSTART_PACKAGE_PKG_VEDANT;
grant select on view MFG_SHIPPING to share in application package NATIVE_APP_QUICKSTART_PACKAGE_PKG_VEDANT;