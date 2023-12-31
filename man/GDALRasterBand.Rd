% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gdalBindings.R
\name{GDALRasterBand}
\alias{GDALRasterBand}
\title{R6 Class GDALRasterBand wrapping}
\description{
Wrapping class for GDALRasterBand C++ API exporting GetBlockXSize, GetBlockYSize, ReadBlock,
WriteBlock for better IO speed.
}
\note{
This constructor must not be called at all, this is automatically called
from GDALDataset$GetRasterBand function.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GDALRasterBand-new}{\code{GDALRasterBand$new()}}
\item \href{#method-GDALRasterBand-ReadBlock}{\code{GDALRasterBand$ReadBlock()}}
\item \href{#method-GDALRasterBand-WriteBlock}{\code{GDALRasterBand$WriteBlock()}}
\item \href{#method-GDALRasterBand-GetBlockXSize}{\code{GDALRasterBand$GetBlockXSize()}}
\item \href{#method-GDALRasterBand-GetBlockYSize}{\code{GDALRasterBand$GetBlockYSize()}}
\item \href{#method-GDALRasterBand-GetXSize}{\code{GDALRasterBand$GetXSize()}}
\item \href{#method-GDALRasterBand-CalculateStatistics}{\code{GDALRasterBand$CalculateStatistics()}}
\item \href{#method-GDALRasterBand-GetYSize}{\code{GDALRasterBand$GetYSize()}}
\item \href{#method-GDALRasterBand-GetNoDataValue}{\code{GDALRasterBand$GetNoDataValue()}}
\item \href{#method-GDALRasterBand-GetRasterDataType}{\code{GDALRasterBand$GetRasterDataType()}}
\item \href{#method-GDALRasterBand-clone}{\code{GDALRasterBand$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-new"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-new}{}}}
\subsection{Method \code{new()}}{
Creates a new GDALRasterBand
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$new(band)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{band}}{The C++ pointer to the GDALRasterBandR object.}

\item{\code{datatype}}{The GDALDataType for this band}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
An object of GDALRasterBand R6 class
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-ReadBlock"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-ReadBlock}{}}}
\subsection{Method \code{ReadBlock()}}{
Efficiently reads a raster block
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$ReadBlock(iXBlock, iYBlock)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{iXBlock}}{Integer. The i-th column block to access. The \code{iXBlock} will be offset
\eqn{ BLOCKXSIZE \times iXBlock }{BLOCKXSIZE x iXBlock} from the origin.}

\item{\code{iYBlock}}{Integer. The i-th row block to access. The \code{iYBlock} will be offset
\eqn{ BLOCKYSIZE \times iYBlock }{BLOCKYSIZE x iYBlock} from the origin.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
The returned Vector will be single dimensional with the length
\eqn{ BLOCKXSIZE \times BLOCKYSIZE }{BLOCKXSIZE x BLOCKYSIZE}. If you use matrix(, ncol=BLOCKXSIZE)
the matrix returned will actually be transposed. You should either transpose it or you can
calculate the indices using \eqn{ y \cdot xsize + x }{y*xsize + x}
}

\subsection{Returns}{
RawVector for GDALDataType$GDT_Byte, IntegerVector for int types and
NumericVector for floating point types.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-WriteBlock"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-WriteBlock}{}}}
\subsection{Method \code{WriteBlock()}}{
Efficiently writes a raster block
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$WriteBlock(iXBlock, iYBlock, buffer)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{iXBlock}}{Integer. The i-th column block to write. The \code{iXBlock} will be
offset \eqn{ BLOCKXSIZE \times iXBlock }{BLOCKXSIZE x iXBlock} from the origin.}

\item{\code{iYBlock}}{Integer. The i-th row block to write. The \code{iYBlock} will be offset
\eqn{ BLOCKYSIZE \times iYBlock }{BLOCKYSIZE x iYBlock} from the origin.}

\item{\code{buffer}}{RawVector/IntegerVector/NumericVector depending on the GDALDataType.
This should be a 1D vector with size equal to raster
\eqn{ BLOCKXSIZE \times BLOCKYSIZE }{BLOCKXSIZE x BLOCKYSIZE}.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
The returned Vector will be single dimensional with the length
\eqn{ BLOCKXSIZE \times BLOCKYSIZE }{BLOCKXSIZE x BLOCKYSIZE}.
If you use matrix(, ncol=BLOCKXSIZE) the matrix returned will actually be transposed.
You should either transpose it or you can calculate the indices using
\eqn{ y \cdot xsize + x }{ y*xsize + x }.
}

\subsection{Returns}{
Nothing
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetBlockXSize"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetBlockXSize}{}}}
\subsection{Method \code{GetBlockXSize()}}{
Get the block width
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetBlockXSize()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
An integer indicating block width
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetBlockYSize"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetBlockYSize}{}}}
\subsection{Method \code{GetBlockYSize()}}{
Get the block height
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetBlockYSize()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
An integer indicating block height
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetXSize"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetXSize}{}}}
\subsection{Method \code{GetXSize()}}{
Get the band width
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetXSize()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
An integer indicating band width
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-CalculateStatistics"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-CalculateStatistics}{}}}
\subsection{Method \code{CalculateStatistics()}}{
Calculate statistics for the \code{\link{GDALRasterBand}}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$CalculateStatistics()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
nothing
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetYSize"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetYSize}{}}}
\subsection{Method \code{GetYSize()}}{
Get the band height
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetYSize()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
An integer indicating band height
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetNoDataValue"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetNoDataValue}{}}}
\subsection{Method \code{GetNoDataValue()}}{
Get band no data value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetNoDataValue()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Numeric indicating no data value
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-GetRasterDataType"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-GetRasterDataType}{}}}
\subsection{Method \code{GetRasterDataType()}}{
Get band datatype
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$GetRasterDataType()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Numeric indicating the datatype
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GDALRasterBand-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GDALRasterBand-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GDALRasterBand$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
