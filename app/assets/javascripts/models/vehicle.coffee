class @Vehicle extends Spine.Model
  @configure 'Vehicle', 'year', 'make', 'model', 'vin'
  @hasOne 'offerThread', 'OfferThread'
  @hasMany 'offerThreads', 'OfferThread'
