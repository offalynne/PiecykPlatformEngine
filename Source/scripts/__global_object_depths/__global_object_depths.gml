function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -1; // oGame
	global.__objectDepths[1] = 0; // oPlayer1
	global.__objectDepths[2] = 0; // oPlayer2
	global.__objectDepths[3] = 0; // oCharacterDie
	global.__objectDepths[4] = 3; // oGoomba
	global.__objectDepths[5] = 3; // oGoombaDirection
	global.__objectDepths[6] = 3; // oGoombaLoseWings
	global.__objectDepths[7] = 0; // oGoombaWings
	global.__objectDepths[8] = 3; // oGoombaDie
	global.__objectDepths[9] = 3; // oKoopa
	global.__objectDepths[10] = 3; // oKoopaShell
	global.__objectDepths[11] = 1; // oBlueFeather
	global.__objectDepths[12] = 1; // oRedFeather
	global.__objectDepths[13] = -1; // oWaterBlue
	global.__objectDepths[14] = -1; // oWaterGreen
	global.__objectDepths[15] = 4; // oCurvedLadder
	global.__objectDepths[16] = 2; // oDonutPlatform
	global.__objectDepths[17] = 2; // oDonutPlatformStart
	global.__objectDepths[18] = 2; // oExample12Solid
	global.__objectDepths[19] = 4; // oExampleCurvedPlatform
	global.__objectDepths[20] = 4; // oExampleLadder
	global.__objectDepths[21] = 4; // oExampleLadderBottom
	global.__objectDepths[22] = 4; // oExampleLadderTop
	global.__objectDepths[23] = 2; // oExampleMovingBall
	global.__objectDepths[24] = 2; // oExampleMovingSolidAccelerating
	global.__objectDepths[25] = 2; // oExampleMovingSolidCirclePath
	global.__objectDepths[26] = 2; // oExampleMovingSolidDiagonalPath
	global.__objectDepths[27] = 2; // oExampleMovingSolidIce
	global.__objectDepths[28] = 2; // oExampleMovingSolidLarge1
	global.__objectDepths[29] = 2; // oExampleMovingSolidSmall1
	global.__objectDepths[30] = 2; // oExampleMovingSolidSmall2
	global.__objectDepths[31] = 2; // oExampleMovingSolidSmall3
	global.__objectDepths[32] = 2; // oExampleMovingSolidSmall4
	global.__objectDepths[33] = 2; // oExampleMovingSolidU
	global.__objectDepths[34] = 4; // oExamplePlatform
	global.__objectDepths[35] = 2; // oExampleSmallSolid
	global.__objectDepths[36] = 2; // oFloatingGround
	global.__objectDepths[37] = 2; // oGround
	global.__objectDepths[38] = 2; // oGroundLeft
	global.__objectDepths[39] = 2; // oGroundRight
	global.__objectDepths[40] = 2; // oHillSlope
	global.__objectDepths[41] = 2; // oInvisibleSolid
	global.__objectDepths[42] = 2; // oMoveableSolidBrown
	global.__objectDepths[43] = 2; // oMoveableSolidVase
	global.__objectDepths[44] = 4; // oPlatformScale
	global.__objectDepths[45] = 4; // oPlatformTop
	global.__objectDepths[46] = 2; // oTunnelPurple
	global.__objectDepths[47] = 2; // oTunnelYellow
	global.__objectDepths[48] = 0; // oCharacter
	global.__objectDepths[49] = 0; // oLadder
	global.__objectDepths[50] = 0; // oMoveableSolid
	global.__objectDepths[51] = 0; // oMovingSolid
	global.__objectDepths[52] = 0; // oPlatform
	global.__objectDepths[53] = 0; // oSolid
	global.__objectDepths[54] = 0; // oWater
	global.__objectDepths[55] = 5; // oHillBackdrop1
	global.__objectDepths[56] = 5; // oHillBackdrop2
	global.__objectDepths[57] = 4; // oPlatformBottom
	global.__objectDepths[58] = 1; // oTunnels


	global.__objectNames[0] = "oGame";
	global.__objectNames[1] = "oPlayer1";
	global.__objectNames[2] = "oPlayer2";
	global.__objectNames[3] = "oCharacterDie";
	global.__objectNames[4] = "oGoomba";
	global.__objectNames[5] = "oGoombaDirection";
	global.__objectNames[6] = "oGoombaLoseWings";
	global.__objectNames[7] = "oGoombaWings";
	global.__objectNames[8] = "oGoombaDie";
	global.__objectNames[9] = "oKoopa";
	global.__objectNames[10] = "oKoopaShell";
	global.__objectNames[11] = "oBlueFeather";
	global.__objectNames[12] = "oRedFeather";
	global.__objectNames[13] = "oWaterBlue";
	global.__objectNames[14] = "oWaterGreen";
	global.__objectNames[15] = "oCurvedLadder";
	global.__objectNames[16] = "oDonutPlatform";
	global.__objectNames[17] = "oDonutPlatformStart";
	global.__objectNames[18] = "oExample12Solid";
	global.__objectNames[19] = "oExampleCurvedPlatform";
	global.__objectNames[20] = "oExampleLadder";
	global.__objectNames[21] = "oExampleLadderBottom";
	global.__objectNames[22] = "oExampleLadderTop";
	global.__objectNames[23] = "oExampleMovingBall";
	global.__objectNames[24] = "oExampleMovingSolidAccelerating";
	global.__objectNames[25] = "oExampleMovingSolidCirclePath";
	global.__objectNames[26] = "oExampleMovingSolidDiagonalPath";
	global.__objectNames[27] = "oExampleMovingSolidIce";
	global.__objectNames[28] = "oExampleMovingSolidLarge1";
	global.__objectNames[29] = "oExampleMovingSolidSmall1";
	global.__objectNames[30] = "oExampleMovingSolidSmall2";
	global.__objectNames[31] = "oExampleMovingSolidSmall3";
	global.__objectNames[32] = "oExampleMovingSolidSmall4";
	global.__objectNames[33] = "oExampleMovingSolidU";
	global.__objectNames[34] = "oExamplePlatform";
	global.__objectNames[35] = "oExampleSmallSolid";
	global.__objectNames[36] = "oFloatingGround";
	global.__objectNames[37] = "oGround";
	global.__objectNames[38] = "oGroundLeft";
	global.__objectNames[39] = "oGroundRight";
	global.__objectNames[40] = "oHillSlope";
	global.__objectNames[41] = "oInvisibleSolid";
	global.__objectNames[42] = "oMoveableSolidBrown";
	global.__objectNames[43] = "oMoveableSolidVase";
	global.__objectNames[44] = "oPlatformScale";
	global.__objectNames[45] = "oPlatformTop";
	global.__objectNames[46] = "oTunnelPurple";
	global.__objectNames[47] = "oTunnelYellow";
	global.__objectNames[48] = "oCharacter";
	global.__objectNames[49] = "oLadder";
	global.__objectNames[50] = "oMoveableSolid";
	global.__objectNames[51] = "oMovingSolid";
	global.__objectNames[52] = "oPlatform";
	global.__objectNames[53] = "oSolid";
	global.__objectNames[54] = "oWater";
	global.__objectNames[55] = "oHillBackdrop1";
	global.__objectNames[56] = "oHillBackdrop2";
	global.__objectNames[57] = "oPlatformBottom";
	global.__objectNames[58] = "oTunnels";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
