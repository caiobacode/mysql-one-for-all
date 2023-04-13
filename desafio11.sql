SELECT 
  CASE musics.music_id
    WHEN 1 THEN 'BREAK MY SOUL'
    WHEN 3 THEN 'ALIEN SUPERSTAR'
    WHEN 6 THEN 'Como Nossos Pais'
    WHEN 7 THEN 'O Medo de Amar é o Medo de Ser Livre'
    WHEN 9 THEN 'The Bard’s Song'
  END AS nome_musica,
  CASE musics.music_id
    WHEN 1 THEN 'BREAK MY CODE'
    WHEN 3 THEN 'ALIEN SUPERDEV'
    WHEN 6 THEN 'Como Nossos Pull Requests'
    WHEN 7 THEN 'O Medo de Code Review é o Medo de Ser Livre'
    WHEN 9 THEN 'The QA’s Song'
  END AS novo_nome
FROM SpotifyClone.musics as musics
WHERE musics.music_id IN (1, 3, 6, 7, 9)

ORDER BY novo_nome DESC, novo_nome



