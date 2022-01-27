--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}

import Data.Monoid (mappend)
import Hakyll
  ( Context,
    applyAsTemplate,
    compile,
    compressCssCompiler,
    constField,
    copyFileCompiler,
    create,
    dateField,
    defaultContext,
    fromList,
    getResourceBody,
    hakyll,
    idRoute,
    listField,
    loadAll,
    loadAndApplyTemplate,
    makeItem,
    match,
    pandocCompiler,
    recentFirst,
    relativizeUrls,
    route,
    setExtension,
    templateBodyCompiler, Configuration, defaultConfiguration, hakyllWith
  )
import Hakyll.Core.Configuration (Configuration(destinationDirectory))

--------------------------------------------------------------------------------
-- generate site in ./docs directory for Github
config :: Configuration 
config = defaultConfiguration 
  { destinationDirectory = "docs"
  }

main :: IO ()
main = hakyllWith config $ do
  match (fromList ["images/*", "favicon.ico"]) $ do
    route idRoute
    compile copyFileCompiler

  match "css/*" $ do
    route idRoute
    compile compressCssCompiler

  match (fromList ["about.rst"]) $ do
    route $ setExtension "html"
    compile $
      pandocCompiler
        >>= loadAndApplyTemplate "templates/default.html" defaultContext
        >>= relativizeUrls

  match "posts/*" $ do
    route $ setExtension "html"
    compile $
      pandocCompiler
        >>= loadAndApplyTemplate "templates/post.html" postCtx
        >>= loadAndApplyTemplate "templates/default.html" postCtx
        >>= relativizeUrls

  match "pages/*" $ do
    route $ setExtension "html"
    compile $
      pandocCompiler
        >>= loadAndApplyTemplate "templates/default.html" pageCtx
        >>= relativizeUrls

  create ["pages.html"] $ do
    route idRoute
    compile $ do
      posts <- loadAll "pages/*"
      let pagesCtx =
            listField "pages" pageCtx (return posts)
              `mappend` constField "title" "Pages"
              `mappend` defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/pages.html" pagesCtx
        >>= loadAndApplyTemplate "templates/default.html" pagesCtx
        >>= relativizeUrls

  create ["archive.html"] $ do
    route idRoute
    compile $ do
      posts <- recentFirst =<< loadAll "posts/*"
      let archiveCtx =
            listField "posts" postCtx (return posts)
              `mappend` constField "title" "Archives"
              `mappend` defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
        >>= loadAndApplyTemplate "templates/default.html" archiveCtx
        >>= relativizeUrls

  match "index.html" $ do
    route idRoute
    compile $ do
      posts <- recentFirst =<< loadAll "posts/*" 
      pages <- loadAll "pages/*"
      let indexCtx =
            listField "posts" postCtx (return posts)
            `mappend` listField "pages" pageCtx (return pages)
              `mappend` defaultContext

      getResourceBody
        >>= applyAsTemplate indexCtx
        >>= loadAndApplyTemplate "templates/default.html" indexCtx
        >>= relativizeUrls

  match "templates/*" $ compile templateBodyCompiler

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
  dateField "date" "%B %e, %Y"
    `mappend` defaultContext

pageCtx :: Context String
pageCtx =
  defaultContext
