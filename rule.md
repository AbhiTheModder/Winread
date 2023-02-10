# FunReader data collection rules description
[example](https://github.com/AbhiTheModder/Winread/blob/master/file/spider.json)


```
[
  {
    "sourceName": "",
    "sourceUrl": "",
    "head": "",
    "recommend": [
      {
        "recommendName": "",
        "recommendUrl": ""
      }
    ],
    "recommendBooks": {
      "books": "",
      "name": "",
      "author": "",
      "cover": "",
      "intro": "",
      "category": "",
      "lastChapter": "",
      "bookUrl": ""
    },
    "search": {
      "url": "",
      "method": "",
      "body": "{\"searchkey\":\"&key&\"}",
      "contentType": ""
    },
    "searchBooks": {
      "books": "",
      "name": "",
      "author": "",
      "cover": "",
      "intro": "",
      "category": "",
      "lastChapter": "",
      "bookUrl": ""
    },
    "bookInfo": {
      "name": "",
      "author": "",
      "cover": "",
      "intro": "",
      "category": "",
      "lastChapter": "",
      "updateTime": "",
      "chapterUrl": ""
    },
    "chapter": {
      "chapterList": "",
      "chapterName": "",
      "chapterUrl": "",
      "nextPage": ""
    },
    "chapterContent": {
      "content": "",
      "nextPage": "",
      "replaceReg": ""
    }
  }
]
```

The data is extracted through XPATH rules!

## sourceName
Book source name

## sourceUrl
The domain name of the source of the book

## head
Request header parameters，as"{\"abc\":\"a\"}"

## recommend
Recommended list
|  field   | illustrate  |
|  ----  | ----  |
|  recommendName  | Recommended column name  |
|  recommendUrl  | Links to recommended columns  |



## recommendBooks
List of recommended column books

|  Field | Description |
|  ----  | ----  |
|  books  | Recommended column book list collection, if there is a page turn, fixed &page& to page number |
|  name  | The book title | is parsed in the collection item
|  author  | Resolve the author | in the collection item
|  cover  | Parse the cover page | in the collection item
|  intro  | Introduction to parsing in collection items |
|  category  | Parse the classification | in the collection item
|  lastChapter  | The last chapter name | is resolved in the collection item
|  bookUrl  | Parse book links in the collection item |

## search
Search

|  Field | Description |
|  ----  | ----  |
|  url  | Link |
|  method  | Request Method |
|  body  | The parameter that needs to be passed in when post, "{"searchkey":"&key&", the search keyword is &key&fixed writing |
|  contentType  | Request header contentType |

## searchBooks
Search the list of novels

|  Field | Description |
|  ----  | ----  |
|  books  | Recommended column book list collection |
|  name  | The book title | is parsed in the collection item
|  author  | Resolve the author | in the collection item
|  cover  | Parse the cover page | in the collection item
|  intro  | Introduction to parsing in collection items |
|  category  | Parse the classification | in the collection item
|  lastChapter  | The last chapter name | is resolved in the collection item
|  bookUrl  | Parse book links in the collection item |

## bookInfo
Book details

|  Field | Description |
|  ----  | ----  |
|  name  | Book title |
|  author  | Author |
|  cover  | Cover |
|  intro  | Introduction |
|  category  | Classification |
|  lastChapter  | The last chapter is titled |
|  updateTime  | Update time |
|  chapterUrl  | All chapter list links (taken from the resolved URL if not empty, resolved on the current page if empty) |

## chapter
Chapter parsing rules
|  Field | Description |
|  ----  | ----  |
|  chapterList  | Chapter List Collection |
|  chapterName  | Collection item resolves chapter name |
|  chapterUrl  | Collection item parses chapter url |
|  nextPage  | Next page url, if not empty, loop to get all chapter |

## chapterContent
Chapter content rules
|  Field | Description |
|  ----  | ----  |
|  content  | Chapter Contents |
|  nextPage  | The next xpath, if not empty, loops to get the next page |
|  replaceReg  | Regular replacement content |
