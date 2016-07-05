import dxpy, subprocess

@dxpy.entry_point('main')
def main ( all_contact_matrices, matrix_list, contact_matrix_binsize):
 
    dxpy.download_dxfile(all_contact_matrices, "HiCtool_contact_matrices.tar.gz")
    dxpy.download_dxfile(matrix_list, "HiCtool_matrix_list.txt")


    sparse_matrix_file={}
    taglist = ['observed','normalized_enrich','normalized_fend']
    for tag in taglist:
      sparse_matrix_filename = "HiCtool_sparse_matrix_" + tag
      subprocess.call("tar -xf HiCtool_contact_matrices.tar.gz", shell=True)
      subprocess.call("python /usr/bin/collect_gitar_matrix_convert_to_sparse.py HiCtool_matrix_list.txt {tag} {contact_matrix_binsize} |gzip > {sparse_matrix_filename}.gz".format(tag=tag,contact_matrix_binsize=contact_matrix_binsize, sparse_matrix_filename=sparse_matrix_filename), shell=True)
      #subprocess.call("gzip {sparse_matrix_filename}".format(sparse_matrix_filename=sparse_matrix_filename), shell=True)
      sparse_matrix_file[tag] = dxpy.upload_local_file(sparse_matrix_filename+".gz")
      print(tag)

    return { "sparse_matrix_observed": sparse_matrix_file['observed'], "sparse_matrix_normalized_enrich": sparse_matrix_file['normalized_enrich'], "sparse_matrix_normalized_fend": sparse_matrix_file['normalized_fend'] } 

