angular.module 'deployToolApp'
  .filter "dataList", ->
    (data, separator) -> _.join data, separator or ", "
