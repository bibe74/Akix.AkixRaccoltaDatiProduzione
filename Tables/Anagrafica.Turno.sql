CREATE TABLE [Anagrafica].[Turno]
(
[turno_id] [tinyint] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[dataora_inizio] [datetime2] NOT NULL,
[durata_secondi] [int] NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_Turno_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[Turno] ADD CONSTRAINT [PK_Anagrafica_Turno] PRIMARY KEY CLUSTERED  ([turno_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_Turno_codice] ON [Anagrafica].[Turno] ([codice]) ON [PRIMARY]
GO
