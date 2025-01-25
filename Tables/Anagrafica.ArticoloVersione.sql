CREATE TABLE [Anagrafica].[ArticoloVersione]
(
[articoloversione_id] [int] NOT NULL IDENTITY(1, 1),
[articolo_id] [int] NOT NULL,
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_ArticoloVersione_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[ArticoloVersione] ADD CONSTRAINT [PK_Anagrafica_ArticoloVersione] PRIMARY KEY CLUSTERED  ([articoloversione_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_ArticoloVersione_codice] ON [Anagrafica].[ArticoloVersione] ([articolo_id], [codice]) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[ArticoloVersione] ADD CONSTRAINT [FK_Anagrafica_ArticoloVersione_articolo_id] FOREIGN KEY ([articolo_id]) REFERENCES [Anagrafica].[Articolo] ([articolo_id])
GO
