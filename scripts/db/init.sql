BEGIN;

CREATE TABLE QUESTION
(
    QUESTIONID SERIAL NOT NULL,
    TITLE VARCHAR (255),
    THEMEID INT NOT NULL,
    PRIMARY KEY (QUESTIONID)
);

CREATE TABLE THEME
(
    THEMEID SERIAL NOT NULL,
    TITLE VARCHAR (255),
    PRIMARY KEY (THEMEID)
);


ALTER TABLE QUESTION
ADD CONSTRAINT FK_QUESTION FOREIGN KEY (THEMEID) REFERENCES THEME (THEMEID);

COMMIT;