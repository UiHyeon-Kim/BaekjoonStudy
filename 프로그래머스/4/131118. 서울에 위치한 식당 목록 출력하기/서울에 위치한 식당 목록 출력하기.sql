-- 코드를 입력하세요
SELECT A.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO A, REST_REVIEW B
WHERE A.REST_ID = B.REST_ID
AND ADDRESS LIKE "서울%"
GROUP BY A.REST_ID
ORDER BY SCORE DESC, FAVORITES DESC