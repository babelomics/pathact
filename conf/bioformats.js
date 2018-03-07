BIOFORMATS = {
    "DATAMATRIX_EXPRESSION": {
        value: 'DATAMATRIX_EXPRESSION',
        text: 'Data matrix expression',
        validator: 'ExpressionValidator',
        hint: 'Data matrix expression is a Tab-separated values file. This file has two columns if there is only one sample, and more than two columns if there are many samples. First line is a header and must contain the names of the samples. The first column correspond to gene/probe/protein Ids from (Ensembl gene, HGNC symbol, Entrez id, Affy HG U133A probeset, Affy HG U133B probeset, Affy HG U133-PLUS-2 probeset and Affy HTA 2.0), the next columns correspond to gene expression values in numeric format from each sample.',
        url: 'http://pathact.babelomics.org/doc/doku.php?id=data_matrix_expression_file'
    }
};
