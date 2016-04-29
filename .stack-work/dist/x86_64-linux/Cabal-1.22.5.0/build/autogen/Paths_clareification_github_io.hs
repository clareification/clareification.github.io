module Paths_clareification_github_io (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/clare/code/web/clareification.github.io/.stack-work/install/x86_64-linux/lts-5.14/7.10.3/bin"
libdir     = "/home/clare/code/web/clareification.github.io/.stack-work/install/x86_64-linux/lts-5.14/7.10.3/lib/x86_64-linux-ghc-7.10.3/clareification-github-io-0.1.0.0-IPmd6XwcCQnKP34D6Z62TZ"
datadir    = "/home/clare/code/web/clareification.github.io/.stack-work/install/x86_64-linux/lts-5.14/7.10.3/share/x86_64-linux-ghc-7.10.3/clareification-github-io-0.1.0.0"
libexecdir = "/home/clare/code/web/clareification.github.io/.stack-work/install/x86_64-linux/lts-5.14/7.10.3/libexec"
sysconfdir = "/home/clare/code/web/clareification.github.io/.stack-work/install/x86_64-linux/lts-5.14/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "clareification_github_io_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "clareification_github_io_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "clareification_github_io_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "clareification_github_io_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "clareification_github_io_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
