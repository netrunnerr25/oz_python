-- 반려동물 호텔 예약 시스템 설계

-- 1. db 생성
CREATE DATABASE pethotel_db;
USE pethotel_db;

-- 2. 반려동물 정보 테이블(이름, 보호자이름, 연락처, 펫 수), 객실 테이블, 서비스 종류 테이블, 호텔 이용한 모든 펫 테이블)
CREATE TABLE PetOwners (
	ownerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    contact VARCHAR(100) NOT NULL
    );
CREATE TABLE Pets (
	petID INT AUTO_INCREMENT PRIMARY KEY,
    ownerID INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50),
    breed VARCHAR(50),
    FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID) -- ownerID 참조	
    );
CREATE TABLE Rooms (
	roomID INT AUTO_INCREMENT PRIMARY KEY,
    roomnum VARCHAR(50) NOT NULL UNIQUE -- 호수번호는 1:1 관계라 중복허용x    
    );
CREATE TABLE Reservations (
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
    petID INT NOT NULL,
    roomID INT NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    FOREIGN KEY (petID) REFERENCES Pets(petID), -- petID 참조
	FOREIGN KEY (roomID) REFERENCES Rooms(roomID) -- roomID 참조		
    );
CREATE TABLE Services (	
	serviceID INT AUTO_INCREMENT PRIMARY KEY,
    reservationID INT NOT NULL,
    servicename VARCHAR(100),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID) -- reservationID 참조	   
    );

    