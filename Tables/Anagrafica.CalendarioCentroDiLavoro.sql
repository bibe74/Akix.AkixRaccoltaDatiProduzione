CREATE TABLE [Anagrafica].[CalendarioCentroDiLavoro]
(
[calendariocentrodilavoro_id] [int] NOT NULL IDENTITY(1, 1),
[centrodilavoro_id] [int] NOT NULL,
[data_turno] [date] NOT NULL,
[turno_id] [tinyint] NOT NULL,
[dataora_inizio] [datetime2] NOT NULL,
[dataora_fine] [datetime2] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CalendarioCentroDiLavoro] ADD CONSTRAINT [PK_Anagrafica_CalendarioCentroDiLavoro] PRIMARY KEY CLUSTERED  ([calendariocentrodilavoro_id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Anagrafica_codice] ON [Anagrafica].[CalendarioCentroDiLavoro] ([centrodilavoro_id], [data_turno], [turno_id]) ON [PRIMARY]
GO
ALTER TABLE [Anagrafica].[CalendarioCentroDiLavoro] ADD CONSTRAINT [FK_Anagrafica_CalendarioCentroDiLavoro_centrodilavoro_id] FOREIGN KEY ([centrodilavoro_id]) REFERENCES [Anagrafica].[CentroDiLavoro] ([centrodilavoro_id])
GO
ALTER TABLE [Anagrafica].[CalendarioCentroDiLavoro] ADD CONSTRAINT [FK_Anagrafica_CalendarioCentroDiLavoro_turno_id] FOREIGN KEY ([turno_id]) REFERENCES [Anagrafica].[Turno] ([turno_id])
GO
