YourReads.Models.Shelf = Backbone.Model.extend({
  urlRoot: '/api/shelves',
  books: function () {
    if (!this._books) {
      this._books = new YourReads.Collections.Reviews();
    }
    return this._books;
  },
  parse: function (response) {
    if (response.books) {
      this.books().set(response.books);
      delete response.books;
    }
    return response;
  }
});
