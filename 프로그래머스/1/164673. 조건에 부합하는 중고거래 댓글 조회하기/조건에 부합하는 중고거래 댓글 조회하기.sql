SELECT u1.title AS title, 
       u1.board_id AS board_id,
       u2.reply_id AS reply_id, 
       u2.writer_id AS writer_id, 
       u2.contents AS contents, 
       DATE_FORMAT(u2.created_date, '%Y-%m-%d') AS created_date
FROM used_goods_board u1
JOIN used_goods_reply u2
ON u1.board_id = u2.board_id
WHERE year(u1.created_date) = '2022' 
AND month(u1.created_date) = '10'
ORDER BY u2.created_date ASC, u1.title ASC
