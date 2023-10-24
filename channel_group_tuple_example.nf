//channel.fromPath('data/yeast/reads/*.fq.gz').view()
//Modify the Nextflow script above to add the map operator to create a tuple with the name prefix as the key and the file as the value using the closure below.
//{ file -> [ file.getName().split('_')[0], file ] }
//Finally group together all files having the same common prefix using the groupTuple operator and view the contents of the channel.


channel.fromPath('data/yeast/reads/*.fq.gz')
    .map({ file -> [ file.getName().split('_')[0], file ] })
    .groupTuple()
    .view()