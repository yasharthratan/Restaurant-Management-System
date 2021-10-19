.MODEL LARGE
.STACK 1000H
.DATA
M1 DB 10,13,10,13,'                 ****Welcome to The Restaurant****$',10,13 
M2 DB 10,13,10,13,'Enter your Choice $'

M3 DB 10,13,'  **                 1.Breakfast Menu          **$' 
M4 DB 10,13,'  **                 2.Lunch Menu              **$'
MS5 DB 10,13,'  **                 3.Dinner Menu             **$'
M5 DB 10,13,'  **                 4.Snacks                  **$'
M6 DB 10,13,'  **                 5.Deserts                 **$'
M7 DB 10,13,'  **                 6.Drinks                  **$'  
               
               
M8 DB 10,13,10,13,'***Choose your food from the menu***$'
  
;BREAKFAST  
M9 DB 10,13,'  **           1.Tandoori Roti            10/-                     **$' ;breakfast
M10 DB 10,13,'  **           2.Naan                     10/-                     **$'
M11 DB 10,13,'  **           3.Vada Pav                 10/-                     **$'
M12 DB 10,13,'  **           4.Daal                     10/-                     **$'
M13 DB 10,13,'  **           5.Mixed Vegetables         20/-                     **$'
M14 DB 10,13,'  **           6.Poha                     20/-                     **$'
M15 DB 10,13,'  **           7.Idli Sambar              10/-                     **$'
M16 DB 10,13,'  **           8.Dosa                     20/-                     **$'
M17 DB 10,13,'  **           9.Pav Bhaji                60/-                     **$' 

 

;lunch & dinner 

M25 DB 10,13,'  **  1.Mutton Biryani                         90/-                **$' 
M26 DB 10,13,'  **  2.Chicken Biryani                        90/-                **$' 
M27 DB 10,13,'  **  3.Paneer Kofta                           30/-                **$' 
M28 DB 10,13,'  **  4.Butter Paneer Masala                   90/-                **$'
M29 DB 10,13,'  **  5.Non-veg Pizza                          90/-                **$'
M30 DB 10,13,'  **  6.Plain Rice                             10/-                **$'
M31 DB 10,13,'  **  7.Veg Pizza                              30/-                **$'
M32 DB 10,13,'  **  8.Dum Aloo                               30/-                **$'
M33 DB 10,13,'  **  9.Paneer Masala                          30/-                **$'
 

 
 
;DINNER

M18 DB 10,13,'  **  1.Veg Biryani             60/-                               **$'
M19 DB 10,13,'  **  2.Chicken Biryani         80/-                               **$'
M20 DB 10,13,'  **  3.Non Veg Biryani         80/-                               **$' 
M21 DB 10,13,'  **  4.Chicken Curry           40/-                               **$'
M22 DB 10,13,'  **  5.Mutton Curry            50/-                               **$'
M23 DB 10,13,'  **  6.Veg Thali               70/-                               **$'
M34 DB 10,13,'  **  7.Butter Paneer Masala    60/-                               **$'
M35 DB 10,13,'  **  8.Fish fry                60/-                               **$'
M36 DB 10,13,'  **  9.Fish Curry              60/-                               **$'

;snacks

M41 DB 10,13,'  **  1.French Fries      8/-                 **$'
M42 DB 10,13,'  **  2.Kabab Platter     80/-                **$'
M43 DB 10,13,'  **  3.Sandwich          5/-                 **$'
M44 DB 10,13,'  **  4.Brownie           5/-                 **$'



;sweets
M45 DB 10,13,'  **  1.Jalebi         50/-                   **$' 
M46 DB 10,13,'  **  2.Pudding        50/-                   **$'
M47 DB 10,13,'  **  3.Ice Cream      50/-                   **$'
M48 DB 10,13,'  **  4.Curd           50/-                   **$'



;Drinks
M49 DB 10,13,'  **  1.Coke         8/-                      **$'
M50 DB 10,13,'  **  2.Lassi        6/-                      **$'
M51 DB 10,13,'  **  3.Cold Coffee  9/-                      **$'
M52 DB 10,13,'  **  4.Lemonade     9/-                      **$'
M53 DB 10,13,'  **  5.Hot Coffee   7/-                      **$'
M54 DB 10,13,'  **  6.Tea          5/-                      **$'



;INVALID
M55 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M56 DB 10,13,'      ***&&Try Again&&***$'


;STAR RESIZE


MR1 DB 10,13,'  **                                           **$'
MR2 DB 10,13,'  ***********************************************$'

MR3 DB 10,13,'  **                                           **$'


MR4 DB 10,13,'  **                                                               **$'
MR5 DB 10,13,'  *******************************************************************$'



MR6 DB 10,13,'  **                                          **$'
MR7 DB 10,13,'  **********************************************$'


SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,MS5
    MOV AH,9
    INT 21H
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE BREATFAST
    
    CMP BH,2
    JE LD   
     
    CMP BH,3
    JE DINNER 
    
    
    CMP BH,4
    JE SNACKS
     
     
    CMP BH,5
    JE SWEATMEAT
    
    CMP BH,6
    JE DRINKS
    
    
    JMP INVALID
    
       
    
    
   BREATFAST:
    
    
    LEA DX,M8    ;BREATFAST STARTS
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,M9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9          ;3nd
    INT 21H 
    
    LEA DX,M12
    MOV AH,9           ;4rd
    INT 21H
    
    
    LEA DX,M13         ;5th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M14     ;6th
    MOV AH,9
    INT 21H
            
    
    LEA DX,M15
    MOV AH,9           ;7th
    INT 21H
            
            
    LEA DX,M16        ;8th
    MOV AH,9
    INT 21H 
    
    LEA DX,M17         ;9th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    HLT
    
     
     
    LD:
                    ;LUNCH AND DINNER
    LEA DX,M8
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
                  ;STAR BORDER
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
     
    
    LEA DX,M25               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M26               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,M27               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,M28               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M29               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,M30               ;6th
    MOV AH,9
    INT 21H 
    
    LEA DX,M31               ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,M32               ;8th
    MOV AH,9
    INT 21H  
    
    LEA DX,M33               ;9th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
                    ;STAR BORDER
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H 
    HLT
    
    
    
    
    
    
    
  DINNER:
    LEA DX,M8
    MOV AH,9         ;DINNER STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H      ;BORDER
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,M18         ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M19
    MOV AH,9              ;12th
    INT 21H
    
    
    LEA DX,M20          ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M21
    MOV AH,9                ;4th
    INT 21H  
    
    
    LEA DX,M22              ;5th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M23               ;6th
    MOV AH,9
    INT 21H
    
     
    LEA DX,M34               ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M35               ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,M36               ;12th
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5   ;BORDER
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H   

    HLT  

    
    
    
    
    
    
    
    
  SNACKS:
    LEA DX,M8
    MOV AH,9         ;SNACKS STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,M41               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M42               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M43               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M44               ;4th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
     
    HLT
    
    
    
  SWEATMEAT:
  
    LEA DX,M8
    MOV AH,9        ;SWEAT MEAT    STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    LEA DX,M45               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M46               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M47               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M48               ;4th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    HLT
    
    
    
   DRINKS:  
    LEA DX,M8
    MOV AH,9            ;DRINKS STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,M49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M50               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M51               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M52               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M53               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,M54               ;6th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H

    HLT    
    
    
    
   INVALID:
   
    LEA DX,M55
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M56 
    MOV AH,9
    INT 21H 
    HLT
    
END MAIN




