# Jun Chen
# 4-12-2017

# https://vcftools.github.io/examples.html



#Get basic file statistics   
#such as the number of variants and the number of individuals
zcat input_data.vcf.gz | ./vcftools --vcf -

# Applying a filter
./vcftools --vcf input_data.vcf --chr 1 --from-bp 1000000 --to-bp 2000000

# Getting allele frequency
./vcftools --vcf input_data.vcf --freq --out output


# Getting sequencing depth information
./vcftools --vcf input_data.vcf --depth -c > depth_summary.txt.

# Getting linkage disequilibrium statistics
./vcftools --vcf input_data.vcf --hap-r2 --ld-window-bp 50000 --out ld_window_50000

# Getting Fst population statistics
./vcftools --vcf input_data.vcf --weir-fst-pop population_1.txt --weir-fst-pop population_2.txt --out pop1_vs_pop2


# Converting VCF files to PLINK format
./vcftools --vcf input_data.vcf --plink --chr 1 --out output_in_plink



# Output a new vcf file from the input vcf file that removes any indel sites

vcftools --vcf input_file.vcf --remove-indels --recode --recode-INFO-all --out SNPs_only

# Output a Hardy-Weinberg p-value for every site in the bcf file that does not have any missing genotypes

vcftools --bcf input_file.bcf --hardy --max-missing 1.0 --out output_noMissing

# Output nucleotide diversity at a list of positions

zcat input_file.vcf.gz | vcftools --vcf - --site-pi --positions SNP_list.txt --out nucleotide_diversity

#https://vcftools.github.io/man_latest.html













