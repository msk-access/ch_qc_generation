class: Workflow
cwlVersion: v1.0
id: qc_generator
label: qc_generator
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 960.375
  - id: duplex_bam
    type: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2241.140625
  - id: collapsed_bam
    type: File
    label: collapsed_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2561.296875
  - id: group_reads_by_umi_bam
    type: File
    label: group_reads_by_umi_bam
    doc: Input BAM file generated by GroupReadByUmi.
    'sbg:x': 0
    'sbg:y': 2027.6640625
  - id: uncollapsed_bam_base_recal
    type: File
    label: uncollapsed_bam_base_recal
    doc: An aligned SAM or BAM file.  Required.
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 106.703125
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': 0
    'sbg:y': 1067.1015625
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': 0
    'sbg:y': 1173.828125
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
    'sbg:x': 0
    'sbg:y': 1280.5546875
  - id: pool_a_bait_intervals
    type: File
    label: pool_a_bait_intervals
    'sbg:x': 0
    'sbg:y': 1387.28125
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': 0
    'sbg:y': 1493.984375
  - id: sample_sex
    type: string?
    doc: Expected sample sex (i.e. M or F).
    'sbg:x': 0
    'sbg:y': 746.921875
  - id: sample_name
    type: string?
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': 386.90625
    'sbg:y': 578.96875
  - id: sample_group
    type: string
    doc: The sample group (e.g. the sample patient ID).
    'sbg:x': 0
    'sbg:y': 853.6484375
  - id: simplex_bam
    type: File
    label: simplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 213.40625
  - id: biometrics_plot
    type: boolean?
    label: biometrics_plot
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 2668
  - id: duplex_biometrics_major_threshold
    type: float?
    label: duplex_biometrics_major_threshold
    doc: Major contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 2134.4140625
  - id: biometrics_json
    type: boolean?
    label: biometrics_json
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 2774.7265625
  - id: collapsed_biometrics_minor_threshold
    type: float?
    label: collapsed_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 2347.84375
  - id: collapsed_biometrics_coverage_threshold
    type: int?
    label: collapsed_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': 0
    'sbg:y': 2454.5703125
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': 0
    'sbg:y': 640.21875
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': 0
    'sbg:y': 533.515625
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 426.8125
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': 0
    'sbg:y': 320.109375
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1600.7109375
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1707.4609375
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 1814.2109375
  - id: vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 0
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1920.9375
outputs:
  - id: uncollapsed_bam_stats_pool_a_dir
    outputSource:
      - uncollapsed_bam_stats_pool_a/directory
    type: Directory
    label: uncollapsed_bam_stats_pool_a_dir
    'sbg:x': 1791.763671875
    'sbg:y': 800.484375
  - id: uncollapsed_bam_stats_pool_b_dir
    outputSource:
      - uncollapsed_bam_stats_pool_b/directory
    type: Directory
    label: uncollapsed_bam_stats_pool_b_dir
    'sbg:x': 1791.763671875
    'sbg:y': 693.78125
  - id: gatk_mean_quality_by_cycle_recal_dir
    outputSource:
      - gatk_mean_quality_by_cycle_recal/directory
    type: Directory
    label: gatk_mean_quality_by_cycle_recal_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1120.6171875
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - collapsed_bam_biometrics/directory
    type: Directory
    label: collapsed_bam_biometrics_dir
    'sbg:x': 1791.763671875
    'sbg:y': 2080.96875
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    outputSource:
      - collapsed_bam_duplex_metrics_pool_b/directory
    type: Directory
    label: collapsed_bam_duplex_metrics_pool_b_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1867.5625
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    outputSource:
      - collapsed_bam_duplex_metrics_pool_a/directory
    type: Directory
    label: collapsed_bam_duplex_metrics_pool_a_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1974.265625
  - id: collapsed_bam_stats_pool_b_dir
    outputSource:
      - collapsed_bam_stats_pool_b/directory
    type: Directory
    label: collapsed_bam_stats_pool_b_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1654.15625
  - id: collapsed_bam_stats_pool_a_dir
    outputSource:
      - collapsed_bam_stats_pool_a/directory
    type: Directory
    label: collapsed_bam_stats_pool_a_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1760.859375
  - id: simplex_bam_pool_a_dir
    outputSource:
      - simplex_bam_pool_a/directory
    type: Directory
    label: simplex_bam_pool_a_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1013.890625
  - id: simplex_bam_pool_b_dir
    outputSource:
      - simplex_bam_pool_b/directory
    type: Directory
    label: simplex_bam_pool_b_dir
    'sbg:x': 1791.763671875
    'sbg:y': 907.1875
  - id: duplex_bam_sequence_qc_dir
    outputSource:
      - duplex_bam_sequence_qc/directory
    type: Directory
    label: duplex_bam_sequence_qc_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1440.75
  - id: duplex_bam_stats_pool_a_dir
    outputSource:
      - duplex_bam_stats_pool_a/directory
    type: Directory
    label: duplex_bam_stats_pool_a_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1334.046875
  - id: duplex_bam_stats_pool_b_dir
    outputSource:
      - duplex_bam_stats_pool_b/directory
    type: Directory
    label: duplex_bam_stats_pool_b_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1227.34375
  - id: duplex_bam_biometrics_dir
    outputSource:
      - duplex_bam_biometrics/directory
    type: Directory
    label: duplex_bam_biometrics_dir
    'sbg:x': 1791.763671875
    'sbg:y': 1547.453125
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_duplex_bam/fillout_maf
    type: File
    label: duplex_bam_genotyping_maf
    'sbg:x': 1453.435546875
    'sbg:y': 1447.7265625
  - id: duplex_biometrics_extract_pickle
    outputSource:
      - qc_duplex_bam/biometrics_extract_pickle
    type: File
    'sbg:x': 1453.435546875
    'sbg:y': 978.890625
  - id: collapsed_biometrics_extract_pickle
    outputSource:
      - qc_collapsed_bam/biometrics_extract_pickle
    type: File
    'sbg:x': 1453.435546875
    'sbg:y': 1675.15625
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_collapsed_bam/fillout_maf
    type: File
    'sbg:x': 1453.435546875
    'sbg:y': 2023.2890625
