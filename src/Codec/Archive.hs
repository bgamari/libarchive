module Codec.Archive
    ( unpackToDir
    , unpackTarball
    ) where

import           Codec.Archive.Foreign (unpackToDir)
import qualified Data.ByteString       as BS

unpackTarball :: FilePath -- ^ Filepath pointing to @.tar@ file
              -> FilePath -- ^ Filepath to unpack to
              -> IO ()
unpackTarball tarFp dirFp = do
    contents <- BS.readFile tarFp
    unpackToDir dirFp contents
