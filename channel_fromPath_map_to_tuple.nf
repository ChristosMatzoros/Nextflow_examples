yeast_data_ch = Channel.fromPath("data/yeast/reads/*.fq.gz", hidden : true)
    .map ({ file -> [file, file.countFastq()] })
    .view ({ file, numreads -> "file $file contains $numreads reads" })
yeast_data_ch.view()