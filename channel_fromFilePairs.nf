file_pairs_channel = Channel.fromFilePairs('data/yeast/reads/temp33*_{1,2}.fq.gz')
file_pairs_channel.view()