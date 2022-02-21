function onCreate()
  --background
  makeAnimatedLuaSprite('fg','LoudSpeaker_Moving',-600,650)
  addAnimationByPrefix('fg','idle','StereoMoving',24,true)
  objectPlayAnimation('fg','idle',true)
  makeAnimatedLuaSprite('bg2','Pillar_BG_Stage',-800,-600)
  addAnimationByPrefix('bg2','idle','Pillar_BG_Stage',24,true)
  objectPlayAnimation('bg2','idle',true)
  makeLuaSprite('back','bg',-800,-500)
  scaleObject('back',1.5,1.5)
  
  addLuaSprite('back',false)
  addLuaSprite('bg2',false)
  addLuaSprite('fg',false)
  
  close(true);
  end