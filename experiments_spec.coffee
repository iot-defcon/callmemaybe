describe 'runVariation', ->
  TIME = 1409769977000 - 1
  EXPERIMENT = 'vEAOQHnSSoeUNID5QjS16g'

  beforeEach ->
    window._gaq = []
    window.pageVariations = (jasmine.createSpy(i) for i in [0..10])

    window.cxApi = jasmine.createSpyObj 'cxApi', ['setChosenVariation', 'getChosenVariation']
    cxApi.NOT_PARTICIPATING = -2
    cxApi.NO_CHOSEN_VARIATION = -1

  describe 'when the variation is NOT_PARTICIPATING', ->
    it 'runs no variations', ->
      cxApi.getChosenVariation.and.callReturn cxApi.NOT_PARTICIPATING
      runVariation(TIME)
      expect(window._gaq.length).toEqual 0

  describe 'when the variation is NO_CHOSEN_VARIATION', ->
    it 'sets a random variation and runs it', ->
      cxApi.getChosenVariation.and.callReturn cxApi.NO_CHOSEN_VARIATION
      spyOn(Math, 'floor').and.callReturn 5
      runVariation(TIME)
      expect(window._gaq[0]).toEqual [ '_trackEvent', 'Experiments', 'variation', EXPERIMENT, 5, true ]
      expect(cxApi.setChosenVariation).toHaveBeenCalledWith 5, EXPERIMENT
      expect(pageVariations[5]).toHaveBeenCalled()

  describe 'when the variation is set', ->
    it 'runs it', ->
      cxApi.getChosenVariation.and.callReturn 2
      runVariation(TIME)
      expect(window._gaq[0]).toEqual [ '_trackEvent', 'Experiments', 'variation', EXPERIMENT, 2, true ]
      expect(cxApi.setChosenVariation).not.toHaveBeenCalled()

      expect(pageVariations[1]).not.toHaveBeenCalled()
      expect(pageVariations[2]).toHaveBeenCalled()