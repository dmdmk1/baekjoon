SELECT user_id, product_id
FROM online_sale
GROUP BY user_id, product_id
HAVING COUNT(product_id) > 1
ORDER BY user_id, product_id DESC;



# 재구매 여부를 구하는 방법..?
# 회원이 산 제품의 개수