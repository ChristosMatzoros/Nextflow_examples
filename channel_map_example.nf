channel
.fromPath( 'data/yeast/reads/*.fq.gz' )
.map({path -> [ path, path.getName() ]})
.view({file, name -> "file's name: $name"})