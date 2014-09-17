# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#country_chb").on "click", "input#country_ids_", ->
    #alert "You clicked on the sub-div with id = " + this.value + this.checked
    cities = []
    country = []
    $("input#city_ids_:checked").each ->
      cities.push this.value
    $("input#country_ids_:checked").each ->
      country.push this.value
    console.log country
    $.ajax 
      url: "get_cities.js" 
      type: "GET"
      data: { country_id: this.value, country_ids: country, cities_ids: cities } 
      #success: (data) ->
        #alert "Data Saved: " + data
        #$("#country_chb").html "<%= j render #{data} %>"
        #for key, value of data
          #alert "#{key} and #{value.name}"
