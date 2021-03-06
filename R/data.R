
#' BRCA gene expression dataset
#'
#' Gene expression of 40 samples from the BRCA-US project from
#' The Cancer Genome Atlas (TCGA).
#'
#' Gene expression matrix with 40 samples taken from the BRCA-US project from
#' The Cancer Genome Atlas (TCGA). The data has been log-transformed and
#' normalized with TMM.
#'
#' @format Matrix with 40 columns and 18638 rows. Row names are Entrez IDs
#' and column names are the  TCGA identifyers of the samples.
#'
#' @return Matrix with 40 columns and 18638 rows. Row names are Entrez IDs
#' and column names are the  TCGA identifyers of the samples.
#'
#' @usage data(brca_data)
#'
#' @source \url{https://cancergenome.nih.gov/}
#'
"brca_data"


#' BRCA experimental design
#'
#' Experimental design of the gene expression matrix \code{brca_data} with
#' 40 samples taken from the BRCA-US project from The Cancer Genome Atlas
#' (TCGA). 20 samples are "Tumor" samples and 20 samples are "Normal" samples.
#'
#' @format Dataframe with 1 column and 40 rows, including the experimental
#' design of the 40 samples from the BRCA-US project from TCGA. Field
#' \code{group} is the type of sample, either "Tumor" or "Normal".
#'
#' @return Dataframe with 1 column and 40 rows, including the experimental
#' design of the 40 samples from the BRCA-US project from TCGA. Field
#' \code{group} is the type of sample, either "Tumor" or "Normal".
#'
#' @usage data(brca_design)
#'
#' @source \url{https://cancergenome.nih.gov/}
#'
"brca_design"




#' Normalized BRCA gene expression dataset
#'
#' Experimental design matrix once expression matrix \code{brca_data} has been
#' translated to Entrez geens with \code{translate.matrix} and normalized using
#' \code{normalize.data}.
#'
#' To create the data, the following functions have been called:
#' \code{trans_data <- translate.matrix(brca_data, "hsa")}
#' \code{exp_data <- normalize.data(trans_data)}
#'
#' @format Matrix with 40 columns and 3184 rows. Row names are Entrez IDs
#' and column names are the  TCGA identifyers of the samples.
#'
#' @return Matrix with 40 columns and 3184 rows. Row names are Entrez IDs
#' and column names are the  TCGA identifyers of the samples.
#'
#' @usage data(exp_data)
"exp_data"




#' Results object
#'
#' Results object returned by \code{hipathia::hipathia} function, after calling
#' \code{results <- hipathia(exp.data, pathways, verbose=TRUE)}
#'
#' @format Object of results, including pathways information.
#'
#' @return Object of results, including pathways information.
#'
#' @usage data(results)
#'
"results"


#' Wilcoxon comparison of pathways object
#'
#' Comparison object returned by \code{hipathia::do.wilcoxon} function, after
#' calling
#' \code{comp <- do.wilcoxon(path_vals, sample.group, g1 = "Tumor", g2 =
#' "Normal")}
#' \code{path_names <- get.path.names(pathways, rownames(comp))}
#' \code{comp <- cbind(path_names, comp)}
#'
#' @format Table with 1868 rows and 5 columns
#'
#' @return Pathway comparison result
#'
#' @usage data(comp)
#'
"comp"

#' Pathways matrix of the BRCA gene expression dataset
#'
#' Matrix of pathway activation values for the BRCA dataset. This matrix is
#' extracted from the Results object returned by the \code{hipathia} function
#' by means of the \code{get.paths.matrix} function.
#'
#' \code{path_vals <- get.paths.matrix(results)}
#'
#' @format Matrix with 40 columns and 1868 rows. Row names are Pathway IDs
#' and column names are the TCGA identifyers of the samples.
#'
#' @return Matrix with 40 columns and 1868 rows. Row names are Pathway IDs
#' and column names are the TCGA identifyers of the samples.
#'
#' @usage data(path_vals)
#'
"path_vals"


#' Gene Ontology matrix of the BRCA gene expression dataset
#'
#' Matrix of Gene Ontology terms activation values for the BRCA dataset.
#' This matrix is computed from the Results object returned by the
#' \code{hipathia} function by means of the \code{quantify.terms} function.
#'
#' \code{go_vals <- quantify.terms(results, pathways, "GO")}
#'
#' @format Matrix with 40 columns and 1654 rows. Row names are Gene Ontology
#' terms and column names are the TCGA identifyers of the samples.
#'
#' @return  Matrix with 40 columns and 1654 rows. Row names are Gene Ontology
#' terms and column names are the TCGA identifyers of the samples.
#'
#' @usage data(go_vals)
#'
"go_vals"



#' Uniprot matrix of the BRCA gene expression dataset
#'
#' Matrix of Uniprot functions activation values for the BRCA dataset.
#' This matrix is computed from the Results object returned by the
#' \code{hipathia} function by means of the \code{quantify.terms} function.
#'
#' \code{uni_vals <- quantify.terms(results, pathways, "uniprot")}
#'
#' @format Matrix with 40 columns and 142 rows. Row names are Uniprot functions
#' and column names are the TCGA identifyers of the samples.
#'
#' @return  Matrix with 40 columns and 142 rows. Row names are Uniprot functions
#' and column names are the TCGA identifyers of the samples.
#'
#' @usage data(uni_vals)
#'
"uni_vals"


