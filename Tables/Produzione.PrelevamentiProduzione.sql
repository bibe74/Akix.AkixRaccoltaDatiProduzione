CREATE TABLE [Produzione].[PrelevamentiProduzione]
(
[prelevamentiproduzione_id] [bigint] NOT NULL IDENTITY(1, 1),
[operatore_id] [int] NOT NULL,
[lottiproduzione_id] [bigint] NOT NULL,
[dataora] [datetime2] NOT NULL CONSTRAINT [DFT_Produzione_PrelevamentiProduzione_dataora] DEFAULT (getdate()),
[qta_prelevata] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[PrelevamentiProduzione] ADD CONSTRAINT [PK_Produzione_PrelevamentiProduzione] PRIMARY KEY CLUSTERED  ([prelevamentiproduzione_id]) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[PrelevamentiProduzione] ADD CONSTRAINT [FK_Produzione_PrelevamentiProduzione_lottiproduzione_id] FOREIGN KEY ([lottiproduzione_id]) REFERENCES [Produzione].[LottiProduzione] ([lottiproduzione_id])
GO
ALTER TABLE [Produzione].[PrelevamentiProduzione] ADD CONSTRAINT [FK_Produzione_PrelevamentiProduzione_operatore_id] FOREIGN KEY ([operatore_id]) REFERENCES [Anagrafica].[Operatore] ([operatore_id])
GO
