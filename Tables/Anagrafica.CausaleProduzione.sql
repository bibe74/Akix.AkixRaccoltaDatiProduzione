CREATE TABLE [Anagrafica].[CausaleProduzione]
(
[causaleproduzione_id] [int] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[descrizione] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_CausaleProduzione_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CausaleProduzione] ADD CONSTRAINT [PK_Anagrafica_CausaleProduzione] PRIMARY KEY CLUSTERED  ([causaleproduzione_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_codice] ON [Anagrafica].[CausaleProduzione] ([codice]) ON [PRIMARY]
GO
