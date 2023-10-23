//process_output_value.nf
nextflow.enable.dsl=2

process METHOD {
  input:
  val x

  output:
  val x

  script:
  """ 
  echo $x > method.txt
  """
}

methods_ch =Channel.of('bowtie2', 'bwamem2')

workflow {
  METHOD(methods_ch)
  // use the view operator to display contents of the channel
  METHOD.out.view({ "Received: $it" })
}