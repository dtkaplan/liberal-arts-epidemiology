cat("Updating the Math 135 software.\nIn progress ...")

# kill any redefinition of c as a function
if (exists("c",mode="function",inherits=FALSE)) { remove(c) }

# A handy way to update the software ...
update.the.math135.software = function( ) source("http://dl.dropbox.com/u/5098197/math135.r")

# install Hmisc first if needed
options(warn=-1)
foo = require(Hmisc)
options(warn=0)
if( !foo ) {
   install.packages("Hmisc")
}

cat(" 0 ")

# install the mosaic package
options(warn=-1)
foo = require(mosaic)
options(warn=0)
if( !foo ) {
  install.packages("mosaic", repos="http://R-Forge.R-project.org")
  require(mosaic)
}

cat(" 1 ")

# update on Fetch data
source( "http://dl.dropbox.com/u/5098197/Math135/Software/fetchData.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/math135-extras.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/smoothers.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/nlsModel.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/linear-algebra.R" );
# These are just duplicates of what's in the mosaic package
source( "http://dl.dropbox.com/u/5098197/Math135/Software/newD.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/newAntiD.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/plt.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/adapt_seq.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/rPoly.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/xypoly.R" );
cat(" 2 ")

# Manipulate files
require(manipulate)
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mTaylor.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/DiffEQ.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/m2Fit.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mFit.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mGradSearch.R" );

cat(" 3 ")

source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mPP.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mEulerIntegrate.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mGlassPattern.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mPhaseLine.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mDerivs.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mSIR.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/practice.max.R" );

cat(" 4 ")


source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mGrad.R" );
cat(" 5 ")

source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mFitExp.R" );
cat(" 6 ")
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mFitPoly.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mFitSigmoidal.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mFitSines.R" );
cat(" 7 ")
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mLinAlgebra.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mLineFit.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/practice.max.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mBias.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mBayes.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mSDGame.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mHypTest.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mPP.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mCI.R" );
source( "http://dl.dropbox.com/u/5098197/Math135/Software/mosaicManip/mLM.R" );



source( "http://dl.dropbox.com/u/5098197/Math135/Software/graphpaper.r" );

cat(" 8 ")


# list each of the files to be included here.

#source( "http://dl.dropbox.com/u/5098197/Math135/Software/math135.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/vsolve.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/antiD.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/graphpaper.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/for-instructors.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/for-optimization.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/lake-software.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/DiffEQ.r" );
#source( "http://dl.dropbox.com/u/5098197/Math135/Software/DiffEQnew.r" );


# AFTER math135.r has been sourced, stock up the local library
#.load.to.local.library("kepler-mars.csv");
#.load.to.local.library("Income-Housing.csv");


# ISM softare from the workspace.
#
#con4756334 = url("http://www.macalester.edu/~kaplan/ISM/ISM.Rdata")
#load(con4756334)
#close(con4756334)
#remove(con4756334)
#

# Read the data files


cat(" Done.\n")
