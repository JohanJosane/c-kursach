   M S B A M L   `   `   `  ����E  ACopsSnitch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:CopsSnitch.ViewsCopsSnitch.Views  5   	   %    CopsSnitch.Views.WindowEditCops   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:CopsSnitch.Views     5   	     � Title$  Сотрудники��5   	   $	��350��6   $	��550��6)    � 
ResizeMode$ NoResize=�65    � 	Resources 5	         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType	 �� 
TargetType
 ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%J  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      "	 ��6&   .R�5(      �� $
 border��6!   $ 10��61   #��z��6C   #��z��6m   #��z��6�    . ._�5)      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted . . �5-   "   �� $ border��6@   # � ��6T    � ��5.      P� 5/       �@J�IsMouseOver . . �50   "   �� $ border��6?   8   � ��6S   �� 51   "   $ border��6@   8   � ��6T   52      P� 53       � �� . . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {� .  . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8 	  � ��6i   5;      5=      5?      5@      5A      .��5B      � ��5C   
   �� 5D       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5E      �  � Color$ Black��6   � 5F      $ 	#FF7547A5��6    � Offset$ 1Q�61   5G      .+�5I   
   �� -   5         ��Name$ 
TextBoxFIO��5I   ;   $��
130,43,0,0q�6   $
��Left=�6O   $	��243��6j   $��23��6v   $	��Top=�6�   ��6&   �� *FIO+6�   �� 5J   
   -   5        $ TextBoxPost��5J   A   $��130,100,0,0q�6   $
��Left=�6V   $	��243��6q   $��23��6}   $	��Top=�6�   ��6'   �� *
PostCops+6�   �� 5K   
   -   5        $ TextBoxNumberPhone��5K   C   $��
130,71,0,0q�6   $
��Left=�6_   $	��243��6z   $��23��6�   $	��Top=�6�   ��6&   �� *NumberPhone+6�   �� 5L   
   -   5         ��Name$ textBlockFIO��5L   '   $��	16,47,0,0q�6   
�������$��ФИО��6P   $��23��6[   $	��Top=�6g   $
��Left=�6   $	��118��6�   �� 5M   
   -   5        $ textBlockNumberPhone��5M   '   $��	16,75,0,0q�6   
�������$!��Номер телефона��6X   $
��Left=�6n   $	��108��6�   $��23��6�   $	��Top=�6�   �� 5N   
   -   5        $ textBlockDateOfBry��5N   (   $��
16,103,0,0q�6   
�������$��Должность��6W   $
��Left=�6h   $	��108��6�   $��23��6�   $	��Top=�6�   �� 5O   
   -   5        #��� 
 5O      ���	#99000000$��Добавить��6b   
�������
�������$��393,251,0,0q�5P      $	��112��6&   $
��Left=�62   $��23��6M   $	��Top=�6Y   5R      5S      