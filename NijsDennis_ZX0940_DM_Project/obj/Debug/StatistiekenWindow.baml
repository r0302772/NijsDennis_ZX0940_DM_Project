   M S B A M L   `   `   `  ����W  SNijsDennis_ZX0940_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NijsDennis_ZX0940_DM_ProjectNijsDennis_ZX0940_DM_Project  5   	   5    /NijsDennis_ZX0940_DM_Project.StatistiekenWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:NijsDennis_ZX0940_DM_Project     5   	     � Title$"  Premier League: Statistieken��5   	   $	��615��6.   $	��850��6;   $��Berlin Sans FB)�6G   .��5	      � $��5q�6    � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      $	��200 �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      �� 5      $
��auto �6   .+�5   
   ]� $��2��6   $��5q�6(   .+�5      �� -   5         ��Name$ imgPL��5      $��61��6$   $��55��60   $��img/PL logo.JPG��6;   �� 5      -   5         ��Name$ lblTitel��5      $��Statistieken��6&   $��35(�6=   ���	#FF3D195D$��Center=�6b   5      &   System.Windows.Controls.DataGrid  5   
   
�������$��1q�6*   ���	#FF3D195D$��15(�6V   $��1��6d   $��3��6q   $��5q�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6%   62     5      $ Speler��6%   67     5       $ Clubnaam��6%   69     5!      $ Positie��6%   68     5"      $ Goals��6%   66     5#      $ Assists��6%   68     5$      $ 
Gele Kaart��6%   6;     5%      $ 
Rode Kaart��6%   6;     5&      $ Owngoals��6%   69   5(      �� 5*   
   $��2��6   .+�5+      �� 
�������$��15(�6.   $��5q�6<   ��5,      �� 5-      $��ZOEKEN��6   $��20(�6-   .��5/      ]� .+�50      �� -   5        $ 	lblZoeken��50      $��	Zoekterm:��60   $��5q�6D   �� 51      -   5         ��Name$ 	txtZoeken��51      $��5q�63   52      53      �� 55      -   5         ��Name$ 	btnZoeken��55      $��ZOEKEN��6(   $��25(�69   $��5q�6G   ���	#FF3D195D
�������6|   57      �� 5<   
   -   5        $ 
btnSluiten��5<      $��SLUITEN��6%   $��25(�67   $��5q�6E   ���	#FF3D195D
�������$��2��6z   $��3��6�   $��Bottom=�6�   6�   5=      5>      