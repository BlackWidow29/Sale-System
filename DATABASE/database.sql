DROP DATABASE IF EXISTS dbPDV;
CREATE DATABASE dbPDV;
USE dbPDV;

CREATE TABLE tblUser(
    cdUser   INTEGER, 
	dsType   ENUM('Administrador', 'Funcionário'),
	dsStatus ENUM ('ATIVO', 'INATIVO')
);

CREATE TABLE tblLogin 
(
    cdLogin    INTEGER,
    nmEmail    CHAR(100) NOT NULL UNIQUE,
    nmUser     CHAR(100) NOT NULL UNIQUE,
    nmPassword CHAR(100) NOT NULL,
	cd_User    INTEGER UNIQUE
);

CREATE TABLE tblCashier
(
    cdCashier INTEGER
);

CREATE TABLE tblCashierUser
(
    cdLogin   INTEGER,
    cdCashier  INTEGER,
    PRIMARY KEY (cdLogin,cdCashier),
    opening DATETIME NOT NULL,
    closing DATETIME NOT NULL
);

CREATE TABLE tblAddress
(
    noCep      NUMERIC(8)   NOT NULL,  
    nmLogra    VARCHAR(100) NOT NULL,
    nmBairro   VARCHAR(100) NOT NULL,
    nmCidade   VARCHAR(100) NOT NULL,
    sgUf       CHAR(2)      NOT NULL DEFAULT 'SP'
);

CREATE TABLE tblProvider
(
    cdProvider   INTEGER,
    nmName       CHAR(255)   NOT NULL,
    noCNPJ       NUMERIC(14) NOT NULL,
    noCEP        NUMERIC(8)  NOT NULL,
    noAddress    NUMERIC(8)  NOT NULL,
    nmEmail      CHAR(100)   NOT NULL,
    noCellphone  NUMERIC(14) NOT NULL
);

CREATE TABLE tblProduct
(
    cdProduct        INTEGER,
    noBarCode        CHAR(100)  NOT NULL,
    nmDescription    CHAR(100)  NOT NULL,
    dtExpirationDate DATE       NOT NULL,
    noUnitaryValue   DECIMAL(6) NOT NULL,
    noSaleValue      DECIMAL(6) NOT NULL,
    noProfit         DECIMAL(6) NOT NULL,
    noQuantity       INT        NOT NULL
);

CREATE TABLE tblClient
(
    cdClient     INTEGER,
    nmName       CHAR(255)   NOT NULL,
    noCPF        NUMERIC(11) NOT NULL,
    noCEP        NUMERIC(8)  NOT NULL,
    noAddress    NUMERIC(8)  NOT NULL,
    nmEmail      CHAR(100)   NOT NULL,
    noCellphone  NUMERIC(14) NOT NULL
);

CREATE TABLE tblSale
(
    cdSale          INTEGER,
    cd_Login        INTEGER     NOT NULL,
    cd_Cashier      INTEGER     NOT NULL,
    noQuantityTotal INTEGER     NOT NULL,
    noTotalValue    DECIMAL(10) NOT NULL
);

CREATE TABLE tblTypePay
(
    cdTypePay INTEGER,
    nmTypePay ENUM('Cartão de Débito','Cartão de crédito','Dinheiro')
);

CREATE TABLE tblTypeSale
(
    cdSale    INTEGER,
    cdTypePay INTEGER,
    PRIMARY KEY(cdSale,cdTypePay)
);

CREATE TABLE tblSaleProduct
(
    cdSale     INTEGER,
    cdProduct  INTEGER,
    noValue    DECIMAL(8),
    noQuantity INTEGER
);

CREATE TABLE tblCompany
(
	cdCompany     INTEGER,
    nmCompany     CHAR(255)    NOT NULL,
    noCPNJCompany NUMERIC(14),
    noTelephone   NUMERIC(9),
    noCep         NUMERIC(8)   NOT NULL,  
    nmLogra       VARCHAR(100) NOT NULL,
    nmBairro      VARCHAR(100) NOT NULL,
    nmCidade      VARCHAR(100) NOT NULL,
    sgUf          CHAR(2)      NOT NULL DEFAULT 'SP'
);

CREATE TABLE tblCoupon
(
    cdCoupon   INTEGER,
    cd_Sale    INTEGER  NOT NULL,
    cd_Company INTEGER  NOT NULL,
    dtEmission DATETIME NOT NULL
);

CREATE TABLE tblPayment
(
	cdPay      	   INTEGER,
    cd_TypePay 	   INTEGER,
    cd_Sale    	   INTEGER,
    noParcialValue DECIMAL(10)
);




