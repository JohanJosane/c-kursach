   M S B A M L   `   `   `  ����E  ACopsSnitch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:CopsSnitch
CopsSnitch  5   	       CopsSnitch.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:CopsSnitch     5   	     � Title$  Авторизация��5   	   $	��450��6   $	��800��6*    � 	Resources 5	         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType �� 
TargetType	 ��Name
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value  TextBox.Static.Border1  TextBox.MouseOver.Border1  TextBox.Focus.Border1  TextBoxStyle2  TextBox.Static.Border2  TextBox.MouseOver.Border2  TextBox.Focus.Border2  TextBoxStyle3  FocusVisual1  Button.Static.Background1  Button.Static.Border1   Button.MouseOver.Background1  Button.MouseOver.Border1  Button.Pressed.Background1  Button.Pressed.Border1  Button.Disabled.Background1  Button.Disabled.Border1   Button.Disabled.Foreground1 ! ButtonStyle2 " TextBox.Static.Border3 # TextBox.MouseOver.Border3 $ TextBox.Focus.Border3 % PasswordBoxStyle1��%5%  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7  7 	 &	 �    &	 �    &	 �    &	     7  7  7  &	     &	 8    &	 [    &	 ~    7  7  7  &	 v    &	 �    &	 �    &	 �    7  7  7  &	 �    &	 �    &	 �    &	 �    &	 �    &	     &	 >    &	 a    &	 �    &	  �    &	! �    7  7  7  7  7  7  7  7  7  7   &	" �    &	# �    &	$ �    &	%     7 " 7 # 7 $ �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      �� $	 border��6!   $
 10��61   #��z��6C   #��z��6m   #��z��6�    . ._�5)      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted . . �5-   "   �� $ border��6@   # � ��6T    � ��5.      P� 5/       �@J�IsMouseOver . . �50   "   �� $ border��6?   8   � ��6S   �� 51   "   $ border��6@   8   � ��6T   52      P� 53       � �� . . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {� .  . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8 	  � ��6i   5;      5=      5?      5@      �� 5A   
   $ 	#FFABAdB3��68   �� 5B   
   $ 	#FF7EB4EA��6;   �� 5C   
   $ 	#FF569DE5��67   �� 5D   
   " ��6&   .�5E      ��  � ��# � ��6+   �� 5F       � ��8   6,   �� 5G       � ��# � ��6+   �� 5H       � ��$ 1q�60   �� 5I       �@ TabNavigation$
 None=�6A   �� 5J       � ��$
 Left=�6;   �� 5K       �@�FocusVisualStyle 61   Z� �� 5L       �@J�	AllowDrop . 6*   �� 5M       �@��PanningMode$ VerticalFirst=�69   �� 5N       �@��IsFlicksEnabled .  67   �� 5O       � �� 5P      �� 5Q      " ��6&   .R�5R      �� $	 border��6!   #��z��61   #��z��6[   #��z��6�    . ._�5S      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5T       5U      P� 5V       � {� .  . �5W   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5X      P� 5Y       �@J�IsMouseOver . . �5Z   "   �� $ border��6@   8   � ��6T   5[      P� 5\       �@J�IsKeyboardFocused . . �5]   "   �� $ border��6@   8   � ��6T   5^      5`      5b       5c      ]� 5d       5e      �� 5f      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5g       �@��IsSelectionActive .  6A   ./�5i      ��  �@��SelectionBrush# � /�67   5j      5l      �� 5m   
   $ 	#FFABAdB3��69   �� 5n   
   $ 	#FF7EB4EA��6<   �� 5o   
   $ 	#FF569DE5��68   �� 5p   
   " ��6&   .�5q      ��  � ��# � ��6+   �� 5r       � ��8   6,   �� 5s       � ��# � ��6+   �� 5t       � ��$ 1q�60   �� 5u       �@ TabNavigation$
 None=�6A   �� 5v       � ��$
 Left=�6;   �� 5w       �@�FocusVisualStyle 61   Z� �� 5x       �@J�	AllowDrop . 6*   �� 5y       �@��PanningMode$ VerticalFirst=�69   �� 5z       �@��IsFlicksEnabled .  67   �� 5{       � �� 5|      �� 5}      " ��6&   .R�5~      �� $	 border��6!   #��z��61   #��z��6[   #��z��6�    . ._�5      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5�       5�      P� 5�       � {� .  . �5�   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5�      P� 5�       �@J�IsMouseOver . . �5�   "   �� $ border��6@   8   � ��6T   5�      P� 5�       �@J�IsKeyboardFocused . . �5�   "   �� $ border��6@   8   � ��6T   5�      5�      5�       5�      ]� 5�       5�      �� 5�      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5�       �@��IsSelectionActive .  6A   ./�5�      ��  �@��SelectionBrush# � /�67   5�      5�      �� 5�   
   $ 	#FFABAdB3��69   �� 5�   
   $ 	#FF7EB4EA��6<   �� 5�   
   $ 	#FF569DE5��68   �� 5�   
   " ��6&   .�5�      ��  � ��# � ��6+   �� 5�       � ��8   6,   �� 5�       � ��# � ��6+   �� 5�       � ��$ 1q�60   �� 5�       �@ TabNavigation$
 None=�6A   �� 5�       � ��$
 Left=�6;   �� 5�       �@�FocusVisualStyle 61   Z� �� 5�       �@J�	AllowDrop . 6*   �� 5�       �@��PanningMode$ VerticalFirst=�69   �� 5�       �@��IsFlicksEnabled .  67   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      �� $	 border��6!   $
 10��61   #��z��6C   #��z��6m   #��z��6�    . ._�5�      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5�       5�      P� 5�       � {� .  . �5�   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5�      P� 5�       �@J�IsMouseOver . . �5�   "   �� $ border��6@   8   � ��6T   5�      P� 5�       �@J�IsKeyboardFocused . . �5�   "   �� $ border��6@   8   � ��6T   5�      5�      5�       5�      ]� 5�       5�      �� 5�      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5�       �@��IsSelectionActive .  6A   ./�5�      ��  �@��SelectionBrush# � /�67   5�      5�      �� 5�   
   .�5�      ��  � �� 5�      �� 5�      .R�5�      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5�      5�      5�      �� 5�   
   $ 	#FFDDDDDD��6<   �� 5�   
   $ 	#FF707070��68   �� 5�   
   $ 	#FFBEE6FD��6?   �� 5�   
   $ 	#FF3C7FB1��6;   �� 5�   
   $ 	#FFC4E5F6��6=   �� 5�   
   $ 	#FF2C628B��69   �� 5�   
   $ 	#FFF4F4F4��6>   �� 5�   
   $ 	#FFADB2B5��6:   �� 5�   
   $ 	#FF838383��6>   �� 5�   
   " ��6%   .�5�      ��  �@�FocusVisualStyle8   61   �� 5�       � ��8  6+   �� 5�       � ��8  6,   �� 5�       � ��# � ��6+   �� 5�       � ��$ 1q�60   �� 5�       � ��$ Center=�6;   �� 5�       � ��$ Center=�69   �� 5�       � ��$ 1q�6(   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      �� $	 border��6!   $
 10��61   #��z��6C   #��z��6m   #��z��6�    . ._�5�      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5�       5�      P� 5�       �@��IsDefaulted . . �5�   "   �� $ border��6@   # � ��6T    � ��5�      P� 5�       �@J�IsMouseOver . . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   5�      P� 5�       � �� . . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   5�      P� 5�       � {� .  . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   �� 5�   "   $ contentPresenter��6K   8 	  � ��6i   5�      5�      5�      5�      �� 5�   
   $ 	#FFABAdB3��69   �� 5�   
   $ 	#FF7EB4EA��6<   �� 5�   
   $ 	#FF569DE5��68   �� 5�   
   " G�6*   .�5      ��  �@G�PasswordChar$	 ●��6-   �� 5      � ��# � ��6+   �� 5      � ��8   6,   �� 5      � ��# � ��6+   �� 5      � ��$ 1q�60   �� 5      �@ TabNavigation$
 None=�6A   �� 5      � ��$
 Left=�6;   �� 5      �@�FocusVisualStyle 61   Z� �� 5      �@J�	AllowDrop . 6*   �� 5	      �@��PanningMode$ VerticalFirst=�69   �� 5
      �@��IsFlicksEnabled .  67   �� 5      � �� 5     �� 5     " G�6&   .R�5     �� $	 border��6!   $
 7��61   #��z��6B   #��z��6l   #��z��6�    . ._�5     �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5      5     P� 5      � {� .  . �5  "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5     P� 5      �@J�IsMouseOver . . �5  "   �� $ border��6@   8   � ��6T   5     P� 5      �@J�IsKeyboardFocused . . �5  "   �� $ border��6@   8   � ��6T   5     5     5      5     ]� 5       5!     �� 5"     + �@G�#IsInactiveSelectionHighlightEnabled . 6S   �� 5#      �@G�IsSelectionActive .  6A   ./�5%     ��  �@G�SelectionBrush# � /�67   5&     5(     5)     .��5*     � ��5+  
   �� 5,      �� ImageSource$ 	/merz.jpg��6   .+�5.  
   � $��410,37,40,0q�6   $	��350��6$   $	��250��60   $	��Top=�6=   ���	#99000000 � RowDefinitions 5/     �� 50     $
