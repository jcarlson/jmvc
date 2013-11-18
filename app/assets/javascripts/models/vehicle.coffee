class @Vehicle extends Spine.Model
  @configure 'Vehicle', 'year', 'make', 'model', 'vin'
  @hasMany 'messages', 'Message'