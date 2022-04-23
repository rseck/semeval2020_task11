src_f_path = 'test_predictions.txt'
dst_f_path = 'silver_predictions.tsv'

src_f = open(src_f_path, 'r')
dst_f = open(dst_f_path, 'w')

max_seq = 250

seq_len = 0
for line in src_f:
    dst_f.write(line)
    seq_len = seq_len + 1
    if seq_len >= max_seq:
        dst_f.write('\n')
        seq_len = 0