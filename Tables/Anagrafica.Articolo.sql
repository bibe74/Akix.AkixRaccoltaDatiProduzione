CREATE TABLE [Anagrafica].[Articolo]
(
[articolo_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[unitadimisura_id] [int] NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_Articolo_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[Articolo] ADD CONSTRAINT [PK_Anagrafica_Articolo] PRIMARY KEY CLUSTERED  ([articolo_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_codice] ON [Anagrafica].[Articolo] ([codice]) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[Articolo] ADD CONSTRAINT [FK_Anagrafica_Articolo_unitadimisura_id] FOREIGN KEY ([unitadimisura_id]) REFERENCES [Anagrafica].[UnitaDiMisura] ([unitadimisura_id])
GO
