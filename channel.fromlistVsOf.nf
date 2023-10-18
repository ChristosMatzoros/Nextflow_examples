ids = ['ERR908507', 'ERR908506', 'ERR908505']
ch_value = Channel.value(ids)
ch_queue = Channel.fromList(ids)
ch_value.view()
ch_queue.view()