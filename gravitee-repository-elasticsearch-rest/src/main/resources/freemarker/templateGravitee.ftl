<#ftl output_format="JSON">
{
   "template":"${indexName}-*",
   "settings":{
      "index.number_of_shards":5,
      "index.number_of_replicas":1,
      "refresh_interval":"1s"
   },
   "mappings":{
      "request":{
         "properties":{
            "api":{
               "type":"string",
               "index":"not_analyzed"
            },
            "api-key":{
               "type":"string",
               "index":"not_analyzed"
            },
            "application":{
               "type":"string",
               "index":"not_analyzed"
            },
            "endpoint":{
               "type":"string",
               "index":"not_analyzed"
            },
            "gateway":{
               "type":"string",
               "index":"not_analyzed"
            },
            "hostname":{
               "type":"string",
               "index":"not_analyzed"
            },
            "id":{
               "type":"string",
               "index":"not_analyzed"
            },
            "local-address":{
               "type":"string",
               "index":"not_analyzed"
            },
            "method":{
               "type":"string",
               "index":"not_analyzed"
            },
            "path":{
               "type":"string",
               "index":"not_analyzed"
            },
            "plan":{
               "type":"string",
               "index":"not_analyzed"
            },
            "remote-address":{
               "type":"string",
               "index":"not_analyzed"
            },
            "request-content-type":{
               "type":"string",
               "index":"not_analyzed"
            },
            "response-content-type":{
               "type":"string",
               "index":"not_analyzed"
            },
            "subscription":{
               "type":"string",
               "index":"not_analyzed"
            },
            "transaction":{
               "type":"string",
               "index":"not_analyzed"
            },
            "uri":{
               "type":"string",
               "index":"not_analyzed"
            }
         }
      },
      "health":{
         "properties":{
            "@timestamp":{
               "type":"date",
               "format":"strict_date_optional_time||epoch_millis"
            },
            "api":{
               "type":"string",
               "index":"not_analyzed"
            },
            "gateway":{
               "type":"string",
               "index":"not_analyzed"
            },
            "hostname":{
               "type":"string",
               "index":"not_analyzed"
            },
            "message":{
               "type":"string",
               "index":"not_analyzed"
            },
            "method":{
               "type":"string",
               "index":"not_analyzed"
            },
            "state":{
               "type":"integer"
            },
            "status":{
               "type":"integer"
            },
            "success":{
               "type":"boolean"
            },
            "url":{
               "type":"string",
               "index":"not_analyzed"
            }
         }
      },
      "monitor":{
         "properties":{
            "@timestamp":{
               "type":"date",
               "format":"strict_date_optional_time||epoch_millis"
            },
            "gateway":{
               "type":"string",
               "index":"not_analyzed"
            },
            "hostname":{
               "type":"string",
               "index":"not_analyzed"
            },
            "jvm":{
               "properties":{
                  "gc":{
                     "properties":{
                        "collectors":{
                           "properties":{
                              "old":{
                                 "properties":{
                                    "collection_count":{
                                       "type":"long"
                                    },
                                    "collection_time_in_millis":{
                                       "type":"long"
                                    }
                                 }
                              },
                              "young":{
                                 "properties":{
                                    "collection_count":{
                                       "type":"long"
                                    },
                                    "collection_time_in_millis":{
                                       "type":"long"
                                    }
                                 }
                              }
                           }
                        }
                     }
                  },
                  "mem":{
                     "properties":{
                        "heap_committed_in_bytes":{
                           "type":"long"
                        },
                        "heap_max_in_bytes":{
                           "type":"long"
                        },
                        "heap_used_in_bytes":{
                           "type":"long"
                        },
                        "heap_used_percent":{
                           "type":"long"
                        },
                        "non_heap_committed_in_bytes":{
                           "type":"long"
                        },
                        "non_heap_used_in_bytes":{
                           "type":"long"
                        },
                        "pools":{
                           "properties":{
                              "old":{
                                 "properties":{
                                    "max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_used_in_bytes":{
                                       "type":"long"
                                    },
                                    "used_in_bytes":{
                                       "type":"long"
                                    }
                                 }
                              },
                              "survivor":{
                                 "properties":{
                                    "max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_used_in_bytes":{
                                       "type":"long"
                                    },
                                    "used_in_bytes":{
                                       "type":"long"
                                    }
                                 }
                              },
                              "young":{
                                 "properties":{
                                    "max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_max_in_bytes":{
                                       "type":"long"
                                    },
                                    "peak_used_in_bytes":{
                                       "type":"long"
                                    },
                                    "used_in_bytes":{
                                       "type":"long"
                                    }
                                 }
                              }
                           }
                        }
                     }
                  },
                  "threads":{
                     "properties":{
                        "count":{
                           "type":"long"
                        },
                        "peak_count":{
                           "type":"long"
                        }
                     }
                  },
                  "timestamp":{
                     "type":"long"
                  },
                  "uptime_in_millis":{
                     "type":"long"
                  }
               }
            },
            "os":{
               "properties":{
                  "cpu":{
                     "properties":{
                        "load_average":{
                           "properties":{
                              "15m":{
                                 "type":"double"
                              },
                              "1m":{
                                 "type":"double"
                              },
                              "5m":{
                                 "type":"double"
                              }
                           }
                        },
                        "percent":{
                           "type":"long"
                        }
                     }
                  },
                  "mem":{
                     "properties":{
                        "free_in_bytes":{
                           "type":"long"
                        },
                        "free_percent":{
                           "type":"long"
                        },
                        "total_in_bytes":{
                           "type":"long"
                        },
                        "used_in_bytes":{
                           "type":"long"
                        },
                        "used_percent":{
                           "type":"long"
                        }
                     }
                  }
               }
            },
            "process":{
               "properties":{
                  "max_file_descriptors":{
                     "type":"long"
                  },
                  "open_file_descriptors":{
                     "type":"long"
                  },
                  "timestamp":{
                     "type":"long"
                  }
               }
            }
         }
      }
   }
}