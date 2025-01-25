CREATE TABLE [Anagrafica].[StatoProduzione]
(
[statoproduzione_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[sequenza] [smallint] NOT NULL,
[is_finale] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_StatoProduzione_is_finale] DEFAULT ((0)),
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_StatoProduzione_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[StatoProduzione] ADD CONSTRAINT [PK_Anagrafica_StatoProduzione] PRIMARY KEY CLUSTERED  ([statoproduzione_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_StatoProduzione_codice] ON [Anagrafica].[StatoProduzione] ([codice]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_StatoProduzione_sequenza] ON [Anagrafica].[StatoProduzione] ([sequenza]) ON [PRIMARY]
GO
