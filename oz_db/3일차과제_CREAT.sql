-- employess 테이블 생성
-- CREATE TABLE employees (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- name VARCHAR(100),
-- position VARCHAR(100),
-- salary DECIMAL(10, 2)
-- );
-- 직원 데이터 추가하기
-- INSERT INTO employees 
-- (name, position, salary)
-- VALUES ('혜린', 'PM', 90000),
		-- ('은우', 'Frontend', 80000),
        -- ('가을', 'Backend', 92000),
        -- ('지수', 'Frontend', 7800),
        -- ('민혁', 'Frontend', 96000),
        -- ('하온', 'Backend', 130000);
-- 모든 직원 이름&연봉 조회
SELECT name, salary FROM employees;

-- Frontend 직원 중 연봉 90000이하인 직원 이름&연봉 조회
SELECT name, salary FROM employees WHERE 
position = 'Frontend' AND salary <= 90000;

-- PM 직원 연봉 10% 인상하고 결과 확인
SET SQL_SAFE_UPDATES = 0; -- 세이프 모드 끄기
UPDATE employees SET salary = salary * 1.10 WHERE 
position = 'PM';
SELECT name, salary FROM employees WHERE position = 'PM';

-- Backend 직원 연봉 5% 인상하기
UPDATE employees SET salary = salary * 1.05 WHERE
position = 'Backend';

-- 민혁 사원 데이터 삭제
DELETE FROM employees WHERE name = '민혁';

-- 모든 직원 직책별로 그룹화 후 직책별 평균 연봉 계산
SELECT position, AVG(salary) AS average_salary 
FROM employees GROUP BY position;