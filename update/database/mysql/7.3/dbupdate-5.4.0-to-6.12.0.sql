SET storage_engine=InnoDB;
UPDATE ezsite_data SET value='7.3.0' WHERE name='ezpublish-version';
UPDATE ezsite_data SET value='1' WHERE name='ezpublish-release';

--
-- EZP-28881: Add a field to support "date object was trashed"
--

ALTER TABLE ezcontentobject_trash add  trashed int(11) NOT NULL DEFAULT '0';
