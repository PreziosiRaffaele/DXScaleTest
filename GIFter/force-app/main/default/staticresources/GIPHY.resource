window._GIPHY = (function() {
    var apiKey = "3qcQvCywr6l09JOqpX7yBu2RrrBFj6Tj";
    var _results = null;

    return { //public API
        getApiKey: function() {
            return apiKey;
        },
        getResults: function() {
            return _results;
        },
        setResults: function(results) {
          _results = results
        }
    };
}());

