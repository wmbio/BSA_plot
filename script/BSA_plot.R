library(ggplot2)
library(gridExtra)

mydataAP<-read.table("../Example/data1/BSA_AP.txt",header=T,sep="\t")
mydataAL<-read.table("../Example/data1/BSA_AL.txt",header=T,sep="\t")
mydataBL<-read.table("../Example/data1/BSA_BL.txt",header=T,sep="\t")
mydataBP<-read.table("../Example/data1/BSA_BP.txt",header=T,sep="\t")
mydataDP<-read.table("../Example/data1/BSA_DP.txt",header=T,sep="\t")
mydataDL<-read.table("../Example/data1/BSA_DL.txt",header=T,sep="\t")
mydataDF95<-read.table("../Example/data1/BSA_DF95.txt",header=T,sep="\t")
mydataDZ95<-read.table("../Example/data1/BSA_DZ95.txt",header=T,sep="\t")
mydataDZ99<-read.table("../Example/data1/BSA_DZ99.txt",header=T,sep="\t")
mydataDF99<-read.table("../Example/data1/BSA_DF99.txt",header=T,sep="\t")


p1<-ggplot() +
	geom_point(data=mydataAP,aes(x = POS,y = VALUE),size = 0.4,color= "green4") + 
	geom_line(data=mydataAL,aes(x = POS,y = VALUE),color= "red") + 
	facet_grid(.~CHROM,scales="free_x")+theme(panel.spacing=unit(0,"cm")) +
	theme_bw()+ xlab("")+ylab("SNPindex(A)")
p2<-ggplot() +
	geom_point(data=mydataBP,aes(x = POS,y = VALUE),size = 0.4,color= "orange") + 
	geom_line(data=mydataBL,aes(x = POS,y = VALUE),color= "red") + 
	facet_grid(.~CHROM,scales="free_x")+theme(panel.spacing=unit(0,"cm")) +
	theme_bw()+ xlab("")+ylab("SNPindex(B)")
p3<-ggplot() +
	geom_point(data=mydataDP,aes(x = POS,y = VALUE),size = 0.4,color= "navy") + 
	geom_line(data=mydataDL,aes(x = POS,y = VALUE),color= "red") +  
	geom_line(data=mydataDZ95,aes(x = POS,y = VALUE),color= "green") + 
	geom_line(data=mydataDZ99,aes(x = POS,y = VALUE),color= "orange") + 
	geom_line(data=mydataDF95,aes(x = POS,y = VALUE),color= "green") + 
	geom_line(data=mydataDF99,aes(x = POS,y = VALUE),color= "orange") + 
	facet_grid(.~CHROM,scales="free_x")+theme(panel.spacing=unit(0,"cm")) +
	theme_bw()+ xlab("Physical distance (Mb)")+ylab("Delta-SNPindex")
#grid.arrange(p1,p2,p3)
g <- arrangeGrob(p1,p2,p3) 
ggsave(file="BSA_plot.pdf",g,width= 10, height= 5)
ggsave(file="BSA_plot.png",g,width= 10, height= 5)