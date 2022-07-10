require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://api.notion.com/v1/pages/自分のデータベースID")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Notion-Version"] = '2022-06-28'
request["Authorization"] = 'Bearer 自分のベアラートークン'

response = http.request(request)
puts response.read_body
#rubyでの呼び出し
# {"object":"list",
#  "results":[{"object":"page",
#              "id":"1b03f946-59ee-4f4d-be9a-1960dcd171a3",
#              "created_time":"2022-07-06T19:55:00.000Z",
#              "last_edited_time":"2022-07-07T05:34:00.000Z",
#              "created_by":{"object":"user","id":"358bc88c-ccd1-4fa0-a996-3b342e56b0a6"},
#              "last_edited_by":{"object":"user","id":"358bc88c-ccd1-4fa0-a996-3b342e56b0a6"},
#              "cover":null,
#              "icon":null,
#              "parent":{"type":"database_id","database_id":"d6b1e5d2-6ccd-4748-b00b-4d70bba091be"},
#              "archived":false,
#              "properties":{"description":{"id":"%5B%3Aq%5B"},"title":{"id":"title"}},
#              "url":"https://www.notion.so/1b03f94659ee4f4dbe9a1960dcd171a3"
#             },
#            ],
#   "next_cursor":null,
#   "has_more":false,
#   "type":"page",
#   "page":{}
# }

#ターミナルでの呼び出し
# {"object":"list",
#   "results":[ {"object":"page",
#                "id":"1b03f946-59ee-4f4d-be9a-1960dcd171a3",
#                "created_time":"2022-07-06T19:55:00.000Z",
#                "last_edited_time":"2022-07-07T05:34:00.000Z",
#                "created_by":{"object":"user","id":"358bc88c-ccd1-4fa0-a996-3b342e56b0a6"},
#                "last_edited_by":{"object":"user","id":"358bc88c-ccd1-4fa0-a996-3b342e56b0a6"},
#                "cover":null,
#                "icon":null,
#                "parent":{"type":"database_id","database_id":"d6b1e5d2-6ccd-4748-b00b-4d70bba091be"},
#                "archived":false,
#                "properties":{"description":{"id":"%5B%3Aq%5B",
#                                            "type":"rich_text",
#                                            "rich_text":[
#                                                  {"type":"text",
#                                                   "text":{"content":"50分殴る","link":null},
#                                                   "annotations":{"bold":false,"italic":false,"strikethrough":false,"underline":false,"code":false,"color":"default"},
#                                                   "plain_text":"50分殴る",
#                                                   "href":null
#                                                  }
#                                             ]
#                                           },
#                             "title":{"id":"title",
#                                      "type":"title",
#                                      "title":[
#                                          {"type":"text",
#                                           "text":{"content":"今日のトレーニング","link":null},
#                                           "annotations":{"bold":false,"italic":false,"strikethrough":false,"underline":false,"code":false,"color":"default"},
#                                           "plain_text":"今日のトレーニング","href":null
#                                           }
#                                      ]
#                                     }
#                             },
#                "url":"https://www.notion.so/1b03f94659ee4f4dbe9a1960dcd171a3"
#               },
#             ] 
# }