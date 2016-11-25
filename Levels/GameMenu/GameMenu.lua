----------------------------------------------------------------------------
--
-- Description :  GameMenu
--
--
----------------------------------------------------------------------------

--------------------------------------------------------
-- Name: Level.OnLoaded()
-- Desc:
-------------------------------------------------------- 
function Level.OnLoaded( cutsceneId )

     -- forlik System:SetVar('r_glow', true );
     -- forlik System:SetVar('r_glow_r', 1.5 );

     Level.AddCinematicCamera( 'Levels\\GameMenu\\camera.scm' );

     -- Initialize scene

     local ns = Level.NewCutScene( 'gmenu' , 0.0,  4807.0 );

     CutScene.SetCamera( ns, 'Levels\\GameMenu\\camera.scm' );
     CutScene.SetLooped( ns, true );

     CutScene.Activate( ns );

     Level.Credits = false;
     
     --Level.NextLevel = "pgift";
     
     if ( cutsceneId != 3 ) then
        
      if ( cutsceneId == 1 or Level.NextLevel == nil or Level.NextLevel == "" ) then
         Level.SetHudOverlay( "MainMenu" );
         Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.45#sounds\\music\\b_dark4.ogg" );
         Level.SetMusic( Level.MUSIC_MOOD_DEFAULT, 6.0 );               
      else
         Level.SetHudOverlay( "Equipment", Level.NextLevel );
         Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.5#sounds\\music\\briefing.ogg" );
         Level.SetMusic( Level.MUSIC_MOOD_DEFAULT, 3.0 );
         Level.EnableAlarmSound(true);        
         Level.NextLevel = nil;
      end;
      
     end;

     CutScene.SetFrame( ns, 200.0 );

     Level.PrecacheCutScenes();
     CutScene.PreCache( ns, 200.0 );

     CutScene.Play( ns, 15.0 );

     Level.SetHudEffect("noise", true );
     Level.SetHudEffect("lines", true );
     
     CutScene.SetBlurEffect( ns, 0.5 );
                    
     if ( cutsceneId == 3 ) then
        Level.SetColorPostFilter( 1.0, 0.0, 0.0, 0.65 );
        Level.OnCreditsMenu( 2.0 );        
        Level.SetHudFadeIn( 3.0 );
     else   
        -- forlik Level.SetTablePostFilter( 1.0, 1.0, 0.0, "Levels\\GameMenu\\postfilter.dds" );             
        Level.SetHudFadeIn( 1.0 );
        Level.SetColorPostFilter( 1.0, 1.0, 1.0, 0.75 );
     end;
     

end;

--------------------------------------------------------
-- Name: Level.OnCreditsMenu()
-- Desc:
-------------------------------------------------------- 
function Level.OnCreditsMenu( musicFadeTime )

   --Level.SetHudEffect("lines", false );
   
   Level.SetMusic( Level.MUSIC_MOOD_NONE, 0.5 );
   Level.SetMusic( Level.MUSIC_MOOD_CLEARALL, 0.0 );
    
   Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.45#sounds\\music\\b_dark4.ogg" );
   Level.SetMusic( Level.MUSIC_MOOD_DEFAULT, musicFadeTime );
   
   Level.SetHudOverlay("credits", "game:Levels\\Credits\\credits.txt<1.0>" );
   -- forlik Level.SetTablePostFilter( 1.0, 1.0, 0.0, "Levels\\Credits\\filter_1.dds" );
      
   Level.Credits = true;
         
end;

--------------------------------------------------------
-- Name: Level.OnLockCreditsExit()
-- Desc:
-------------------------------------------------------- 
function Level.OnLockCreditsExit( lock )
   
   Level.Credits = lock;
   
end;

--------------------------------------------------------
-- Name: Level.OnOverlayMenu()
-- Desc:
-------------------------------------------------------- 
function Level.OnOverlayMenu( menuId )

       
end;

--------------------------------------------------------
-- Name: Level.OnCancelBriefing()
-- Desc:
-------------------------------------------------------- 
function Level.OnCancelBriefing()

    Level.EnableAlarmSound(false);

    Level.SetMusic( Level.MUSIC_MOOD_NONE, 0.5 );
    Level.SetMusic( Level.MUSIC_MOOD_CLEARALL, 0.0 );
    
    Level.AddMusic( Level.MUSIC_MOOD_DEFAULT, "#0.45#sounds\\music\\b_dark4.ogg" );
    Level.SetMusic( Level.MUSIC_MOOD_DEFAULT, 0.5 ); 
   
end;


--------------------------------------------------------
-- Name: Level.OnFinighCutScene()
-- Desc:
-------------------------------------------------------- 
function Level.OnFinishCutScene( cutscene, interruped )

   if ( Level.Credits == true and interruped == true ) then
   
      -- Restore main menu overlay..
      
      Level.SetHudOverlay( "MainMenu" , "from_credits" );
      --Level.SetHudEffect("lines", true );
      Level.SetColorPostFilter( 1.0, 1.0, 0.8, 0.5, 0.5 );
      -- forlik Level.SetTablePostFilter( 1.0, 1.0, 0.0, "Levels\\GameMenu\\postfilter.dds" );
      
      Level.Credits = false;
   
   end;

end;

--------------------------------------------------------
-- Name: Level.OnNewGame()
-- Desc:
-------------------------------------------------------- 
function Level.OnNewGame( levelName )

 -- forlik: disable movies

 --if ( levelName == "airbase" ) then
 --   return "rolik_addon",1;
 --elseif ( levelName == "uboat" ) then
 --   return "rolik_addon",2;
 --elseif ( levelName == "whitehead" ) then
 --   return "rolik_addon",3;
 --elseif ( levelName == "dora" ) then
 --   return "rolik_addon",4;
 --elseif ( levelName == "pgift" ) then
 --   return "rolik_addon",5;
 --elseif ( levelName == "cowboy" ) then
 --   return "rolik_addon",6; 
 --elseif ( levelName == "otstupniki" ) then
 --   return "rolik_addon",7; 
 --end;
 return "",0;
    
end;