% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/plot.surface.R
\name{plot.surface}
\alias{plot.surface}
\title{3D plot  of a surface read in by x3pr package}
\usage{
\method{plot}{surface}(surf.file.info, num.x.pts = NULL, num.slices = NULL,
  aspect = c(1, 0.3, 0.2), plot.type = "points")
}
\arguments{
\item{surf.file.info}{information read in by \code{read.x3p}, \code{read.digital.surf.file} or \code{read.zeiss.lms.file}}

\item{num.x.pts}{number of points desired in the x-direction.}

\item{num.slices}{number of points desired in the y-direction.}

\item{aspect}{aspect ratios}

\item{plot.type}{"points" or "surface"}
}
\value{
a plot.
}
\description{
3D plot  of a surface
}
\details{
3D plot  of a surface. X3P, SUR and LMS are all plotted by this function.
Some type of decimation is usually
required so that the surface can be rendered fast. The arguments num.x.pts
and num.slices allow the user to subsample the surface down to the desited size.
If the number of points is still potentially large, the function will prompt the
user if they want to continue.
}
\examples{
file.path <- system.file("extdata", "glock.x3p", package="x3pr")
glock.x3p.info <- read.x3p(file.path)
plot3D.x3p.file(glock.x3p.info, 1024, 80, aspect=c(1,3,0.4), plot.type="surface")
}
\references{
http://open-gps.sourceforge.net/
}

