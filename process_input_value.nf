//process_input_value.nf
nextflow.enable.dsl=2

chr_channel = Channel.of(1..22, 'X', 'Y')

process PRINTCH {
  
  input:
  val chr

  script:
  """
  echo processing chromosome $chr
  """

}

workflow {

  PRINTCHR(chr_channel)

}