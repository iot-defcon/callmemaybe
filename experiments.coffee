pageVariations = [
  ->
  ->
    $("#nav1 a[href='/top_words.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/']").parent("li").remove()
  ->
    $("#nav1 a[href='/favorites.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/popular.php?character=A']").parent("li").remove()
  ->
    $("#nav1 a[href='/game.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/thesaurus.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/name.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/products.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/add.php']").parent("li").remove()
  ->
    $("#nav1 a[href='/users.php']").parent("li").remove()
]

experiment = "vEAOQHnSSoeUNID5QjS16g"
variation = cxApi.getChosenVariation(experiment)

if new Date().getTime() < 1409769977000
  if variation isnt cxApi.NOT_PARTICIPATING
    if variation is cxApi.NO_CHOSEN_VARIATION
      variation = Math.floor(Math.random() * 1000000000) % pageVariations.length
      cxApi.setChosenVariation variation, experiment
    pageVariations[variation]()

    window._gaq = window._gaq or []
    window._gaq.push [
      "_trackEvent"
      "Experiments"
      "variation"
      experiment
      variation
      true
    ]