��252* �6    .+�52     �� -   5         ��Name$ textBlockLogin��52  R   $��11��6   $
��Left=�6$   $��	86,62,0,0q�6?   $	��Top=�53     $��31��60   
�������$��
Логин��6N   $��Arial)�6[   $��11(�6n   6~   �� 54     -   5        $ textBlockPassword��54  S   $��14��6   $
��Left=�6$   $��
86,100,0,0q�6?   $	��Top=�55     $��43��60   
�������$��Пароль��6N   $��Arial)�6\    J� RenderTransformOrigin$ 0.322,0.574&�6o   �� 56     -   5        $��textBoxLogin��56  Q   $��24��6   $��Center=�6"   $��0,74,0,0q�6?   $	��Top=�57     $	��188��6B   ���	#997D7676
�������{�. 
�������.��6�    58     ��%c   '��       �� 59     " ��6   .�5:     ��  �@��CornerRadius$ 7��69   6E   5;     5<     .��6%   5=     G� 5>     -   5        $��textBoxPassword��5>  o   #��� % 6   $��24��6F   $��Center=�6R   $	��Top=�5?     $	��188��6C   ���	#997D7676
�������{�.  
�������$��	0,115,0,0q�6�    5@     ��%c   '��       �� 5A     " ��6   .�5B     ��  �@��CornerRadius$ 7��69   6E   5C     5D     5E     �� 5F     -   5        $
��Vhod��5F  �   #��� 
 6   $��
Войти��6<   $��23��6L   $��Center=�6X   $��	0,188,0,0q�6u   $	��Top=�5G     $��70��6-   ���	#FF27252D
�������
�������$��Arial)�6�   �� 5H     -   5         ��Name$ 
textBoxCod��5H  y   #���  6   $��23��6>   $
��Left=�6J   $��
81,155,0,0q�6e   $	��Top=�5I     $	��130��6.   ���	#997D7676
�������{�.  
�������.��6�    5J     ��%c   '��       �� 5K     " ��6   .�5L     ��  �@��CornerRadius$ 7��69   6E   5M     5N     .��6%   5O     �� 5P     -   5        $ textBlockCod��5P  S   $��13��6   $
��Left=�6$   $��
86,141,0,0q�6?   $	��Top=�5Q     $��20��60   
�������$��Код��6N   $��Arial)�6Y   �� 5R     $��Авторизация��6   $��Center=�6*   $��0,25,0,0q�6G   $	��Top=�6Y   $��16(�6q   $��Arial)�6   
�������6�   �� 5S     -   5        $ textBoxCodSpawn��5S  z   #���  6   $��24��6>   $
��Left=�6J   $��226,155,0,0q�6e   $��14(�6�   $��Arial)�6�   $	��Top=�5T     $��86��6.   ���	#DC7D7676
�������{�.  
�������6v   �� 5U     -	   5         ��Name$	 Cod��5U  �   #��� ! 6   $��Обновить��6<   $��23��6O   $
��Left=�6[   $��226,188,0,0q�6v   $	��Top=�5V     $��86��6-   ���	#FF8976E6
���   �
�������{�.  $y�Hidden=�6�   5W     5X     5Y     