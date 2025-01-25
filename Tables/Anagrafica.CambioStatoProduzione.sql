CREATE TABLE [Anagrafica].[CambioStatoProduzione]
(
[cambiostatoproduzione_id] [int] NOT NULL IDENTITY(1, 1),
[statoproduzione_id_inizio] [int] NOT NULL,
[statoproduzione_id_fine] [int] NOT NULL,
[causaleproduzione_id] [int] NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_CambioStatoProduzione_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CambioStatoProduzione] ADD CONSTRAINT [PK_Anagrafica_CambioStatoProduzione] PRIMARY KEY CLUSTERED  ([cambiostatoproduzione_id]) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CambioStatoProduzione] ADD CONSTRAINT [FK_Anagrafica_CambioStatoProduzione_causaleproduzione_id] FOREIGN KEY ([causaleproduzione_id]) REFERENCES [Anagrafica].[CausaleProduzione] ([causaleproduzione_id])
GO
ALTER TABLE [Anagrafica].[CambioStatoProduzione] ADD CONSTRAINT [FK_Anagrafica_CambioStatoProduzione_statoproduzione_id_fine] FOREIGN KEY ([statoproduzione_id_fine]) REFERENCES [Anagrafica].[StatoProduzione] ([statoproduzione_id])
GO
ALTER TABLE [Anagrafica].[CambioStatoProduzione] ADD CONSTRAINT [FK_Anagrafica_CambioStatoProduzione_statoproduzione_id_inizio] FOREIGN KEY ([statoproduzione_id_inizio]) REFERENCES [Anagrafica].[StatoProduzione] ([statoproduzione_id])
GO
