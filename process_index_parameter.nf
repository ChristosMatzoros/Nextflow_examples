//process_index_parameter.nf
nextflow.enable.dsl=2


params.num_threads = 12


process INDEX {
  script:
  """
bowtie2-build  -f \
${projectDir}/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa --threads $params.num_threads ${projectDir}/data/yeast/bowtie_index/index
echo "Number of threads is $params.num_threads"
"""

}

workflow {
  //process is called like a function in the workflow block
  INDEX()
}