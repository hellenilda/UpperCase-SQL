CREATE TABLE Video (
   id_video Number not null,
   criador VarChar2(60) not null,
   efeitos VarChar2(90),
   duração Number,
   filtro VarChar(80),
   qualidade Number,
   gif varchar2(60),
   figurinhas varchar2(50),
   imagem varchar2(90),
   pip varchar2(60),
   descricao VarChar(120),
   CONSTRAINT pk_Vídeo primary key (id_video)
);


INSERT INTO Video VALUES (111, 'Júlia', 'Borda Colorida', 2.30, 'Robusto', 360, 'gif_02.mp4', 'sticker_02.png', 'imagem_01.jpeg', null, null);
INSERT INTO Video VALUES (112, 'Gabriel', 'Mosaico Azul', 0.20, 'Sal', 1080, 'gif_03.mp4', 'sticker_03.png', null, null, 'Video de Teste');
INSERT INTO Video VALUES (115, 'Caroline', 'Próximo à lareira', 0.48, 'Rosado', 720, 'gif_06.mp4', 'sticker_06.png', null, null, 'Video de Teste');
INSERT INTO Video VALUES (116, 'Arthur', 'Qualidade Fosca', 3.28, 'NY', 720, 'gif_07.mp4', 'sticker_07.png', null, null, 'Video de Teste');
INSERT INTO Video VALUES (128, 'Fernando', 'Aura desfocada', 2.34, 'Sal', 720, 'gif_019.mp4', 'sticker_019.png', null, null, 'Video de Teste');
commit;


CREATE FUNCTION caixaAlta(nome VarChar2)
Return VarChar2
AS
    maiuscula VarChar2(120);
BEGIN
    maiuscula := UPPER(nome);
    RETURN maiuscula;
END;

SELECT caixaAlta('Hellen') AS criador FROM Video;