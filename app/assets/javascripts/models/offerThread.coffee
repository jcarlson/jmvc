class @OfferThread extends Spine.Model
  @configure 'OfferThread'
  @belongsTo 'vehicle', 'Vehicle'
  @hasMany  'messages', 'Message'