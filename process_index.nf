//process_index.nf
nextflow.enable.dsl=2

process INDEX {
  script:
  "bowtie2-build  -f ${projectDir}/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa --threads 8 ${projectDir}/data/yeast/bowtie_index/index"
}

workflow {
  //process is called like a function in the workflow block
  INDEX()
}