#' GO annotations to pathways object
#'
#' @format GO annotations to pathways object
#'
#' @return GO annotations to pathways object
#'
#' @usage data(annofuns_GO)
"annofuns_GO"


#' Uniprot annotations to pathways object
#'
#' @format Uniprot annotations to pathways object
#'
#' @return Uniprot annotations to pathways object
#'
#' @usage data(annofuns_uniprot)
"annofuns_uniprot"


#' Entrez - HGNC annotations object
#'
#' @format Entrez - HGNC annotations object
#'
#' @return Entrez - HGNC annotations object
#'
#' @usage data(entrez_hgnc)
"entrez_hgnc"


#' GO annotations object
#'
#' @format GO annotations object
#'
#' @return GO annotations object
#'
#' @usage data(go_bp_annots)
"go_bp_annots"


#' GO graph information
#'
#' @format GO graph information
#'
#' @return GO graph information
#'
#' @usage data(go_bp_frame)
"go_bp_frame"


#' GO graph
#'
#' @format GO graph
#'
#' @return GO graph
#'
#' @usage data(go_bp_net)
"go_bp_net"


#' Uniprot annotations object
#'
#' @format Uniprot annotations object
#'
#' @return Uniprot annotations object
#'
#' @usage data(uni_bp_annots)
"uni_bp_annots"


#' Object of pathways information, HSA
#'
#' @format Object of pathways information, HSA
#'
#' @return Object of pathways information, HSA
#'
#' @usage data(meta_graph_info_hsa)
"meta_graph_info_hsa"


#' Object of pathways information, MMU
#'
#' @format Object of pathways information, MMU
#'
#' @return Object of pathways information, MMU
#'
#' @usage data(meta_graph_info_mmu)
"meta_graph_info_mmu"


#' Object of pathways information, RNO
#'
#' @format Object of pathways information, RNO
#'
#' @return Object of pathways information, RNO
#'
#' @usage data(meta_graph_info_rno)
"meta_graph_info_rno"


#' Translation object
#'
#' @format Translation object
#'
#' @return Translation object
#'
#' @usage data(xref)
"xref"


#' Object of pathways information grouped by Uniprot functions, HSA
#'
#' @format Object of pathways information grouped by Uniprot functions, HSA
#'
#' @return Object of pathways information grouped by Uniprot functions, HSA
#'
#' @usage data(pmgi_hsa_uniprot)
"pmgi_hsa_uniprot"


#' Object of pathways information grouped by GO functions, HSA
#'
#' @format Object of pathways information grouped by GO functions, HSA
#'
#' @return Object of pathways information grouped by GO functions, HSA
#'
#' @usage data(pmgi_hsa_GO)
"pmgi_hsa_GO"


#' Object of pathways information grouped by genes, HSA
#'
#' @format Object of pathways information grouped by genes, HSA
#'
#' @return Object of pathways information grouped by genes, HSA
#'
#' @usage data(pmgi_hsa_genes)
"pmgi_hsa_genes"


#' Object of pathways information grouped by Uniprot functions, MMU
#'
#' @format Object of pathways information grouped by Uniprot functions, MMU
#'
#' @return Object of pathways information grouped by Uniprot functions, MMU
#'
#' @usage data(pmgi_mmu_uniprot)
"pmgi_mmu_uniprot"


#' Object of pathways information grouped by GO functions, MMU
#'
#' @format Object of pathways information grouped by GO functions, MMU
#'
#' @return Object of pathways information grouped by GO functions, MMU
#'
#' @usage data(pmgi_mmu_GO)
"pmgi_mmu_GO"


#' Object of pathways information grouped by genes, MMU
#'
#' @format Object of pathways information grouped by genes, MMU
#'
#' @return Object of pathways information grouped by genes, MMU
#'
#' @usage data(pmgi_mmu_genes)
"pmgi_mmu_genes"


#' Object of pathways information grouped by Uniprot functions, RNO
#'
#' @format Object of pathways information grouped by Uniprot functions, RNO
#'
#' @return Object of pathways information grouped by Uniprot functions, RNO
#'
#' @usage data(pmgi_rno_uniprot)
"pmgi_rno_uniprot"


#' Object of pathways information grouped by GO functions, RNO
#'
#' @format Object of pathways information grouped by GO functions, RNO
#'
#' @return Object of pathways information grouped by GO functions, RNO
#'
#' @usage data(pmgi_rno_GO)
"pmgi_rno_GO"


#' Object of pathways information grouped by genes, RNO
#'
#' @format Object of pathways information grouped by genes, RNO
#'
#' @return Object of pathways information grouped by genes, RNO
#'
#' @usage data(pmgi_rno_genes)
"pmgi_rno_genes"
