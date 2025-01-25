CREATE TABLE [Anagrafica].[LavorazioneCentroDiLavoro]
(
[lavorazionecentrodilavoro_id] [int] NOT NULL IDENTITY(1, 1),
[lavorazione_id] [int] NOT NULL,
[centrodilavoro_id] [int] NOT NULL,
[is_attivo] [bit] NOT NULL CONSTRAINT [DFT_Anagrafica_LavorazioneCentroDiLavoro_is_attivo] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[LavorazioneCentroDiLavoro] ADD CONSTRAINT [PK_Anagrafica_LavorazioneCentroDiLavoro] PRIMARY KEY CLUSTERED  ([lavorazionecentrodilavoro_id]) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[LavorazioneCentroDiLavoro] ADD CONSTRAINT [FK_LavorazioneCentroDiLavoro_centrodilavoro_id] FOREIGN KEY ([centrodilavoro_id]) REFERENCES [Anagrafica].[CentroDiLavoro] ([centrodilavoro_id])
GO
ALTER TABLE [Anagrafica].[LavorazioneCentroDiLavoro] ADD CONSTRAINT [FK_LavorazioneCentroDiLavoro_lavorazione_id] FOREIGN KEY ([lavorazione_id]) REFERENCES [Anagrafica].[Lavorazione] ([lavorazione_id])
GO