steps:
  - id: qc_collapsed_bam
    in:
      - id: reference
        source: reference
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: collapsed_bam
        source:
          - collapsed_bam
      - id: group_reads_by_umi_bam
        source:
          - group_reads_by_umi_bam
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: json
        source: biometrics_json
      - id: plot
        source: biometrics_plot
      - id: minor_threshold
        source: collapsed_biometrics_minor_threshold
      - id: coverage_threshold
        source: collapsed_biometrics_coverage_threshold
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
      - id: vcf_file
        source: vcf_file
      - id: sample_name
        source: sample_name
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: maf
        source: hotspots_maf
    out:
      - id: fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a
      - id: fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a
      - id: fgbio_collect_duplex_seq_metrics_duplex_pool_a
      - id: fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a
      - id: fgbio_collect_duplex_seq_metrics_family_size_pool_a
      - id: fgbio_collect_duplex_seq_metrics_umi_counts_pool_a
      - id: fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b
      - id: fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b
      - id: fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b
      - id: fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b
      - id: fgbio_collect_duplex_seq_metrics_family_size_pool_b
      - id: fgbio_collect_duplex_seq_metrics_umi_counts_pool_b
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
      - id: biometrics_sexmismatch_json
      - id: biometrics_sexmismatch_csv
      - id: gatk_collect_insert_size_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
      - id: gatk_collect_hs_metrics_txt_pool_b
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
      - id: gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_txt_pool_a
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
      - id: gatk_collect_hs_metrics_txt_pool_a
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
      - id: gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: biometrics_major_plot
      - id: biometrics_major_json
      - id: biometrics_major_csv
      - id: biometrics_extract_pickle
      - id: fillout_maf
    run: ../cwl_subworkflows/qc_collapsed_bam/qc_collapsed_bam.cwl
    label: qc_collapsed_bam
    'sbg:x': 386.90625
    'sbg:y': 1957.78125
  - id: qc_uncollapsed_bam
    in:
      - id: reference
        source: reference
      - id: uncollapsed_bam_base_recal
        source:
          - uncollapsed_bam_base_recal
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
      - id: gatk_collect_insert_size_metrics_txt_pool_b
      - id: gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_txt_pool_a
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
      - id: gatk_collect_insert_size_metrics_txt_pool_a
      - id: gatk_mean_quality_by_cycle_output_base_recal
      - id: gatk_mean_quality_by_cycle_chart_output_base_recal
    run: ../cwl_subworkflows/qc_uncollapsed_bam/qc_uncollapsed_bam.cwl
    label: qc_uncollapsed_bam
    'sbg:x': 386.90625
    'sbg:y': 776.671875
  - id: qc_duplex_bam
    in:
      - id: reference
        source: reference
      - id: duplex_bam
        source:
          - duplex_bam
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: noise_sites_bed
        source: noise_sites_bed
      - id: sample_name
        source:
          - sample_name
      - id: plot
        source: biometrics_plot
      - id: json
        source: biometrics_json
      - id: sequence_qc_min_basq
        source: sequence_qc_min_basq
      - id: sequence_qc_min_mapq
        source: sequence_qc_min_mapq
      - id: sequence_qc_threshold
        source: sequence_qc_threshold
      - id: sequence_qc_truncate
        source: sequence_qc_truncate
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
      - id: major_threshold
        source: duplex_biometrics_major_threshold
      - id: vcf_file
        source: vcf_file
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: maf
        source: hotspots_maf
    out:
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_figures
      - id: gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
      - id: gatk_collect_insert_size_metrics_txt_pool_b
      - id: gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_txt_pool_a
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
      - id: gatk_collect_insert_size_metrics_txt_pool_a
      - id: sequence_qc_pileup
      - id: sequence_qc_noise_by_substitution
      - id: biometrics_major_plot
      - id: biometrics_major_json
      - id: biometrics_major_csv
      - id: biometrics_extract_pickle
      - id: biometrics_minor_sites_plot
      - id: biometrics_minor_plot
      - id: biometrics_minor_json
      - id: biometrics_minor_csv
      - id: fillout_maf
    run: ../cwl_subworkflows/qc_duplex_bam/qc_duplex_bam.cwl
    label: qc_duplex_bam
    'sbg:x': 386.90625
    'sbg:y': 1424.078125
  - id: simplex_bam_pool_a
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_a
          - qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a
          - qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_a
          - >-
            qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
          - qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
          - qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: output_directory_name
        default: simplex_bam_pool_a
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: simplex_bam_pool_a
    'sbg:x': 1453.435546875
    'sbg:y': 744.4375
  - id: simplex_bam_pool_b
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_b
          - qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b
          - qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_b
          - >-
            qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
          - qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
          - qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: output_directory_name
        default: simplex_bam_pool_b
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: simplex_bam_pool_b
    'sbg:x': 1453.435546875
    'sbg:y': 623.734375
  - id: uncollapsed_bam_stats_pool_b
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b
          - >-
            qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
          - >-
            qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
          - qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_b
          - >-
            qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b
          - qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b
      - id: output_directory_name
        default: uncollapsed_bam_stats_pool_b
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: uncollapsed_bam_stats_pool_b
    'sbg:x': 1453.435546875
    'sbg:y': 382.328125
  - id: uncollapsed_bam_stats_pool_a
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a
          - >-
            qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
          - >-
            qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
          - qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_a
          - >-
            qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a
          - qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a
      - id: output_directory_name
        default: uncollapsed_bam_stats_pool_a
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: uncollapsed_bam_stats_pool_a
    'sbg:x': 1453.435546875
    'sbg:y': 503.03125
  - id: gatk_mean_quality_by_cycle_recal
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - >-
            qc_uncollapsed_bam/gatk_mean_quality_by_cycle_chart_output_base_recal
          - qc_uncollapsed_bam/gatk_mean_quality_by_cycle_output_base_recal
      - id: output_directory_name
        default: gatk_mean_quality_by_cycle_recal
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: gatk_mean_quality_by_cycle_recal
    'sbg:x': 1453.435546875
    'sbg:y': 865.1640625
  - id: collapsed_bam_stats_pool_a
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a
          - >-
            qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a
          - qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_a
          - >-
            qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
          - >-
            qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
          - qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: output_directory_name
        default: collapsed_bam_stats_pool_a
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_stats_pool_a
    'sbg:x': 1453.435546875
    'sbg:y': 1909.5625
  - id: collapsed_bam_stats_pool_b
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b
          - >-
            qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b
          - qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_b
          - >-
            qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
          - >-
            qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
          - qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: output_directory_name
        default: collapsed_bam_stats_pool_b
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_stats_pool_b
    'sbg:x': 1453.435546875
    'sbg:y': 1788.859375
  - id: collapsed_bam_duplex_metrics_pool_a
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_a
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_a
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_pool_a
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a
      - id: output_directory_name
        default: collapsed_bam_duplex_metrics_pool_a
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_duplex_metrics_pool_a
    'sbg:x': 1453.435546875
    'sbg:y': 2257.71875
  - id: collapsed_bam_duplex_metrics_pool_b
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_b
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_b
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b
      - id: output_directory_name
        default: collapsed_bam_duplex_metrics_pool_b
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_duplex_metrics_pool_b
    'sbg:x': 1453.435546875
    'sbg:y': 2137.015625
  - id: collapsed_bam_biometrics
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/biometrics_sexmismatch_json
          - qc_collapsed_bam/biometrics_sexmismatch_csv
          - qc_collapsed_bam/biometrics_minor_sites_plot
          - qc_collapsed_bam/biometrics_minor_plot
          - qc_collapsed_bam/biometrics_minor_json
          - qc_collapsed_bam/biometrics_minor_csv
          - qc_collapsed_bam/biometrics_major_plot
          - qc_collapsed_bam/biometrics_major_json
          - qc_collapsed_bam/biometrics_major_csv
          - qc_collapsed_bam/biometrics_extract_pickle
          - qc_collapsed_bam/biometrics_minor_sites_plot
          - qc_collapsed_bam/biometrics_sexmismatch_csv
          - qc_collapsed_bam/biometrics_sexmismatch_json
      - id: output_directory_name
        default: collapsed_bam_biometrics
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_biometrics
    'sbg:x': 1453.435546875
    'sbg:y': 2378.421875
  - id: duplex_bam_sequence_qc
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/sequence_qc_noise_positions
          - qc_duplex_bam/sequence_qc_noise_n
          - qc_duplex_bam/sequence_qc_noise_del
          - qc_duplex_bam/sequence_qc_noise_acgt
          - qc_duplex_bam/sequence_qc_figures
          - qc_duplex_bam/sequence_qc_pileup
      - id: output_directory_name
        default: duplex_bam_sequence_qc
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_sequence_qc
    'sbg:x': 1453.435546875
    'sbg:y': 1334
  - id: duplex_bam_stats_pool_a
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_a
          - qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a
          - qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_a
          - qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
          - qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
          - qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: output_directory_name
        default: duplex_bam_stats_pool_a
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_stats_pool_a
    'sbg:x': 1453.435546875
    'sbg:y': 1213.296875
  - id: duplex_bam_stats_pool_b
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_b
          - qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b
          - qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_b
          - qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
          - qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
          - qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: output_directory_name
        default: duplex_bam_stats_pool_b
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_stats_pool_b
    'sbg:x': 1453.435546875
    'sbg:y': 1092.59375
  - id: duplex_bam_biometrics
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/biometrics_major_csv
          - qc_duplex_bam/biometrics_major_json
          - qc_duplex_bam/biometrics_major_plot
          - qc_duplex_bam/biometrics_minor_csv
          - qc_duplex_bam/biometrics_minor_json
          - qc_duplex_bam/biometrics_minor_plot
          - qc_duplex_bam/biometrics_minor_sites_plot
          - qc_duplex_bam/biometrics_extract_pickle
      - id: output_directory_name
        default: duplex_bam_biometrics
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_biometrics
    'sbg:x': 1453.435546875
    'sbg:y': 1561.453125
  - id: qc_simplex_bam
    in:
      - id: reference
        source: reference
      - id: simplex_bam
        source: simplex_bam
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
      - id: gatk_collect_insert_size_metrics_txt_pool_b
      - id: gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_txt_pool_a
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
      - id: gatk_collect_insert_size_metrics_txt_pool_a
    run: ../cwl_subworkflows/qc_simplex_bam/qc_simplex_bam.cwl
    label: qc_simplex_bam
    'sbg:x': 386.90625
    'sbg:y': 1051.375
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
  - class: StepInputExpressionRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:identifier': ''
    's:name': Charlie Murphy
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:name': Charlie Murphy
's:dateCreated': '2021-05-19'
's:license': 'https://spdx.org/licenses/Apache-2.0'
