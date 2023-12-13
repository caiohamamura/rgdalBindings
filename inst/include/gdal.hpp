#include <Rcpp.h>
#include <gdal_priv.h>

using namespace Rcpp;

class GDALRasterBandR
{
private:
  GDALRasterBand *band;

public:
  GDALRasterBandR(GDALRasterBand *the_band);

  void CalculateStatistics();

  IntegerVector GetBlockXSize();

  IntegerVector GetBlockYSize();

  int GetRasterDataType();

  int GetXSize();

  int GetYSize();

  double GetNoDataValue();

  template <typename T, typename S>
  S ReadBlock(int iXBlock, int iYBlock);

  template <typename T>
  void WriteBlock(int iXBlock, int iYBlock, T buffer);
};

class GDALDatasetR
{
private:
  GDALDataset *ds;
  bool closed;

public:
  GDALDatasetR(GDALDataset *_ds);

  virtual ~GDALDatasetR(); NULL;
  }

  GDALRasterBandR *GetRasterBand(int nband);

  int GetRasterXSize();

  int GetRasterYSize();

  void Close();
};
GDALDatasetR *create_dataset(
    const char *output,
    int nbands,
    int datatype,
    const char *projection,
    double lat_min,
    double lat_max,
    double lon_min,
    double lon_max,
    std::vector<double> res,
    double nodata,
    CharacterVector co);
void GDALDatasetFinalizer(GDALDatasetR *ds);
void InitializeGDAL();
GDALDatasetR *RGDALOpen(const char *filename, bool readonly);