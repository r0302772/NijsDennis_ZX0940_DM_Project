   M S B A M L   `   `   `  ����W  SNijsDennis_ZX0940_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NijsDennis_ZX0940_DM_ProjectNijsDennis_ZX0940_DM_Project  5   	   3    -NijsDennis_ZX0940_DM_Project.KlassementWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:NijsDennis_ZX0940_DM_Project     5   	     � Title$*  $Fantasy Premier League: Klassementen��5   	   $	��615��66   $	��850��6C   $��Berlin Sans FB)�6O   .��5	      � $��5q�6    � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��30 �6   �� 5      $
��auto �6   .+�5   
   ]� $��3��6   $��5q�6(   .+�5      �� -   5         ��Name$ imgPL��5      $��61��6$   $��55��60   $��img/PL logo.JPG��6;   �� 5      -   5         ��Name$ lblTitel��5      $��Hoofdklassement��6&   $��35(�6@   ���	#FF3D195D$��Center=�6e   5      &   System.Windows.Controls.DataGrid  5!   
   
�������$��1q�6*   ���	#FF3D195D$��1��6V   $��4��6c   $��15(�6w   $��5q�6�      Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6%   62     5$      $
 Team��6%   65     5%      $ Winst��6%   66     5&      $ 
Gelijkspel��6%   6;     5'      $ Verlies��6%   68     5(      $ Doelpunten Voor��6%   6@     5)      $ Doelpunten Tegen��6%   6A     5*      $ Punten��6%   67   5,      �� 50   
   $��2��6   .+�51      �� 
�������$��5q�6.   ��52      �� 53      $��ZOEKEN��6   $��20(�6-   .��55      �� .+�56      �� -   5        $ 	lblZoeken��56      $��	Zoekterm:��60   $��5q�6D   $��15(�6O   �� 57      -   5         ��Name$ 	txtZoeken��57      $��5q�63   58      59      �� 5;      -   5         ��Name$ 	btnZoeken��5;      $��ZOEKEN��6(   $��25(�69   $��5q�6G   ���	#FF3D195D
�������$��4��6|   $��3��6�   6�   5=      �� 5?   
   $��2��6   $��2��6%   $��2��62   .+�5@      �� -   5        $ btnBekijkTeam��5@      $��2��6,   $��2��69   $��2��6I   $��BEKIJK TEAM��6]   $��25(�6s   $��5q�6�   ���	#FF3D195D
�������6�   �� 5A      -   5        $ btnVerwijderTeam��5A      $��2��6/   $��2��6<   $��2��6L   $��VERWIJDER TEAM��6`   $��25(�6y   $��5q�6�   ���	#FF3D195D
�������6�   �� 5C      -   5        $ lblWachtwoord��5C      $��
Wachtwoord��6+   $��20(�6@   �� 5D      -	   5        $ txtWachtwoord��5D      $��2��6-   $��2��6:   $��5q�6J   $��20(�6U   5E      �� 5G   
   -
   5        $ 
btnSluiten��5G      $��SLUITEN��6%   $��25(�67   $��5q�6E   ���	#FF3D195D
�������$��3��6z   $��5��6�   6�   5H      5I      