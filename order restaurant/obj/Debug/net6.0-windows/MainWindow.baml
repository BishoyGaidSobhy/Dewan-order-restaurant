   M S B A M L   `   `   `  ????K  Gorder restaurant, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:order_restaurantorder_restaurant  5   	   !    order_restaurant.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:order_restaurant     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??795??6)   .??5	      ? -   5        $??
27,4,10,12q?5	      .+?5
   
   ?? -   5         ??Name$ CustomerNameText??5
      $
??Left=?6,   $??
122,39,0,0q?6G    ?? TextWrapping$
 Wrap=?6[   $	??Top=?6o   $	??123??6?   $??22??6?    J? RenderTransformOrigin$ 0.528,0.275&?6?   ?? 5   
   -   5         ??Name$ CustomerName_Copy??5      $??Date : ??6+   $
??Left=?6=   $??
441,35,0,0q?6X   $	??Top=?6l   $??60??6?   $ 1.067,0.387&?6?   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ DateTimeOrder??5      $
??Left=?6,   $??
498,35,0,0q?6G   $	??Top=?6[      Text$  ??6s   $	??213??6{   $??25??6?   ?? 5   
   -   5         ??Name$ btn_GeneratRecipt??5      $??Add to Grid??6,   $
??Left=?6B   $??528,128,0,0q?6]   $	??Top=?6r   $	??131??6?   $??43??6?   6?   ?? 5   
   -   5        $ lbl_TotalPrice??5      $??Order TotalPrice
??6(   $
??Left=?6M   $??
44,363,0,0q?6h   $	??Top=?6|   $??16(?6?   $
??Bold"?6?   ?? 5   
   -   5        $ ItemText??5      $
??Left=?6$   $??
122,72,0,0q?6?   $
 Wrap=?6S   $	??Top=?6g   $	??122??6   $??22??6?   ?? 5   
   -   5        $ CustomerName??5      $??Customer Name :??6&   $
??Left=?6@   $??	20,32,0,0q?6[   $	??Top=?6n   $	??111??6?   $ 1.113,10.992&?6?   z?5      V? 5      .~?5      ?? ?? 5       ?? AngleX$ 0Q?6$   ?? 5      T? 5      	 T? X$	 0Q?6)   5      5      ?? 5   
   -	   5        $	 Qty??5      $??Qty :??6   $
??Left=?6-   $??
249,69,0,0q?6H   $	??Top=?6\   $	??110??6t   ?? 5   
   -
   5        $ QtyText??5      $
??Left=?6#   $??
290,74,0,0q?6>   $
 Wrap=?6R   $	??Top=?6f   $	??123??6~   $??22??6?   $ 0.439,0.775&?6?   ?? 5   
   -   5        $ PricePerItem??5      $??PricePerItem :??6&   $
??Left=?6?   $??
441,70,0,0q?6Z   $	??Top=?6n   $	??110??6?   $ 0.318,0.387&?6?   ?? 5   
   -   5        $ PricePerItemText??5      $
??Left=?6,   $??
532,74,0,0q?6G   $
 Wrap=?6[   $	??Top=?6o   $	??122??6?   $??22??6?   &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 Order??5      $??44,191,52,69q?6M      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       -   5        item??,  &System.Windows.Controls.DataGridColumn   Header$
 item??5    3   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   ?? *
ItemName+ ?? Mode$ OneWay=?  5!      -   5        	Price??$ PricePerItem??5!   4    6J   ?? *Price+$ OneWay=?  5"      -   5        Qty1??$	 Qty??5"   3    6@   ?? *Qty+$ OneWay=?  5#      -   5        	Total??$ 
TotalPrice??5#   4    6H   ?? *
TotalPrice+$ OneWay=?5%      ?? 5&   
   -   5        $ Qty_Copy??5&      $??Item Name :??6"   $
??Left=?68   $??	20,70,0,0q?6S   $	??Top=?6f   $	??110??6~   ?? 5'   
   -   5        $ GetOrder??5'      $??GetOrder??6#   $
??Left=?66   $??528,363,0,0q?6Q   $	??Top=?6f   $	??124??6~   $??45??6?   ?? 5(   
   -   5        $ OrderTotalPriceText??5(      $?? ??6-   $
??Left=?68   $??202,368,0,0q?6S   $	??Top=?6h   $	??142??6?   5*      5-      