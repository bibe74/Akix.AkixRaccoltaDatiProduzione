CREATE TABLE [Produzione].[LottiProduzione]
(
[lottiproduzione_id] [bigint] NOT NULL IDENTITY(1, 1),
[ordiniproduzione_id] [bigint] NOT NULL,
[articoloversione_id] [int] NOT NULL,
[qta_richiesta] [decimal] (10, 2) NOT NULL,
[qta_prodotta] [decimal] (10, 2) NULL,
[qta_scartata] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[LottiProduzione] ADD CONSTRAINT [PK_Produzione_LottiProduzione] PRIMARY KEY CLUSTERED  ([lottiproduzione_id]) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[LottiProduzione] ADD CONSTRAINT [FK_Produzione_LottiProduzione_articoloversione_id] FOREIGN KEY ([articoloversione_id]) REFERENCES [Anagrafica].[ArticoloVersione] ([articoloversione_id])
GO
ALTER TABLE [Produzione].[LottiProduzione] ADD CONSTRAINT [FK_Produzione_LottiProduzione_ordiniproduzione_id] FOREIGN KEY ([ordiniproduzione_id]) REFERENCES [Produzione].[OrdiniProduzione] ([ordiniproduzione_id])
GO
