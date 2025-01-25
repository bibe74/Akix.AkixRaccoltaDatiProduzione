CREATE TABLE [Produzione].[OrdiniProduzione]
(
[ordiniproduzione_id] [bigint] NOT NULL IDENTITY(1, 1),
[codice] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[cliente_id] [int] NOT NULL,
[data_consegna] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[OrdiniProduzione] ADD CONSTRAINT [PK_Produzione_OrdiniProduzione] PRIMARY KEY CLUSTERED  ([ordiniproduzione_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Produzione_OrdiniProduzione_codice] ON [Produzione].[OrdiniProduzione] ([codice]) ON [PRIMARY]
GO
ALTER TABLE [Produzione].[OrdiniProduzione] ADD CONSTRAINT [FK_Produzione_OrdiniProduzione_cliente_id] FOREIGN KEY ([cliente_id]) REFERENCES [Anagrafica].[Cliente] ([cliente_id])
GO
