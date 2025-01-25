CREATE TABLE [Anagrafica].[Lavorazione]
(
[lavorazione_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tipo_durata] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DFT_Anagrafica_Lavorazione_tipo_operazione] DEFAULT ('F'),
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_Lavorazione_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[Lavorazione] ADD CONSTRAINT [PK_Anagrafica_Lavorazione] PRIMARY KEY CLUSTERED  ([lavorazione_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_Lavorazione_codice] ON [Anagrafica].[Lavorazione] ([codice]) ON [PRIMARY]
GO
