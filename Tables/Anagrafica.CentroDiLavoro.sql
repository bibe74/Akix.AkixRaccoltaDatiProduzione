CREATE TABLE [Anagrafica].[CentroDiLavoro]
(
[centrodilavoro_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_CentroDiLavoro_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CentroDiLavoro] ADD CONSTRAINT [PK_Anagrafica_CentroDiLavoro] PRIMARY KEY CLUSTERED  ([centrodilavoro_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_CentroDiLavoro_codice] ON [Anagrafica].[CentroDiLavoro] ([codice]) ON [PRIMARY]
GO
