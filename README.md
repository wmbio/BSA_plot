BSA_plot
=========

## A high-quality drawing program to show BSA result


**BSA_plot1**   is a R project which required ggplot2 and gridExtra:

```r
> install.packages("ggplot2")
> install.packages("gridExtra")
> library("ggplot2")
> library("gridExtra")
```

---

The format of input datas(BSA_*.txt) are as follows:

```r

POS	VALUE	CHROM
0	0.4765	Chr1
0.05	0.4765	Chr1
0.1	0.4760	Chr1
0.15	0.4748	Chr1
0.2	0.4832	Chr1
0.25	0.4822	Chr1
0.3	0.4722	Chr1

```

As the example datasets, the first column is position(Mb) of SNP, the second column is the value of BSA_index, the third column is the CHROM.  And BSA_AP\BP.txt represents the SNP-index of Mutant\WT pool, while BSA_DP.txt represents the Delta-SNPindex.  BSA_AL\BL\DL.txt are Sliding window results of SNP-index.  BSA_*99\95.txt are 99% or 95% threshholds data.


---

### BSA plot1

<p align="center">
<a href="https://github.com/WMBio/BSA_plot/tree/master/Figure/Figure1.png">
<img src="Figure/Figure1.png" height="410px" width="750px">
</a>
</p>




**BSA_plot2**   is a Circos project which required perl:

```r
perl circos -conf circos.conf
```

---

The format of input datas(BSA_*.txt) are as follows:

```r

Chr1	0	49999	0.4765
Chr1	50000	99999	0.4765
Chr1	100000	149999	0.4760
Chr1	150000	199999	0.4748
Chr1	200000	249999	0.4832
Chr1	250000	299999	0.4822
Chr1	300000	349999	0.4722

```

As the example datasets, the first column is the CHROM, the second and third column is the Sliding window, the forth column is the value of BSA_index.  And BSA_AP\BP.txt represents the SNP-index of Mutant\WT pool, while BSA_DP.txt represents the Delta-SNPindex.  BSA_AL\BL\DL.txt are Sliding window results of SNP-index.  BSA_*99\95.txt are 99% or 95% threshholds data.


---
### BSA plot2

<p align="center">
<a href="https://github.com/WMBio/BSA_plot/tree/master/Figure/Figure2.png">
<img src="Figure/Figure2.png" height="500px" width="500px">
</a>
</p>
