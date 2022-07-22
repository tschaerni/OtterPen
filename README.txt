Import VRCAvatar3Tools: https://booth.pm/ja/items/2207020
Helps with combining Animatorlayers and Parameterlists

0. Import the OtterPen_1.0.unitypackage

1. Place the OtterPen prefab in the root of the scene, not in the root of your avatar. So the scaling is still 1.

2. Right click the prefab in the scene and "Unpack prefab completely"

3. Move the OtterPen Gameobject in to the root of your avatar.

4. Move OtterPenAnchor to the root of your avatar. And Press "Activate" on the parent constraint component of the OtterPen Gameobject.
4.1 Move OtterPenAnchor under the Hierarchy to your right or left wrist.
4.2 Position the OtterPenAnchor slightly in front of your Index finger. This will be the location where the pens will write from. Note: the OtterPen Gameobject should follow the OtterPenAnchor Gameobject, if it doesn't, something screwed up, delete and repeat.

5. Move OtterPenContactReceiver (or OtterPenContactReceiver_LeftHanded respectively) to the Head in the Hierarchy (or Hip/Spine, that's up to you), delete the other OtterPenContactReceiver that you didn't use.
5.1 Position the OtterPenContactReceiver (or OtterPenContactReceiver_LeftHanded respectively) where you would like to activate the OtterPen while hovering with your hand there and doing a FingerGun gesture (this lets you activate/deactivate the OtterPen without using the menu).

6. Create a backup/copy of your AvatarParameters and your FX Animatorlayer.
6.1 No, don't skip the backup part, you will thank me later if something fucks up.

7. On the top of the main Unity window are the Menus, look for VRCAvatar3Tools, open the AnimatorControllerCombiner.
7.1 Place the FX_Layer_OtterPen (or FX_Layer_OtterPen_LeftHanded respectively) in the "Src AnimatorController" slot.
7.2 Place the FX Animatorlayer of your avatar in the "Dst AnimatorController" slot.
7.3 Click "Combine", close the AnimatorControllerCombiner.

8. On the top of the main Unity window are the Menus, look for VRCAvatar3Tools, open the ExpressionParametersCombiner.
8.1 Place the OtterPen_Parameters in the "Src ExpressionParameters" slot.
8.2 Place the Avatar Parameters of your avatar in the "Dst ExpressionParameters" slot.
8.3 Click "Combine", close the ExpressionParametersCombiner.

9. Open your AvatarMenu and create a Sub Menu, call it Otterpen or something. You can use one of the Icons located under the OtterPen/Icons directory.
9.1 Place the OtterPenMainMenu under the Sub Menu slot in your Menu.

10. Profit


FAQ:

1. How to activate the OtterPen?
- Enable it either in the Sub Menu (Activate OtterPen) or by doing a FingerGun Gesture with your left or right hand in the location where you placed the OtterPenContactReceiver (or OtterPenContactReceiver_LeftHanded respectively). Note: you have to leave the Contact Area/Volume with the Fingergun Gesture still active.

2. How to write with the OtterPen?
- Do a Fingerpoint gesture with your respective "draw" hand. Switch between FingerGun and FingerPoint to conviniently draw/not draw.

3. How to switch the OtterPen colours?
- In the OtterPen sub menu.

4. How to delete what I have drawn?
- Do a Fist gesture with you respective "draw" hand. Hold for one Second to just delete the active selected colour, hold for three seconds to delete everything.

5. How to deactivate the OtterPen?
- Either in the Sub Menu (Activate OtterPen), or wave with an OpenHand Gesture through the Contact Area/Volume. Hint: you can deactivate the OtterPen but the drawn stuff is still "saved" and will be displayed again after you activated the OtterPen again. Mind you, this is a feature, not a bug. So you should delete everything manually after you are done with drawing. It shouldn't cause to much performance impact, I think I have fixed that. If your CPU Frametime is terrible after staying in the same world for hours, and you have used your OtterPen, activate the OtterPen and do a Fist Gesture for 3+ seconds. If that doesn't fix your Frametime, it's not the OtterPen that's causing it.

6. Where did you got your Assets/Inspiration from?
- From several people/projects, notably: Snails marker for the idea, M.O.O.N's Marker from which most of the OtterPen Shader comes from, and "五月雨工房" (I hope that's correct?) for his solution against the performance impact.
- The Icons are Public Domain, I found them about 2 years ago, I don't remember where it's from, but I remember that they are CC0
- The Shader is licenced under the MIT Licence. You can find it next to the README.txt as LICENCE_shader.txt.
- The rest is released under the WTFPL Version 2.

Cheers,
- Bunkerotter