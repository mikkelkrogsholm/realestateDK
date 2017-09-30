#' @title Property prices in housing market
#' @description Property prices in housing market by area, property category, prices of completed transactions and time
#' @references \url{http://rkr.statistikbank.dk/BM010}
#' @param OMR20 is the area. Call realestateDK::table_vars("BM010") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM010") to see all available parameter settings.
#' @param PRIS20 is the prices of completed transactions. Call realestateDK::table_vars("BM010") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM010") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM010(EJKAT20 = "1", OMR20 = "00", PRIS20 = "UDBUD", Tid = "1992K1")

BM010 <- function(EJKAT20, OMR20, PRIS20, Tid, lang = "en"){
        statsDK::retrieve_data("BM010",EJKAT20 = EJKAT20, OMR20 = OMR20, PRIS20 = PRIS20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Property prices in housing market
#' @description Property prices in housing market by postal code, property category, prices of completed transactions and time
#' @references \url{http://rkr.statistikbank.dk/BM011}
#' @param PNR20 is the postal code. Call realestateDK::table_vars("BM011") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM011") to see all available parameter settings.
#' @param PRIS20 is the prices of completed transactions. Call realestateDK::table_vars("BM011") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM011") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM011(EJKAT20 = "1", PNR20 = "1000", PRIS20 = "UDBUD", Tid = "1992K1")

BM011 <- function(EJKAT20, PNR20, PRIS20, Tid, lang = "en"){
        statsDK::retrieve_data("BM011",EJKAT20 = EJKAT20, PNR20 = PNR20, PRIS20 = PRIS20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Movements in housing market
#' @description Movements in housing market by area, property category, type of movement and time
#' @references \url{http://rkr.statistikbank.dk/BM020}
#' @param OMR20 is the area. Call realestateDK::table_vars("BM020") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM020") to see all available parameter settings.
#' @param BEV20 is the type of movement. Call realestateDK::table_vars("BM020") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM020") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM020(BEV20 = "SALG", EJKAT20 = "1", OMR20 = "00", Tid = "2004K1")

BM020 <- function(BEV20, EJKAT20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("BM020",BEV20 = BEV20, EJKAT20 = EJKAT20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Movements in housing market
#' @description Movements in housing market by postal code, property category, type of movement and time
#' @references \url{http://rkr.statistikbank.dk/BM021}
#' @param PNR20 is the postal code. Call realestateDK::table_vars("BM021") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM021") to see all available parameter settings.
#' @param BEV20 is the type of movement. Call realestateDK::table_vars("BM021") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM021") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM021(BEV20 = "SALG", EJKAT20 = "1", PNR20 = "1000", Tid = "2004K1")

BM021 <- function(BEV20, EJKAT20, PNR20, Tid, lang = "en"){
        statsDK::retrieve_data("BM021",BEV20 = BEV20, EJKAT20 = EJKAT20, PNR20 = PNR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Times-on-market (days)
#' @description Times-on-market (days) by area, property category and time
#' @references \url{http://rkr.statistikbank.dk/BM030}
#' @param OMR20 is the area. Call realestateDK::table_vars("BM030") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM030") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM030") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM030(EJKAT20 = "1", OMR20 = "00", Tid = "2004K1")

BM030 <- function(EJKAT20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("BM030",EJKAT20 = EJKAT20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Times-on-market (days)
#' @description Times-on-market (days) by postal code, property category and time
#' @references \url{http://rkr.statistikbank.dk/BM031}
#' @param PNR20 is the postal code. Call realestateDK::table_vars("BM031") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("BM031") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("BM031") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::BM031(EJKAT20 = "1", PNR20 = "1000", Tid = "2004K1")

BM031 <- function(EJKAT20, PNR20, Tid, lang = "en"){
        statsDK::retrieve_data("BM031",EJKAT20 = EJKAT20, PNR20 = PNR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Danish mortgage banks lending activity
#' @description Danish mortgage banks lending activity by area, datatype, property category, loan type and time
#' @references \url{http://rkr.statistikbank.dk/UL10}
#' @param OMR20 is the area. Call realestateDK::table_vars("UL10") to see all available parameter settings.
#' @param DATATYP20 is the datatype. Call realestateDK::table_vars("UL10") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("UL10") to see all available parameter settings.
#' @param LANTYP20 is the loan type. Call realestateDK::table_vars("UL10") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("UL10") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::UL10(DATATYP20 = "2", EJKAT20 = "11", LANTYP20 = "111", OMR20 = "A", Tid = "1995K1")

UL10 <- function(DATATYP20, EJKAT20, LANTYP20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("UL10",DATATYP20 = DATATYP20, EJKAT20 = EJKAT20, LANTYP20 = LANTYP20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Danish mortgage banks lending activity
#' @description Danish mortgage banks lending activity by area, instalment, property category, loan type and time
#' @references \url{http://rkr.statistikbank.dk/UL30}
#' @param OMR20 is the area. Call realestateDK::table_vars("UL30") to see all available parameter settings.
#' @param AFDRAG is the instalment. Call realestateDK::table_vars("UL30") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("UL30") to see all available parameter settings.
#' @param LANTYP20 is the loan type. Call realestateDK::table_vars("UL30") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("UL30") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::UL30(AFDRAG = "0", EJKAT20 = "11", LANTYP20 = "111", OMR20 = "A", Tid = "2008K1")

UL30 <- function(AFDRAG, EJKAT20, LANTYP20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("UL30",AFDRAG = AFDRAG, EJKAT20 = EJKAT20, LANTYP20 = LANTYP20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Housing market
#' @description Housing market by area, property category, dwellings and time
#' @references \url{http://rkr.statistikbank.dk/UDB010}
#' @param OMR20 is the area. Call realestateDK::table_vars("UDB010") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("UDB010") to see all available parameter settings.
#' @param BOLA20 is the dwellings. Call realestateDK::table_vars("UDB010") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("UDB010") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::UDB010(BOLA20 = "6", EJKAT20 = "1", OMR20 = "00", Tid = "2004M01")

UDB010 <- function(BOLA20, EJKAT20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("UDB010",BOLA20 = BOLA20, EJKAT20 = EJKAT20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Property prices
#' @description Property prices by area, property category, prices and time
#' @references \url{http://rkr.statistikbank.dk/UDB020}
#' @param OMR20 is the area. Call realestateDK::table_vars("UDB020") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("UDB020") to see all available parameter settings.
#' @param BOLB20 is the prices. Call realestateDK::table_vars("UDB020") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("UDB020") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::UDB020(BOLB20 = "4", EJKAT20 = "1", OMR20 = "00", Tid = "2004M01")

UDB020 <- function(BOLB20, EJKAT20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("UDB020",BOLB20 = BOLB20, EJKAT20 = EJKAT20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }


#' @title Supply and storage times (days)
#' @description Supply and storage times (days) by area, property category, time on market and time
#' @references \url{http://rkr.statistikbank.dk/UDB030}
#' @param OMR20 is the area. Call realestateDK::table_vars("UDB030") to see all available parameter settings.
#' @param EJKAT20 is the property category. Call realestateDK::table_vars("UDB030") to see all available parameter settings.
#' @param BOLC20 is the time on market. Call realestateDK::table_vars("UDB030") to see all available parameter settings.
#' @param Tid is the time. Call realestateDK::table_vars("UDB030") to see all available parameter settings.
#' @param lang whether to return the data in english or danish.
#' @return a tibble
#' @export
#' @examples
#' realestateDK::UDB030(BOLC20 = "8", EJKAT20 = "1", OMR20 = "00", Tid = "2004M01")

UDB030 <- function(BOLC20, EJKAT20, OMR20, Tid, lang = "en"){
        statsDK::retrieve_data("UDB030",BOLC20 = BOLC20, EJKAT20 = EJKAT20, OMR20 = OMR20, Tid = Tid, lang = lang,
 base_url = "http://api.statbank.dk/v1/s20/")
  }
