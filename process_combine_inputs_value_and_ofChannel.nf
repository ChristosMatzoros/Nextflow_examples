//process_combine_inputs_value_and_ofChannel.nf
nextflow.enable.dsl=2

process COMBINE {
  input:
  val x
  val y

  script:
  """
  echo $x and $y
  """
}
ch_num = Channel.value(1)
ch_letters = Channel.of('a', 'b', 'c')

workflow {
  COMBINE(ch_num, ch_letters)
}