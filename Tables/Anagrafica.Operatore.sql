CREATE TABLE [Anagrafica].[Operatore]
(
[operatore_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_Operatore_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[Operatore] ADD CONSTRAINT [PK_Anagrafica_Operatore] PRIMARY KEY CLUSTERED  ([operatore_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_codice] ON [Anagrafica].[Operatore] ([codice]) ON [PRIMARY]
GO
