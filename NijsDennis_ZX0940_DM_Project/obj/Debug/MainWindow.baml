   M S B A M L   `   `   `  ����W  SNijsDennis_ZX0940_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NijsDennis_ZX0940_DM_ProjectNijsDennis_ZX0940_DM_Project  5   	   -    'NijsDennis_ZX0940_DM_Project.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:NijsDennis_ZX0940_DM_Project     5   	   -   5          � Title$  Premier League��5   	   $	��730��6    $	��960��6-   $��Berlin Sans FB)�69   .��5	      � $��5q�6    � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ]� $��2��6   $��5q�6(   .+�5      �� -   5         ��Name$ imgPL��5      $��61��6$   $��55��60   $��img/PL logo.JPG��6;   �� 5      -   5         ��Name$ lblTitel��5      $��Premier League��6&   $��35(�6?   ���	#FF3D195D$��Center=�6d   5      �� 5   
   
�������$��2��6*   $��4��67   $��15(�6K   $��5q�6Y   ��5       �� 5!      $��RANGSCHIKKING��6   $��20(�60   .��5#      &   System.Windows.Controls.DataGrid  -   5          Name$ datagridRangschikking��5#         
IsReadOnly .    AutoGenerateColumns .  
�������$��0q�6{   $	��480��6�      Columns 5$      0  *System.Windows.Controls.DataGridTextColumn  5%      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Clubnaam��6L   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6)   �� *Clubs.Clubnaam+6L     5&      $	 Winst��6C   
 6)   �� *Winst+6C     5'      $	 
Gelijkspel��6D   
 6)   �� *Gelijk+6D     5(      $	 Verlies��6E   
 6)   �� *	Verlies+6E     5)      $	 Doelpunten Voor��6J   
 6)   �� *DoelpuntVoor+6J     5*      $	 Doelpunten Tegen��6K   
 6)   �� *DoelpuntTegen+6K     5+      $	 Doelpuntensaldo��6M   
 6)   �� *Doelpuntensaldo+6M     5,      $	 Punten��6D   
 6)   �� *Punten+6D   5.      5/      �� 51   
   -   5         ��Name$ btnMatchUitslagen��51      $��MATCHEN & UITSLAGEN��6,   $��25(�6N   $��5q�6\   ���	#FF3D195D
�������$��2��6�   $��3��6�   6�   �� 52   
   -   5        $ 
btnRefresh��52      $��REFRESH RANGSCHIKKING��6%   $��25(�6E   $��5q�6S   ���	#FF3D195D
�������$��3��6�   $��2��6�   $��2��6�   $��Bottom=�6�   6�   �� 53   
   -   5        $ btnBeheerSpelersEnTeams��53      $��BEHEER SPELERS & TEAMS��62   $��25(�6W   $��5q�6e   ���	#FF3D195D
�������$��2��6�   $��4��6�   6�   �� 54   
   -   5        $ 
btnSluiten��54      $��SLUITEN��6%   $��25(�67   $��5q�6E   ���	#FF3D195D
�������$��3��6z   $��4��6�   6�   55      56      