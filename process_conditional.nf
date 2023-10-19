//process_conditional.nf
nextflow.enable.dsl=2

params.aligner = 'bwamem2'
params.transcriptome = "${projectDir}/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa.gz"
params.num_threads = 8

process INDEX {
  script:
  if( params.aligner == 'bwamem2' ) {
    """
    echo indexed using bwamem2
    bwa-mem2 index $params.transcriptome ${projectDir}/data/yeast/bwamem2_index/index
    """
  }  
  else if( params.aligner == 'bowtie2' ) {
    """
    echo indexed using bowtie2
    bowtie2-build  -f \
$params.transcriptome --threads $params.num_threads ${projectDir}/data/yeast/bowtie_index/index
    """
  }  
  else {
    """
    echo Unknown aligner $params.aligner
    """
  }  
}

workflow {
  INDEX()
}