CREATE TABLE [Produzione].[FasiProduzione]
(
[fasiproduzione_id] [bigint] NOT NULL IDENTITY(1, 1),
[lavorazionecentrodilavoro_id] [int] NOT NULL,
[operatore_id] [int] NOT NULL,
[lottiproduzione_id] [bigint] NOT NULL,
[lavorazione_id] [int] NOT NULL,
[dataora_inizio] [datetime2] NOT NULL CONSTRAINT [DFT_Produzione_FasiProduzione_dataora_inizio] DEFAULT (getdate()),
[dataora_fine] [datetime2] NULL,
[statoproduzione_id] [int] NULL,
[causaleproduzione_id] [int] NULL,
[is_finale] [bit] NOT NULL CONSTRAINT [DFT_Produzione_FasiProduzione_is_finale] DEFAULT ((0)),
[qta_prodotta] [decimal] (10, 2) NULL,
[qta_scartata] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[FasiProduzione] ADD CONSTRAINT [PK_Produzione_FasiProduzione] PRIMARY KEY CLUSTERED  ([fasiproduzione_id]) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[FasiProduzione] ADD CONSTRAINT [FK_Produzione_FasiProduzione_lavorazione_id] FOREIGN KEY ([lavorazione_id]) REFERENCES [Anagrafica].[Lavorazione] ([lavorazione_id])
GO
ALTER TABLE [Produzione].[FasiProduzione] ADD CONSTRAINT [FK_Produzione_FasiProduzione_lavorazionecentrodilavoro_id] FOREIGN KEY ([lavorazionecentrodilavoro_id]) REFERENCES [Anagrafica].[LavorazioneCentroDiLavoro] ([lavorazionecentrodilavoro_id])
GO
ALTER TABLE [Produzione].[FasiProduzione] ADD CONSTRAINT [FK_Produzione_FasiProduzione_lottiproduzione_id] FOREIGN KEY ([lottiproduzione_id]) REFERENCES [Produzione].[LottiProduzione] ([lottiproduzione_id])
GO
ALTER TABLE [Produzione].[FasiProduzione] ADD CONSTRAINT [FK_Produzione_FasiProduzione_operatore_id] FOREIGN KEY ([operatore_id]) REFERENCES [Anagrafica].[Operatore] ([operatore_id])
GO
