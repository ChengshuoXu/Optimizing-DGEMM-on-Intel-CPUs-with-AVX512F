rm res*

start=$1
end=$2

for ((i=$start;i<=$end;i++))
do
	export MKL_NUM_THREADS=1
	export OMP_NUM_THREADS=1
	file_name="res_${i}.txt"
	./dgemm_x86 $i >> ${file_name}
done
