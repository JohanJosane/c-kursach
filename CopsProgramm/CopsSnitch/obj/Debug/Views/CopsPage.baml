   M S B A M L   `   `   `  ����E  ACopsSnitch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:CopsSnitch.ViewsCopsSnitch.Views  5          CopsSnitch.Views.CopsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:CopsSnitch.Views     5      -   5          N� Title$  CopsPage��5	       � 	Resources 5
         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType �� 
TargetType	 ��Name
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%J  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7  7 	 �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5        � ��8  6,   �� 5!       � ��# � ��6+   �� 5"       � ��$ 1q�60   �� 5#       � ��$ Center=�6;   �� 5$       � ��$ Center=�69   �� 5%       � ��$ 1q�6(   �� 5&       � �� 5'      �� 5(      " ��6&   .R�5)      �� $	 border��6!   $
 10��61   #��z��6C   #��z��6m   #��z��6�    . ._�5*      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5+       5,      P� 5-       �@��IsDefaulted . . �5.   "   �� $ border��6@   # � ��6T    � ��5/      P� 50       �@J�IsMouseOver . . �51   "   �� $ border��6?   8   � ��6S   �� 52   "   $ border��6@   8   � ��6T   53      P� 54       � �� . . �55   "   �� $ border��6?   8   � ��6S   �� 56   "   $ border��6@   8   � ��6T   57      P� 58       � {� .  . �59   "   �� $ border��6?   8   � ��6S   �� 5:   "   $ border��6@   8   � ��6T   �� 5;   "   $ contentPresenter��6K   8 	  � ��6i   5<      5>      5@      5A      5B      .��5C      � .+�5D   
   &   System.Windows.Controls.DataGrid  -   5          Name$ ApplicationPC��5D   '   $��
10,0,19,25q�6      
IsReadOnly .    AutoGenerateColumns .  
���   ���5E      �� 5F      $ 	#997D7676��6"    �� Opacity$	 0.6Q�64      Columns 5H      0  *System.Windows.Controls.DataGridTextColumn  5I      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$	 30* 6G   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6V     5J      $ ФИО��6=   $
 180* 6J    6%   �� *FIO+6Y     5K      $ Должность��6B   $
 170* 6U    6%   �� *
PostCops+6d     5L      $! Номер телефона��6E   $
 170* 6]    6%   �� *NumberPhone+6l   4  .System.Windows.Controls.DataGridTemplateColumn  5M      $
 auto 6)      CellTemplate 5N      �� 5O      .R�5P      �� $��BtnEdit��6=   -   5        $ ��Редактировать��5P   %   $
��Left=�6L    5Q   "   ��%_   '��       �� 5R   &   " ��6,   .�5S   *   ��  �@��CornerRadius$ 10��6I   5T   '   5U   #   5V      5W      5Y      5[      �� 5\   
   -   5        #��� 
 5\      ���	#99000000$��Добавить��6f   
�������
�������$��-103,0,0,55q�5]      $
��Left=�6&   $	��108��6A   $��24��6M   $��Bottom=�6Y   �� 5^   
   -   5        #��� 
 5^      ���	#99000000$��Удалить��6i   
�������
�������$��-103,0,0,26q�5_      $
��Left=�6&   $	��108��6A   $��24��6M   $��Bottom=�6Y   5`      5a      