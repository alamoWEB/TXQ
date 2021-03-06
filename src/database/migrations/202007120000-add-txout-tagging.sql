CREATE TABLE txoutgroup (
    groupname varchar NOT NULL,
    scriptid varchar NOT NULL,
    created_at integer NOT NULL
);

CREATE INDEX idx_txoutgroup_groupname ON txoutgroup USING btree (groupname);
CREATE INDEX idx_txoutgroup_scriptid ON txoutgroup USING btree (scriptid);
CREATE UNIQUE INDEX idx_uk_txoutgroup_groupname_scriptid ON txoutgroup USING btree (groupname, scriptid);

-- Insert versions bootstrap
INSERT INTO versions(version) VALUES ('202007120000');


