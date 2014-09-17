describe 'runVariation', ->
  TIME = 1409769977000 - 1

  beforeEach ->
    window._gaq = []

    window.cxApi = jasmine.createSpyObj 'cxApi', ['setChosenVariation', 'getChosenVariation']
    cxApi.NOT_PARTICIPATING = -2
    cxApi.NO_CHOSEN_VARIATION = -1

  it 'ignores users who do not participate', ->
    cxApi.getChosenVariation.and.callReturn cxApi.NOT_PARTICIPATING
    runVariation(TIME)
    expect(window._gaq.length).toEqual 0

  it 'sets a variation randomly', ->
    cxApi.getChosenVariation.and.callReturn cxApi.NO_CHOSEN_VARIATION
    spyOn(Math, 'floor').and.callReturn 5
    runVariation(TIME)
    expect(window._gaq[0]).toEqual [ '_trackEvent', 'Experiments', 'variation', 'vEAOQHnSSoeUNID5QjS16g', 5, true ]
    expect(cxApi.setChosenVariation).toHaveBeenCalledWith 5, 'vEAOQHnSSoeUNID5QjS16g'