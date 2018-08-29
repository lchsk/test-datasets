CREATE TABLE data_types (
    id SERIAL primary key,
    small_int SMALLINT,
    int INT,
    float FLOAT,
    small_float FLOAT(2),
    real REAL,
    real2 FLOAT8,
    price NUMERIC(8, 2),
    date DATE,
    time TIME,
    timestamp TIMESTAMP,
    timestamptz TIMESTAMPTZ,
    interval INTERVAL,
    char8 CHAR(8),
    varchar8 VARCHAR(8),
    text TEXT,
    numbers INT[],
    uuid UUID,
    box BOX,
    line LINE,
    point POINT,
    lseg LSEG,
    polygon POLYGON,
    inet INET,
    macaddr MACADDR
);


INSERT INTO data_types (small_int, int) VALUES (1, 1);
