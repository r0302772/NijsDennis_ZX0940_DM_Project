   M S B A M L   `   `   `  ����W  SNijsDennis_ZX0940_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NijsDennis_ZX0940_DM_ProjectNijsDennis_ZX0940_DM_Project  5   	   9    3NijsDennis_ZX0940_DM_Project.MatchenUitslagenWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:NijsDennis_ZX0940_DM_Project     5   	   -   5          � Title$)  #Premier League: Matchen & Uitslagen��5   	   $	��730��69   $	��950��6F   $��Berlin Sans FB)�6R   .��5	      � $��5q�6    � ColumnDefinitions 5
   
   �� 5      $	��220 �6   �� 5      �� 5      �� 5      $	��220 �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ]� $��2��6   $��5q�6(   .+�5      �� -   5         ��Name$ imgPL��5      $��61��6$   $��55��60   $��img/PL logo.JPG��6;   �� 5      -   5         ��Name$ lblTitel��5      $��Matchen & Uitslagen��6&   $��35(�6H   ���	#FF3D195D$��Center=�6m   5      �� 5!   
   -   5        $ lblHuidigeGameweek��5!      $��
GAMEWEEK 1��6,   $��1��6A   $��2��6Q   $��1��6e   $��25(�6r   $��Center=�6�   �� 5#   
   -   5         ��Name$ btnVorigeGameweek��5#      $��VORIGE��6,   $��25(�6=   $��5q�6K   ���	#FF3D195D
�������$��2��6�   6�   �� 5$   
   -   5        $ btnGameweek18��5$      $��GA NAAR GAMEWEEK 18��6(   $��25(�6F   $��5q�6T   ���	#FF3D195D
�������$��2��6�   $��1��6�   $��2��6�   6�   �� 5%   
   -   5        $ btnVolgendeGameweek��5%      $��VOLGENDE��6.   $��25(�6A   $��5q�6O   ���	#FF3D195D
�������$��3��6�   $��2��6�   6�   &   System.Windows.Controls.DataGrid  5'   
   -   5          Name$! datagridWedstrijdenSpeeldag��5'         AutoGenerateColumns .     
IsReadOnly . $��3��5(      $��2��6    $��Center=�64   $��1��6Q   
�������$��15(�5)   *   $��1q�68   ���	#FF3D195D$��5q�5*      $	��210��5+      	   Columns	 5,      0  *System.Windows.Controls.DataGridTextColumn  5-      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
Thuisploeg��6M   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ThuisClubs.Clubnaam+6M     5.      $
 Uitslag��6A    6%   �� *	Uitslag+6A     5/      $
 Uitploeg��6K    6%   �� *UitClubs.Clubnaam+6K   51      �� 53   
   $��4��6    �� Orientation$ 
Horizontal=�6"   $��2��6;   .+�54      	� -	   5         	�Name$ rbThuisploeg��54      $��15(�60   $��
Thuisploeg��6>   $��1��6S   $��5��6c   $��5q�6p    d� 	IsChecked$
 TrueY�6{   6�   	� 55      -
   5        $ 
rbUitploeg��55      $��15(�6.   $��Uitploeg��6<   $��1��6O   $��5��6_   $��5q�6l   6w   56        58   
   -   5        $ datagridSpelersClub��58   +   $��5��6   $��5q�6     .   . ��. $	��210��59   J   $��15(�6W   	 5:        5;      $
 Nr��6E    6%   �� *Shirtnummer+6E     5<      $
 Speler��6G    6%   �� *VolledigeNaam+6G   5>      �� 5@   
   $��5��6   $��1��6"   $��5q�62   .+�5M      �� -   5        $! btnSpelerWedstrijdToevoegen��5M      $��	TOEVOEGEN��6:   ���	#FF3D195D
�������$��25(�6x   $��5q�6�   6�   �� 5N      -   5        $# btnSpelerWedstrijdVerwijderen��5N      $��VERWIJDEREN��6<   ���	#FF3D195D
�������$��25(�6|   $��5q�6�   6�   �� 5O      -   5        $ btnBrilscore��5O      $��
GEEN GOALS��6+   ���	#FF3D195D
�������$��25(�6j   $��5q�6x   6�   5P      �� 5R   
   $��5��6   $��2��6"   $��2��62   .+�5S        -   5        $ datagridSpelerWedstrijd��5S      $��5q�68    .  ��. $��15(�5T   <   $	��200��6J   	 5U        5V         
IsReadOnly . $
 Nr��6c    6;   �� *Spelers.Shirtnummer+6c     5W       . $
 Speler��6e    6;   �� *Spelers.VolledigeNaam+6e     5X      $
 G��6F    6)   �� *
Doelpunt+6F     5Y      $
 A��6D    6)   �� *Assist+6D     5Z      $
 GK��6G    6)   �� *	GeleKaart+6G     5[      $
 RK��6G    6)   �� *	RodeKaart+6G     5\      $
 OG��6E    6)   �� *	Owngoal+6E   5^      �� 5_      $Q��KG = Goals, A = Assists, GK = Gele Kaarten, RK = Rode Kaarten, OG = Owngoals��6   $��14(�6j   5`      �� 5d   
   -   5        $ 
btnOpslaan��5d      $��OPSLAAN��6%   $��25(�67   $��5q�6E   ���	#FF3D195D
�������$��2��6z   $��6��6�   6�   �� 5f   
   -   5        $ 
btnSluiten��5f      $��SLUITEN��6%   $��25(�67   $��5q�6E   ���	#FF3D195D
�������$��3��6z   $��6��6�   6�   5g      5h      