---
description: Description of Nucleo QC workflow inputs
---

# Workflow inputs

## Parameter Used by Tools

### Common Parameters Across Tools

|                                            **Argument Name**                                            |                                                                                        Summary                                                                                        |        Default Value       |
| :-----------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------: |
|                                           **uncollapsed\_bam**                                          |                                                                 Base-recalibrated uncollapsed BAM file.(**Required**)                                                                 |                            |
|                                            **collapsed\_bam**                                           |                                                                           Collapsed BAM file.(**Required**)                                                                           |                            |
|                                      **group\_reads\_by\_umi\_bam**                                     |                                                       Collapsed BAM file produced by fgbio's GroupReadsByUmi tool.(**Required**)                                                      |                            |
|                                             **duplex\_bam**                                             |                                                                             Duplex BAM file.(**Required**)                                                                            |                            |
|                                             **simplex\_bam**                                            |                                                                            Simplex BAM file.(**Required**)                                                                            |                            |
|                                             **sample\_name**                                            |                                                                             The sample name (**Required**)                                                                            |                            |
|                                            **sample\_group**                                            |                                                                        The sample group (e.g. the patient ID).                                                                        |                            |
|                                            **samples\_json**                                            |                                                                                                                                                                                       |                            |
|                                             **sample\_sex**                                             |                                                                        The sample sex (e.g. M). (**Required**)                                                                        |                            |
|                                           **bait\_intervals**                                           |                                                                            bait interval file.(**Required**)                                                                          |                            |
|                                          **target\_intervals**                                          |                                                                          targets interval file.(**Required**)                                                                         |                            |
|                                          **noise\_sites\_bed**                                          |                                                         BED file containing sites for duplex noise calculation.(**Required**)                                                         |                            |
|                                        **biometrics\_vcf\_file**                                        |                                                 VCF file containing sites for genotyping and contamination calculations.(**Required**)                                                |                            |
|                                              **reference**                                              | Reference sequence file. Please include ".fai", "^.dict", ".amb" , ".sa", ".bwt", ".pac", ".ann" as secondary files if they are not present in the same location as the ".fasta" file |                            |
|                                           **biometrics\_plot**                                          |                                                                          Whether to output biometrics plots.                                                                          |            true            |
|                                           **biometrics\_json**                                          |                                                                     Whether to output biometrics results in JSON.                                                                     |            true            |
|                                            **hotspots\_maf**                                            |                     <p>maf file including hotspot variants to be depicted in MultiQC report under 'Hotspot in Normals' section<br>(<strong>Required</strong>)</p>                     |                            |
| <p><strong>athena_thresholds</strong><br><strong></strong>(ignore if you do not need to run athena)</p> |                                                                             <p>coverage thresholds<br></p>                                                                            | 250, 500, 1000, 1500, 2000 |
|  <p><strong>athena_threshold</strong><br><strong></strong>(ignore if you do not need to run athena)</p> |                                                                                  main threshold value                                                                                 |             500            |
|   <p><strong>athena_summary</strong><br><strong></strong>(ignore if you do not need to run athena)</p>  |                                                      Enable display of athena summary findings at the top of the coverage report                                                      |            true            |
|     <p><strong>athena_vcf</strong><br><strong></strong>(ignore if you do not need to run athena)</p>    |                                                          VCF(s) of known SNPs/hotspots to check coverage (i.e HGMD, ClinVar)                                                          |                            |
|    <p><strong>mosdepth_bed</strong><br><strong></strong>(ignore if you do not need to run athena)</p>   |                                                               on target bed file used for mosdepth coverage calculation                                                               |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                              **collapsed\_biometrics\_coverage\_threshold**                             |                                                             Coverage threshold for biometrics collapsed BAM calculations.                                                             |             200            |
|                               **collapsed\_biometrics\_major\_threshold**                               |                                                        Major contamination threshold for biometrics collapsed BAM calculations.                                                       |              1             |
|                              **collapsed\_biometrics\_min\_base\_quality**                              |                                                       Minimum base quality threshold for biometrics collapsed BAM calculations.                                                       |              1             |
|                                 **collapsed\_biometrics\_min\_coverage**                                |                                                  Minimum coverage for a site to be included in biometrics collapsed BAM calculations.                                                 |             10             |
|                            **collapsed\_biometrics\_min\_homozygous\_thresh**                           |                                              Minimum threshold to consider a site as homozygous in biometrics collapsed BAM calculations.                                             |             0.1            |
|                             **collapsed\_biometrics\_min\_mapping\_quality**                            |                                                           Minimum mapping quality for biometrics collapsed BAM calculations.                                                          |             10             |
|                               **collapsed\_biometrics\_minor\_threshold**                               |                                                     Minor contamination threshold used for biometrics collapsed BAM calculations.                                                     |            0.02            |
|                                 **duplex\_biometrics\_major\_threshold**                                |                                                         Major contamination threshold for biometrics duplex BAM calculations.                                                         |             0.6            |
|                                **duplex\_biometrics\_min\_base\_quality**                               |                                                         Minimum base quality threshold for biometrics duplex BAM calculations.                                                        |              1             |
|                                  **duplex\_biometrics\_min\_coverage**                                  |                                                   Minimum coverage for a site to be included in biometrics duplex BAM calculations.                                                   |             10             |
|                             **duplex\_biometrics\_min\_homozygous\_thresh**                             |                                               Minimum threshold to consider a site as homozygous in biometrics duplex BAM calculations.                                               |             0.1            |
|                              **duplex\_biometrics\_min\_mapping\_quality**                              |                                                            Minimum mapping quality for biometrics duplex BAM calculations.                                                            |              1             |
|                                 **duplex\_biometrics\_minor\_threshold**                                |                                                       Minor contamination threshold used for biometrics duplex BAM calculations.                                                      |            0.02            |
|                                       **hsmetrics\_coverage\_cap**                                      |                                                                  Read coverage max for CollectHsMetrics calculations.                                                                 |            30000           |
|                                  **hsmetrics\_minimum\_base\_quality**                                  |                                                                Minimum base quality for CollectHsMetrics calculations.                                                                |             10             |
|                                 **hsmetrics\_minimum\_mapping\_quality**                                |                                                               Minimum mapping quality for CollectHsMetrics calculations.                                                              |             10             |
|                                       **sequence\_qc\_min\_basq**                                       |                                                             Minimum base quality threshold for sequence\_qc calculations.                                                             |              1             |
|                                       **sequence\_qc\_min\_mapq**                                       |                                                            Minimum mapping quality threshold for sequence\_qc calculations.                                                           |              1             |
|                                       **sequence\_qc\_threshold**                                       |                                                                  Noise threshold used for sequence\_qc calculations.                                                                  |            0.002           |
|                                        **sequence\_qc\_truncate**                                       |                                                            Whether to set the truncate parameter to True when using pysam.                                                            |                            |
