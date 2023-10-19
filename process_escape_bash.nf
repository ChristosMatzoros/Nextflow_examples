//process_escape_bash.nf
nextflow.enable.dsl=2

process INDEX {
  script:
  """
NUMTHREADS=$params.num_threads
bowtie2-build  -f \
${projectDir}/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa --threads \$NUMTHREADS ${projectDir}/data/yeast/bowtie_index/index
echo "Number of threads is \$NUMTHREADS"
"""

}

workflow {
  //process is called like a function in the workflow block
  INDEX()
}