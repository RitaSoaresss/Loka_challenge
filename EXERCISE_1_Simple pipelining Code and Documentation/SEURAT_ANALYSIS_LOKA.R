###################################################################1ST-CREATION OF THE SEURAT OBJECT###################################################################################
library(Seurat)

# Load data
matrix_file <- commandArgs(trailingOnly=TRUE)[1]
seurat_obj <- Read10X_h5(matrix_file)

# Create Seurat object
seurat <- CreateSeuratObject(counts = seurat_obj)

# Preprocess and normalize the data
seurat <- SCTransform(seurat)

# Save the Seurat object
saveRDS(seurat, file=paste0("results/", gsub(".*\\/|\\_.*", "", matrix_file), "_seurat_analysis.rds"))

###################################################################2ND-PERFORMANCE OF DIFFERENTIAL#####################################################################################
# Load Seurat object
seurat_obj <- readRDS(commandArgs(trailingOnly=TRUE)[1])

# Perform differential expression analysis
markers <- FindMarkers(seurat_obj, ident.1 = "condition1", ident.2 = "condition2")

# Save results
write.csv(markers, file=paste0("results/", gsub(".*\\/|\\_.*", "", commandArgs(trailingOnly=TRUE)[1]), "_diff_expression.csv"))
