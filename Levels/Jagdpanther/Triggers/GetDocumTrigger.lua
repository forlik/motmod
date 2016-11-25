----------------------------------------------------------------------------
--
-- Description :  Get documents trigger
--
-- Created by Alexey Agamalov
--
----------------------------------------------------------------------------

 GetDocumentsTrigger =
 {
 };
          
 function GetDocumentsTrigger:OnInit()
 end

 function GetDocumentsTrigger:OnPlayerAction()

     if ( Level.IsMissionFailed() != false ) then
       return;
     end;

     Level.UpdateLeaveTask( 'DOCS' );

     Level.CompleteMissionTask('DOCS', 15.0 );

     if (Level.HasMissionTask('YMOV')) then
         Level.AddLargeMessage( MissionText.Message_2 , 15.0 , 255, 255, 255 );
     end

     Level.HasDocs = true;

     Level.EnableLevelMark( 'DOCS', false );

     Level.RemovePlayerAction("DOCS");
     Level.UnregisterTrigger( self.Object );
     Level.SeifTrigger = nil;

     if ( Level.SeifDoor != nil ) then
       Level.SetDoorNotifyScript( Level.SeifDoor , false );
     end;

     Level.GiveDocs();
 end

 function GetDocumentsTrigger:OnEnterArea( sender )

     if ( Level.HasDocs != false ) then

       Level.UnregisterTrigger( self.Object );
       Level.SeifTrigger = nil;
       return;

     end;

     Level.SeifTrigger = self;

     if ( Level.SeifDoor != nil and Level.IsDoorOpened( Level.SeifDoor ) == false ) then
 
       return;

     end;

     Level.AddPlayerAction("DOCS", MissionText.Message_Docs, self.ObjectName, false);
 end

 function GetDocumentsTrigger:OnLeaveArea( sender )
     Level.RemovePlayerAction("DOCS");
     Level.SeifTrigger = nil;
 end