-- Migration to add title_en field to browser_history table
ALTER TABLE browser_history ADD COLUMN title_en TEXT DEFAULT '';

-- Update statements to set title_en
-- Populate the title_en field with English translations

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 1;

-- Original title: Thank you | digainvest.com
UPDATE browser_history SET title_en = 'Thank you | digainvest.com' WHERE id = 2;

-- Original title: Ziraat Bank Secure Payment Page
UPDATE browser_history SET title_en = 'Ziraat Bank Secure Payment Page' WHERE id = 3;

-- Original title: 3-D Secure Processing
UPDATE browser_history SET title_en = '3-D Secure Processing' WHERE id = 4;

-- Original title: Processing your 3-D Secure Transaction
UPDATE browser_history SET title_en = 'Processing your 3-D Secure Transaction' WHERE id = 5;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 6;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 7;

-- Original title: Swedbank
UPDATE browser_history SET title_en = 'Swedbank' WHERE id = 8;

-- Original title: 3-D Secure Processing
UPDATE browser_history SET title_en = '3-D Secure Processing' WHERE id = 9;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 10;

-- Original title: Redirect
UPDATE browser_history SET title_en = 'Redirect' WHERE id = 11;

-- Original title: Ziraat Bank Secure Payment Page
UPDATE browser_history SET title_en = 'Ziraat Bank Secure Payment Page' WHERE id = 12;

-- Original title: Generic Hash Request Handler
UPDATE browser_history SET title_en = 'Generic Hash Request Handler' WHERE id = 13;

-- Original title: 3D PAY HOSTING Model
UPDATE browser_history SET title_en = '3D PAY HOSTING Model' WHERE id = 14;

-- Original title: Register | digainvest.com
UPDATE browser_history SET title_en = 'Register | digainvest.com' WHERE id = 15;

-- Original title: Register | digainvest.com
UPDATE browser_history SET title_en = 'Register | digainvest.com' WHERE id = 16;

-- Original title: Register | digainvest.com
UPDATE browser_history SET title_en = 'Register | digainvest.com' WHERE id = 17;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 18;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 19;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 20;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 21;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 22;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 23;

-- Original title: программа для помощи - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'program for help - koitortus@gmail.com - Gmail' WHERE id = 24;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 25;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 26;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 27;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 28;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 29;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 30;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 31;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 32;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 33;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 34;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 35;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 36;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 37;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 38;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 39;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 40;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 41;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 42;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 43;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 44;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 45;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 46;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 47;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 48;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 49;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 50;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 51;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 52;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 53;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 54;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 55;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 56;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 57;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 58;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 59;

-- Original title: Thank you for downloading AnyDesk
UPDATE browser_history SET title_en = 'Thank you for downloading AnyDesk' WHERE id = 60;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 61;

-- Original title: программа для помощи - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'program for help - koitortus@gmail.com - Gmail' WHERE id = 62;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 63;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 64;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 65;

-- Original title: Checkout Hosted Pages
UPDATE browser_history SET title_en = 'Checkout Hosted Pages' WHERE id = 66;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 67;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 68;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 69;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 70;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 71;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 72;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 73;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 74;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 75;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 76;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 77;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 78;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 79;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 80;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 81;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 82;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 83;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 84;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 85;

-- Original title: Deebetkaart - Swedbank
UPDATE browser_history SET title_en = 'Debit Card - Swedbank' WHERE id = 86;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 87;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 88;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 89;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 90;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 91;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 92;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 93;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 94;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 95;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 96;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 97;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 98;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 99;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 100;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 101;

-- Original title: AllPaySoft Exchange
UPDATE browser_history SET title_en = 'AllPaySoft Exchange' WHERE id = 102;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 103;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 104;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 105;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 106;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 107;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 108;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 109;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 110;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 111;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 112;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 113;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 114;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 115;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 116;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 117;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 118;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 119;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 120;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 121;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 122;

-- Original title: Редактировать профиль | Besttrade4you
UPDATE browser_history SET title_en = 'Edit Profile | Besttrade4you' WHERE id = 123;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 124;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 125;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 126;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 127;

-- Original title: Eesti.ee
UPDATE browser_history SET title_en = 'Eesti.ee' WHERE id = 128;

-- Original title: Eesti.ee
UPDATE browser_history SET title_en = 'Eesti.ee' WHERE id = 129;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 130;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 131;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 132;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 133;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 134;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 135;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 136;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 137;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 138;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 139;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 140;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 141;

-- Original title: Редактировать профиль | Besttrade4you
UPDATE browser_history SET title_en = 'Edit Profile | Besttrade4you' WHERE id = 142;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 143;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 144;

-- Original title: Deals Table | Besttrade4you
UPDATE browser_history SET title_en = 'Deals Table | Besttrade4you' WHERE id = 145;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 146;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 147;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 148;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 149;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 150;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 151;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 152;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 153;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 154;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 155;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 156;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 157;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 158;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 159;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 160;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 161;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 162;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 163;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 164;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 165;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 166;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 167;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 168;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 169;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 170;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 171;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 172;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 173;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 174;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 175;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 176;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 177;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 178;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 179;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 180;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 181;

-- Original title: jspaint - Google otsing
UPDATE browser_history SET title_en = 'jspaint - Google search' WHERE id = 182;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 183;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 184;

-- Original title: Войти в учетную запись трейдинговой платформы | Besttrade4you
UPDATE browser_history SET title_en = 'Log in to the trading platform account | Besttrade4you' WHERE id = 185;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 186;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 187;

-- Original title: BEST INTERCONTINENTAL TRADE LIMITED overview - Find and update company information - GOV.UK
UPDATE browser_history SET title_en = 'BEST INTERCONTINENTAL TRADE LIMITED overview - Find and update company information - GOV.UK' WHERE id = 188;

-- Original title: application-pdf
UPDATE browser_history SET title_en = 'application-pdf' WHERE id = 189;

-- Original title: BEST INTERCONTINENTAL TRADE LIMITED filing history - Find and update company information - GOV.UK
UPDATE browser_history SET title_en = 'BEST INTERCONTINENTAL TRADE LIMITED filing history - Find and update company information - GOV.UK' WHERE id = 190;

-- Original title: BEST INTERCONTINENTAL TRADE LIMITED people - Find and update company information - GOV.UK
UPDATE browser_history SET title_en = 'BEST INTERCONTINENTAL TRADE LIMITED people - Find and update company information - GOV.UK' WHERE id = 191;

-- Original title: BEST INTERCONTINENTAL TRADE LIMITED overview - Find and update company information - GOV.UK
UPDATE browser_history SET title_en = 'BEST INTERCONTINENTAL TRADE LIMITED overview - Find and update company information - GOV.UK' WHERE id = 192;

-- Original title: 06713808 - Google otsing
UPDATE browser_history SET title_en = '06713808 - Google search' WHERE id = 193;

-- Original title: BestTrade4you
UPDATE browser_history SET title_en = 'BestTrade4you' WHERE id = 194;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 195;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 196;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 197;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 198;

-- Original title: Войти в учетную запись трейдинговой платформы | Besttrade4you
UPDATE browser_history SET title_en = 'Log in to the trading platform account | Besttrade4you' WHERE id = 199;

-- Original title: Thank you for downloading AnyDesk
UPDATE browser_history SET title_en = 'Thank you for downloading AnyDesk' WHERE id = 200;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 201;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 202;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 203;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 204;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 205;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 206;

-- Original title: Thank you for downloading AnyDesk
UPDATE browser_history SET title_en = 'Thank you for downloading AnyDesk' WHERE id = 207;

-- Original title: The Fast Remote Desktop Application – AnyDesk
UPDATE browser_history SET title_en = 'The Fast Remote Desktop Application – AnyDesk' WHERE id = 208;

-- Original title: Kirill Fedorov 2 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Kirill Fedorov 2 - koitortus@gmail.com - Gmail' WHERE id = 209;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 210;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 211;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 212;

-- Original title: Кирилл Федоров - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Kirill Fedorov - koitortus@gmail.com - Gmail' WHERE id = 213;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 214;

-- Original title: Welcome - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome - koitortus@gmail.com - Gmail' WHERE id = 215;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 216;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 217;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 218;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 219;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 220;

-- Original title: Войти в учетную запись трейдинговой платформы | Besttrade4you
UPDATE browser_history SET title_en = 'Log in to the trading platform account | Besttrade44you' WHERE id = 221;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 222;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 223;

-- Original title: BestTrade4you
UPDATE browser_history SET title_en = 'BestTrade4you' WHERE id = 224;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 225;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 226;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 227;

-- Original title: Just a moment...
UPDATE browser_history SET title_en = 'Just a moment...' WHERE id = 228;

-- Original title: выписка со счёта swedbank пример - Google otsing
UPDATE browser_history SET title_en = 'Swedbank account statement example - Google search' WHERE id = 229;

-- Original title: выписка со счёта swedbank пример - Google otsing
UPDATE browser_history SET title_en = 'Swedbank account statement example - Google search' WHERE id = 230;

-- Original title: выписка со счёта swedbank - Google otsing
UPDATE browser_history SET title_en = 'Swedbank account statement - Google search' WHERE id = 231;

-- Original title: выписка со счёта swedbank - Google otsing
UPDATE browser_history SET title_en = 'Swedbank account statement - Google search' WHERE id = 232;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account Statement - Swedbank' WHERE id = 233;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 234;

-- Original title: Стартовая - Swedbank
UPDATE browser_history SET title_en = 'Start Page - Swedbank' WHERE id = 235;

-- Original title: Стартовая - Swedbank
UPDATE browser_history SET title_en = 'Start Page - Swedbank' WHERE id = 236;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 237;

-- Original title: swedbank - Google otsing
UPDATE browser_history SET title_en = 'swedbank - Google search' WHERE id = 238;

-- Original title: Возможности по идентефикации личности в Primero | www.primero.ee
UPDATE browser_history SET title_en = 'Identity verification options in Primero | www.primero.ee' WHERE id = 239;

-- Original title: id верификация - Google otsing
UPDATE browser_history SET title_en = 'ID verification - Google search' WHERE id = 240;

-- Original title: id верификация - Google otsing
UPDATE browser_history SET title_en = 'ID verification - Google search' WHERE id = 241;

-- Original title: id верификация - Google otsing
UPDATE browser_history SET title_en = 'ID verification - Google search' WHERE id = 242;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 243;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 244;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 245;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 246;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 247;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 248;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 249;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 250;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 251;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 252;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 253;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 254;

-- Original title: Mustandid - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Drafts - koitortus@gmail.com - Gmail' WHERE id = 255;

-- Original title: Mustandid - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Drafts - koitortus@gmail.com - Gmail' WHERE id = 256;

-- Original title: Mustandid (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Drafts (1) - koitortus@gmail.com - Gmail' WHERE id = 257;

-- Original title: Как отправить письмо и отменить отправку в Gmail - Android - Cправка - Gmail
UPDATE browser_history SET title_en = 'How to send and unsend emails in Gmail - Android - Help - Gmail' WHERE id = 258;

-- Original title: как отправить сообщение с телефона gmail - Google otsing
UPDATE browser_history SET title_en = 'how to send message from phone gmail - Google search' WHERE id = 259;

-- Original title: как отправить сообщение с телефона gmail - Google otsing
UPDATE browser_history SET title_en = 'how to send message from phone gmail - Google search' WHERE id = 260;

-- Original title: как отправить сообщение с телефона gmail - Google otsing
UPDATE browser_history SET title_en = 'how to send message from phone gmail - Google search' WHERE id = 261;

-- Original title: как отправить сообщение с телефона gmail - Google otsing
UPDATE browser_history SET title_en = 'how to send message from phone gmail - Google search' WHERE id = 262;

-- Original title: как отправить сообщение с телефона gmail - Google otsing
UPDATE browser_history SET title_en = 'how to send message from phone gmail - Google search' WHERE id = 263;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 264;

-- Original title: Тест веб-камеры
UPDATE browser_history SET title_en = 'Webcam Test' WHERE id = 265;

-- Original title: онлайн камера тест - Google otsing
UPDATE browser_history SET title_en = 'online camera test - Google search' WHERE id = 266;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 267;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 268;

-- Original title: (teema puudub) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '(no subject) - koitortus@gmail.com - Gmail' WHERE id = 269;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 270;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 271;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 272;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 273;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 274;

-- Original title: Google Play
UPDATE browser_history SET title_en = 'Google Play' WHERE id = 275;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 276;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 277;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 278;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 279;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 280;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 281;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 282;

-- Original title: Google Play
UPDATE browser_history SET title_en = 'Google Play' WHERE id = 283;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 284;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 285;

-- Original title: anydesk – Androidi rakendused Google Playst
UPDATE browser_history SET title_en = 'AnyDesk – Android Apps on Google Play' WHERE id = 286;

-- Original title: Trustee Plus | Wallet & Card – Rakendused Google Plays
UPDATE browser_history SET title_en = 'Trustee Plus | Wallet & Card – Google Play Apps' WHERE id = 287;

-- Original title: Trustee Plus | Wallet & Card – Rakendused Google Plays
UPDATE browser_history SET title_en = 'Trustee Plus | Wallet & Card – Google Play Apps' WHERE id = 288;

-- Original title: Trustee Plus | Wallet & Card – Rakendused Google Plays
UPDATE browser_history SET title_en = 'Trustee Plus | Wallet & Card – Google Play Apps' WHERE id = 289;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 290;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 291;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 292;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 293;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 294;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 295;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 296;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 297;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 298;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 299;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 300;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 301;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 302;

-- Original title: trustee plus - Google otsing
UPDATE browser_history SET title_en = 'trustee plus - Google search' WHERE id = 303;

-- Original title: Trustee Plus | Wallet & Card – Rakendused Google Plays
UPDATE browser_history SET title_en = 'Trustee Plus | Wallet & Card – Google Play Apps' WHERE id = 304;

-- Original title: trustee plus - Google otsing
UPDATE browser_history SET title_en = 'trustee plus - Google search' WHERE id = 305;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 306;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 307;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 308;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 309;

-- Original title: play market anydesk - Google otsing
UPDATE browser_history SET title_en = 'Play Market AnyDesk - Google search' WHERE id = 310;

-- Original title: playmarket - Google otsing
UPDATE browser_history SET title_en = 'Play Market - Google search' WHERE id = 311;

-- Original title: Trustee Plus – cryptocurrency wallet with payment card | Crypto Wallet App
UPDATE browser_history SET title_en = 'Trustee Plus – cryptocurrency wallet with payment card | Crypto Wallet App' WHERE id = 312;

-- Original title: trustee plus - Google otsing
UPDATE browser_history SET title_en = 'trustee plus - Google search' WHERE id = 313;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 314;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 315;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 316;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 317;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 318;

-- Original title: lhv - Google otsing
UPDATE browser_history SET title_en = 'LHV - Google search' WHERE id = 319;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 320;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 321;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 322;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 323;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 324;

-- Original title: jspaint - Google otsing
UPDATE browser_history SET title_en = 'jspaint - Google search' WHERE id = 325;

-- Original title: Hoiused - Swedbank
UPDATE browser_history SET title_en = 'Deposits - Swedbank' WHERE id = 326;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 327;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 328;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 329;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account Statement - Swedbank' WHERE id = 330;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account Statement - Swedbank' WHERE id = 331;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account Statement - Swedbank' WHERE id = 332;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 333;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 334;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 335;

-- Original title: Запросил мои фотографии - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Requested my photos - koitortus@gmail.com - Gmail' WHERE id = 336;

-- Original title: Запросил мои фотографии - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Requested my photos - koitortus@gmail.com - Gmail' WHERE id = 337;

-- Original title: Запросил мои фотографии - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Requested my photos - koitortus@gmail.com - Gmail' WHERE id = 338;

-- Original title: Запросил мои фотографии - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Requested my photos - koitortus@gmail.com - Gmail' WHERE id = 339;

-- Original title: Запросил мои фотографии - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Requested my photos - koitortus@gmail.com - Gmail' WHERE id = 340;

-- Original title: Saadetud - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Sent - koitortus@gmail.com - Gmail' WHERE id = 341;

-- Original title: Kirill Fedorov 2 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Kirill Fedorov 2 - koitortus@gmail.com - Gmail' WHERE id = 342;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 343;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 344;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 345;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 346;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 347;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 348;

-- Original title: Verification Form
UPDATE browser_history SET title_en = 'Verification Form' WHERE id = 349;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 350;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 351;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 352;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 353;

-- Original title: Verification
UPDATE browser_history SET title_en = 'Verification' WHERE id = 354;

-- Original title: Cachet
UPDATE browser_history SET title_en = 'Cachet' WHERE id = 355;

-- Original title: АНАЛИЗ РЫНКА .png - June Solidarity Paint
UPDATE browser_history SET title_en = 'MARKET ANALYSIS .png - June Solidarity Paint' WHERE id = 356;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 357;

-- Original title: Trustee Plus: Email Verification - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Trustee Plus: Email Verification - koitortus@gmail.com - Gmail' WHERE id = 358;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 359;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 360;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 361;

-- Original title: Trustee Plus: Email Verification - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Trustee Plus: Email Verification - koitortus@gmail.com - Gmail' WHERE id = 362;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 363;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 364;

-- Original title: пьфшд - Google otsing
UPDATE browser_history SET title_en = 'pyfhld - Google search' WHERE id = 365;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 366;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 367;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 368;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 369;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 370;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 371;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 372;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 373;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 374;

-- Original title: jspaint - Google otsing
UPDATE browser_history SET title_en = 'jspaint - Google search' WHERE id = 375;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 376;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 377;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 378;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 379;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 380;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 381;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 382;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 383;

-- Original title: Withdrawal Form | Besttrade4you
UPDATE browser_history SET title_en = 'Withdrawal Form | Besttrade4you' WHERE id = 384;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 385;

-- Original title: Avaleht | Terviseportaal
UPDATE browser_history SET title_en = 'Homepage | Health Portal' WHERE id = 386;

-- Original title: Avaleht | Terviseportaal
UPDATE browser_history SET title_en = 'Homepage | Health Portal' WHERE id = 387;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 388;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 389;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 390;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 391;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 392;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 393;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 394;

-- Original title: 10000/20 - Google otsing
UPDATE browser_history SET title_en = '10000/20 - Google search' WHERE id = 395;

-- Original title: 100-20 - Google otsing
UPDATE browser_history SET title_en = '100-20 - Google search' WHERE id = 396;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 397;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 398;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 399;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 400;

-- Original title: untitled - June Solidarity Paint
UPDATE browser_history SET title_en = 'untitled - June Solidarity Paint' WHERE id = 401;

-- Original title: jspaint - Google otsing
UPDATE browser_history SET title_en = 'jspaint - Google search' WHERE id = 402;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 403;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 404;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 405;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 406;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 407;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 408;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing Account Statement Access' WHERE id = 409;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing Account Statement Access' WHERE id = 410;

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing Account Data Access' WHERE id = 411;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 412;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 413;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 414;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 415;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 416;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 417;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 418;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 419;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 420;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 421;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 422;

-- Original title: Finantsvõrdlus | Kalkulaatorid | Tasuta - Altero.ee
UPDATE browser_history SET title_en = 'Financial Comparison | Calculators | Free - Altero.ee' WHERE id = 423;

-- Original title: altero - Google otsing
UPDATE browser_history SET title_en = 'altero - Google search' WHERE id = 424;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 425;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 426;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 427;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 428;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 429;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 430;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing Account Statement Access' WHERE id = 431;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 432;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 433;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing Account Statement Access' WHERE id = 434;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 435;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 436;

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing Account Data Access' WHERE id = 437;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 438;

-- Original title: Konto(de) linkimise. | GoCardless
UPDATE browser_history SET title_en = 'Linking Account(s). | GoCardless' WHERE id = 439;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 440;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 441;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 442;

-- Original title: Anna luba | GoCardless
UPDATE browser_history SET title_en = 'Give Permission | GoCardless' WHERE id = 443;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 444;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 445;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent Service' WHERE id = 446;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 447;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent Service' WHERE id = 448;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent Service' WHERE id = 449;

-- Original title: Riigi autentimisteenus - Turvaline autentimine asutuste e-teenustes
UPDATE browser_history SET title_en = 'State Authentication Service - Secure Authentication in Public e-Services' WHERE id = 450;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent Service' WHERE id = 451;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent Service' WHERE id = 452;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 453;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 454;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 455;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 456;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 457;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 458;

-- Original title: Väikelaen - leia sobiv kuumakse kalkulaatoriga - Inbank
UPDATE browser_history SET title_en = 'Small Loan - find a suitable monthly payment with the calculator - Inbank' WHERE id = 459;

-- Original title: Autoliising - Inbank - Leia sobiv kuumakse kalkulaatoriga
UPDATE browser_history SET title_en = 'Car Leasing - Inbank - Find a suitable monthly payment with the calculator' WHERE id = 460;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 461;

-- Original title: inbank - Google otsing
UPDATE browser_history SET title_en = 'inbank - Google search' WHERE id = 462;

-- Original title: inbank - Google otsing
UPDATE browser_history SET title_en = 'inbank - Google search' WHERE id = 463;

-- Original title: ормузский пролив - Google otsing
UPDATE browser_history SET title_en = 'Strait of Hormuz - Google search' WHERE id = 464;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 465;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 466;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 467;

-- Original title: иран против израиля - Google otsing
UPDATE browser_history SET title_en = 'Iran vs Israel - Google search' WHERE id = 468;

-- Original title: иран против израиля - Google otsing
UPDATE browser_history SET title_en = 'Iran vs Israel - Google search' WHERE id = 469;

-- Original title: иран против израиля - Google otsing
UPDATE browser_history SET title_en = 'Iran vs Israel - Google search' WHERE id = 470;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 471;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 472;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 473;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 475;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 476;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 477;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 478;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 479;

-- Original title: fe2b43a3-7035-40f1-833b-f97991503b64.pdf
UPDATE browser_history SET title_en = 'fe2b43a3-7035-40f1-833b-f97991503b64.pdf' WHERE id = 480;

-- Original title: 75cc6f63-f450-4d0a-9432-174c7f266a76.jpg (1501×2000)
UPDATE browser_history SET title_en = '75cc6f63-f450-4d0a-9432-174c7f266a76.jpg (1501×2000)' WHERE id = 481;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 482;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 483;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 484;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 485;

-- Original title: Privacy and Terms | Binance
UPDATE browser_history SET title_en = 'Privacy and Terms | Binance' WHERE id = 486;

-- Original title: Privacy and Terms | Binance
UPDATE browser_history SET title_en = 'Privacy and Terms | Binance' WHERE id = 487;

-- Original title: Sign In - Google Accounts
UPDATE browser_history SET title_en = 'Sign In - Google Accounts' WHERE id = 488;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 489;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google Accounts' WHERE id = 490;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google Accounts' WHERE id = 491;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google Accounts' WHERE id = 492;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google Accounts' WHERE id = 493;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 494;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 495;

-- Original title: binance - Google otsing
UPDATE browser_history SET title_en = 'binance - Google search' WHERE id = 496;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 497;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 498;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 499;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 500;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 501;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 502;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 503;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 504;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 505;

-- Original title: Uus makse - Swedbank
UPDATE browser_history SET title_en = 'New Payment - Swedbank' WHERE id = 506;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 507;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 508;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 509;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 510;

-- Original title: Tere tulemast LHV-sse! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome to LHV! - koitortus@gmail.com - Gmail' WHERE id = 511;

-- Original title: Otsingutulemused - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Search Results - koitortus@gmail.com - Gmail' WHERE id = 512;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 513;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 514;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 515;

-- Original title: lhv ee - Google otsing
UPDATE browser_history SET title_en = 'LHV ee - Google search' WHERE id = 516;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 517;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 518;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 519;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 520;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 521;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account Statement - Swedbank' WHERE id = 522;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 523;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 524;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 525;

-- Original title: Tuvastamine võtab veidi aega
UPDATE browser_history SET title_en = 'Identification takes a moment' WHERE id = 526;

-- Original title: Tuvastamine võtab veidi aega
UPDATE browser_history SET title_en = 'Identification takes a moment' WHERE id = 527;

-- Original title: Tõenda oma isikut
UPDATE browser_history SET title_en = 'Verify your identity' WHERE id = 528;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 529;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 530;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 531;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 532;

-- Original title: Laenupakkumine - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Loan Offer - koitortus@gmail.com - Gmail' WHERE id = 533;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 534;

-- Original title: Bondora laenupakkumine - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Bondora Loan Offer - koitortus@gmail.com - Gmail' WHERE id = 535;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 536;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 537;

-- Original title: Sisenen oma kontosse
UPDATE browser_history SET title_en = 'Access my account' WHERE id = 538;

-- Original title: Konto väljavõte
UPDATE browser_history SET title_en = 'Account Statement' WHERE id = 539;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 540;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 541;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 542;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 543;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 544;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client Account - Inbank' WHERE id = 545;

-- Original title: Soovin saada kliendiks
UPDATE browser_history SET title_en = 'I want to become a client' WHERE id = 546;

-- Original title: Sisene - Inbank
UPDATE browser_history SET title_en = 'Log in - Inbank' WHERE id = 547;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 548;

-- Original title: Altero.ee salasõna - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Altero.ee password - koitortus@gmail.com - Gmail' WHERE id = 549;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 550;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 551;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 552;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 553;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 554;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 555;

-- Original title: Tere tulemast Bondorasse! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome to Bondora! - koitortus@gmail.com - Gmail' WHERE id = 556;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 557;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 558;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 559;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 560;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 561;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than the bank in just a minute | Bondora' WHERE id = 562;

Siin on teie pealkirjade tõlked inglise keelde:

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing access to account data' WHERE id = 563;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 564;

-- Original title: Konto(de) linkimise. | GoCardless
UPDATE browser_history SET title_en = 'Linking account(s). | GoCardless' WHERE id = 565;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 566;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 567;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 568;

-- Original title: Anna luba | GoCardless
UPDATE browser_history SET title_en = 'Grant permission | GoCardless' WHERE id = 569;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 570;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 571;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 572;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 573;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 574;

-- Original title: Parem pakkumine kui pangast vaid minutiga | Bondora
UPDATE browser_history SET title_en = 'Better offer than from the bank in just a minute | Bondora' WHERE id = 575;

-- Original title: OIDC Form_Post Response
UPDATE browser_history SET title_en = 'OIDC Form_Post Response' WHERE id = 576;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 577;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 578;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 579;

-- Original title: Bigbank - laenudele spetsialiseerunud pank.
UPDATE browser_history SET title_en = 'Bigbank - bank specializing in loans.' WHERE id = 580;

-- Original title: Bigbank
UPDATE browser_history SET title_en = 'Bigbank' WHERE id = 581;

-- Original title: Internetipank | Bigbank
UPDATE browser_history SET title_en = 'Internet Bank | Bigbank' WHERE id = 582;

-- Original title: Internetipank | Bigbank
UPDATE browser_history SET title_en = 'Internet Bank | Bigbank' WHERE id = 583;

-- Original title: Internetipank | Bigbank
UPDATE browser_history SET title_en = 'Internet Bank | Bigbank' WHERE id = 584;

-- Original title: Internetipank | Bigbank
UPDATE browser_history SET title_en = 'Internet Bank | Bigbank' WHERE id = 585;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 586;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 587;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 588;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing account statement access' WHERE id = 589;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 590;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 591;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing account statement access' WHERE id = 592;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 593;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 594;

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing access to account data' WHERE id = 595;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 596;

-- Original title: Konto(de) linkimise. | GoCardless
UPDATE browser_history SET title_en = 'Linking account(s). | GoCardless' WHERE id = 597;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 598;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 599;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 600;

-- Original title: Anna luba | GoCardless
UPDATE browser_history SET title_en = 'Grant permission | GoCardless' WHERE id = 601;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 602;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 603;

-- Original title: Bigbank
UPDATE browser_history SET title_en = 'Bigbank' WHERE id = 604;

-- Original title: Inbank - nutikad finantslahendused
UPDATE browser_history SET title_en = 'Inbank - smart financial solutions' WHERE id = 605;

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing access to account data' WHERE id = 606;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 607;

-- Original title: Konto(de) linkimise. | GoCardless
UPDATE browser_history SET title_en = 'Linking account(s). | GoCardless' WHERE id = 608;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 609;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 610;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 611;

-- Original title: Autoriseerimiseks suunamine lehele. | GoCardless
UPDATE browser_history SET title_en = 'Redirecting to page for authorization. | GoCardless' WHERE id = 612;

-- Original title: Anna luba | GoCardless
UPDATE browser_history SET title_en = 'Grant permission | GoCardless' WHERE id = 613;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 614;

-- Original title: Tärniga - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Starred - koitortus@gmail.com - Gmail' WHERE id = 615;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 616;

-- Original title: 546723 on sinu parooli lähtestuskood - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '546723 is your password reset code - koitortus@gmail.com - Gmail' WHERE id = 617;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 618;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 619;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 620;

-- Original title: Система самообслуживания банка Holm
UPDATE browser_history SET title_en = 'Holm Bank self-service system' WHERE id = 621;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 622;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 623;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 624;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 625;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 626;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 627;

-- Original title: Riigi autentimisteenus - Turvaline autentimine asutuste e-teenustes
UPDATE browser_history SET title_en = 'State authentication service - Secure authentication in institutional e-services' WHERE id = 628;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 629;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 630;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 631;

-- Original title: Bigbank
UPDATE browser_history SET title_en = 'Bigbank' WHERE id = 632;

-- Original title: Logi sisse | Bigbank
UPDATE browser_history SET title_en = 'Log in | Bigbank' WHERE id = 633;

-- Original title: Logi sisse | Bigbank
UPDATE browser_history SET title_en = 'Log in | Bigbank' WHERE id = 634;

-- Original title: Logi sisse | Bigbank
UPDATE browser_history SET title_en = 'Log in | Bigbank' WHERE id = 635;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 636;

-- Original title: Taotlus | Bigbank
UPDATE browser_history SET title_en = 'Application | Bigbank' WHERE id = 637;

-- Original title: Bigbank
UPDATE browser_history SET title_en = 'Bigbank' WHERE id = 638;

-- Original title: Väikelaen Bigbankist – kiire, soodne ja paindlik lahendus | Bigbank
UPDATE browser_history SET title_en = 'Small loan from Bigbank – fast, affordable and flexible solution | Bigbank' WHERE id = 639;

-- Original title: Väikelaen Bigbankist – kiire, soodne ja paindlik lahendus | Bigbank
UPDATE browser_history SET title_en = 'Small loan from Bigbank – fast, affordable and flexible solution | Bigbank' WHERE id = 640;

-- Original title: bigbank.ee - Google otsing
UPDATE browser_history SET title_en = 'bigbank.ee - Google search' WHERE id = 641;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 642;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 643;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 644;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 645;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 646;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing account statement access' WHERE id = 647;

-- Original title: Kontoväljavõtte ligipääsu haldamine
UPDATE browser_history SET title_en = 'Managing account statement access' WHERE id = 648;

-- Original title: Kontoandmetele ligipääsu lubamine
UPDATE browser_history SET title_en = 'Allowing access to account data' WHERE id = 649;

-- Original title: Consent redirect
UPDATE browser_history SET title_en = 'Consent redirect' WHERE id = 650;

-- Original title: Login
UPDATE browser_history SET title_en = 'Login' WHERE id = 651;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 652;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 653;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 654;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 655;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 656;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 657;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 658;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 659;

-- Original title: Riigi autentimisteenus - Turvaline autentimine asutuste e-teenustes
UPDATE browser_history SET title_en = 'State authentication service - Secure authentication in institutional e-services' WHERE id = 660;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 661;

-- Original title: Nõusolekuteenus
UPDATE browser_history SET title_en = 'Consent service' WHERE id = 662;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 663;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 664;

-- Original title: Holm panga iseteenindus
UPDATE browser_history SET title_en = 'Holm Bank self-service' WHERE id = 665;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 666;

-- Original title: Väikelaen erinevateks plaanideks | Holm pank
UPDATE browser_history SET title_en = 'Small loan for various plans | Holm Bank' WHERE id = 667;

-- Original title: Väikelaen erinevateks plaanideks | Holm pank
UPDATE browser_history SET title_en = 'Small loan for various plans | Holm Bank' WHERE id = 668;

-- Original title: Tähtajaline hoius - kindel ja turvaline
UPDATE browser_history SET title_en = 'Fixed-term deposit - safe and secure' WHERE id = 669;

-- Original title: Holm pank | 30 aastat kogemust
UPDATE browser_history SET title_en = 'Holm Bank | 30 years of experience' WHERE id = 670;

-- Original title: holm - Google otsing
UPDATE browser_history SET title_en = 'holm - Google search' WHERE id = 671;

-- Original title: Altero.ee
UPDATE browser_history SET title_en = 'Altero.ee' WHERE id = 672;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 673;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 674;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 675;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 676;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 677;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 678;

-- Original title: A transaction needs your review ⚠️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'A transaction needs your review ⚠️ - koitortus@gmail.com - Gmail' WHERE id = 679;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 680;

-- Original title: Congratulations! Your KYC is approved - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Congratulations! Your KYC is approved - koitortus@gmail.com - Gmail' WHERE id = 681;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 682;

-- Original title: Your USDC order of 11000 EUR is created! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your USDC order of 11000 EUR is created! - koitortus@gmail.com - Gmail' WHERE id = 683;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 684;

-- Original title: Confirm your recent transaction 📱 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Confirm your recent transaction 📱 - koitortus@gmail.com - Gmail' WHERE id = 685;

-- Original title: Postkast (4) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (4) - koitortus@gmail.com - Gmail' WHERE id = 686;

-- Original title: Review your transaction details 🛡️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Review your transaction details 🛡️ - koitortus@gmail.com - Gmail' WHERE id = 687;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 688;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 689;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 690;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 691;

-- Original title: Postkast (5) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (5) - koitortus@gmail.com - Gmail' WHERE id = 692;

-- Original title: Confirm your email address - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Confirm your email address - koitortus@gmail.com - Gmail' WHERE id = 693;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 694;

-- Original title: Your Buysell order details - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your Buysell order details - koitortus@gmail.com - Gmail' WHERE id = 695;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 696;

-- Original title: Your KYC submission has been received - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your KYC submission has been received - koitortus@gmail.com - Gmail' WHERE id = 697;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 698;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 699;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 700;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 701;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 702;

-- Original title: e6d2cc9e-7f8a-4806-b373-b4408dad48bd.jpg (2000×1501)
UPDATE browser_history SET title_en = 'e6d2cc9e-7f8a-4806-b373-b4408dad48bd.jpg (2000×1501)' WHERE id = 703;

-- Original title: 75cc6f63-f450-4d0a-9432-174c7f266a76.jpg (1501×2000)
UPDATE browser_history SET title_en = '75cc6f63-f450-4d0a-9432-174c7f266a76.jpg (1501×2000)' WHERE id = 704;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 705;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 706;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 707;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 708;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 709;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 710;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 711;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 712;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 713;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 714;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 715;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 716;

-- Original title: fe2b43a3-7035-40f1-833b-f97991503b64.pdf
UPDATE browser_history SET title_en = 'fe2b43a3-7035-40f1-833b-f97991503b64.pdf' WHERE id = 717;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 718;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 719;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 720;

-- Original title: Your verification code - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your verification code - koitortus@gmail.com - Gmail' WHERE id = 721;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 722;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 723;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 724;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 725;

-- Original title: Transak - Crypto delivered to your wallet
UPDATE browser_history SET title_en = 'Transak - Crypto delivered to your wallet' WHERE id = 726;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 727;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 728;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 729;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 730;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 731;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 732;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 733;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 734;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 735;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 736;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 737;

-- Original title: SwapsCenter
UPDATE browser_history SET title_en = 'SwapsCenter' WHERE id = 738;

-- Original title: Confirm your email address - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Confirm your email address - koitortus@gmail.com - Gmail' WHERE id = 739;

-- Original title: Dashboard - SwapsCenter
UPDATE browser_history SET title_en = 'Dashboard - SwapsCenter' WHERE id = 740;

-- Original title: Sign Up
UPDATE browser_history SET title_en = 'Sign Up' WHERE id = 741;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 742;

-- Original title: Additional info needed ⚠️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Additional info needed ⚠️ - koitortus@gmail.com - Gmail' WHERE id = 743;

-- Original title: Something went wrong
UPDATE browser_history SET title_en = 'Something went wrong' WHERE id = 744;

-- Original title: Sign Up
UPDATE browser_history SET title_en = 'Sign Up' WHERE id = 745;

-- Original title: SwapsCenter
UPDATE browser_history SET title_en = 'SwapsCenter' WHERE id = 746;

-- Original title: swapingcenr - Google otsing
UPDATE browser_history SET title_en = 'swapingcenr - Google search' WHERE id = 747;

-- Original title: Тест веб-камеры - проверка камеры онлайн
UPDATE browser_history SET title_en = 'Webcam Test - online camera check' WHERE id = 748;

-- Original title: Тест веб-камеры - проверка камеры онлайн
UPDATE browser_history SET title_en = 'Webcam Test - online camera check' WHERE id = 749;

-- Original title: Тест веб-камеры - проверка камеры онлайн
UPDATE browser_history SET title_en = 'Webcam Test - online camera check' WHERE id = 750;

-- Original title: тест камеры - Google otsing
UPDATE browser_history SET title_en = 'camera test - Google search' WHERE id = 751;

-- Original title: Тест веб-камеры
UPDATE browser_history SET title_en = 'Webcam Test' WHERE id = 752;

-- Original title: онлайн камера тест - Google otsing
UPDATE browser_history SET title_en = 'online camera test - Google search' WHERE id = 753;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 754;

-- Original title: [Binance] Your deposit has failed - 2025-06-18 17:45:41 (UTC) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '[Binance] Your deposit has failed - 2025-06-18 17:45:41 (UTC) - koitortus@gmail.com - Gmail' WHERE id = 755;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 756;

-- Original title: Use your phone to open the link | Revolut
UPDATE browser_history SET title_en = 'Use your phone to open the link | Revolut' WHERE id = 757;

-- Original title: Additional info needed ⚠️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Additional info needed ⚠️ - koitortus@gmail.com - Gmail' WHERE id = 758;

-- Original title: Deposit EUR on Binance
UPDATE browser_history SET title_en = 'Deposit EUR on Binance' WHERE id = 759;

-- Original title: Deposit EUR on Binance
UPDATE browser_history SET title_en = 'Deposit EUR on Binance' WHERE id = 760;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 761;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 762;

-- Original title: Deposit EUR on Binance
UPDATE browser_history SET title_en = 'Deposit EUR on Binance' WHERE id = 763;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 764;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 765;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 766;

-- Original title: Deposit EUR on Binance
UPDATE browser_history SET title_en = 'Deposit EUR on Binance' WHERE id = 767;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 768;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 769;

-- Original title: Use your phone to open the link | Revolut
UPDATE browser_history SET title_en = 'Use your phone to open the link | Revolut' WHERE id = 770;

-- Original title: Security check on a recent transaction 🛡️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Security check on a recent transaction 🛡️ - koitortus@gmail.com - Gmail' WHERE id = 771;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 772;

-- Original title: Tere tulemast Google Paymentsi teenusesse! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome to Google Payments service! - koitortus@gmail.com - Gmail' WHERE id = 773;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 774;

-- Original title: Security - Binance
UPDATE browser_history SET title_en = 'Security - Binance' WHERE id = 775;

-- Original title: [Binance] Bind Google 2FA - 2025-06-18 17:37:12(UTC) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '[Binance] Bind Google 2FA - 2025-06-18 17:37:12(UTC) - koitortus@gmail.com - Gmail' WHERE id = 776;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 777;

-- Original title: We''ve blocked card payments to binance.com ⚠️ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'We''ve blocked card payments to binance.com ⚠️ - koitortus@gmail.com - Gmail' WHERE id = 778;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 779;

-- Original title: Manage Google Verification - 2-Factor Authentication - Security - Binance
UPDATE browser_history SET title_en = 'Manage Google Verification - 2-Factor Authentication - Security - Binance' WHERE id = 780;

-- Original title: Manage Google Verification - 2-Factor Authentication - Security - Binance
UPDATE browser_history SET title_en = 'Manage Google Verification - 2-Factor Authentication - Security - Binance' WHERE id = 781;

-- Original title: Security - Binance
UPDATE browser_history SET title_en = 'Security - Binance' WHERE id = 782;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 783;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 784;

-- Original title: Bitcoin Exchange | Cryptocurrency Exchange | Binance
UPDATE browser_history SET title_en = 'Bitcoin Exchange | Cryptocurrency Exchange | Binance' WHERE id = 785;

-- Original title: Revolut
UPDATE browser_history SET title_en = 'Revolut' WHERE id = 786;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 787;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 788;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 789;

-- Original title: Bitcoin Exchange | Cryptocurrency Exchange | Binance
UPDATE browser_history SET title_en = 'Bitcoin Exchange | Cryptocurrency Exchange | Binance' WHERE id = 790;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 791;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 792;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 793;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 794;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 795;

-- Original title: Bitcoin Exchange | Cryptocurrency Exchange | Binance
UPDATE browser_history SET title_en = 'Bitcoin Exchange | Cryptocurrency Exchange | Binance' WHERE id = 796;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 797;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 798;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 799;

-- Original title: [Binance] Verification Successful - 2025-06-18 17:21:03 (UTC) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '[Binance] Verification Successful - 2025-06-18 17:21:03 (UTC) - koitortus@gmail.com - Gmail' WHERE id = 800;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 801;

-- Original title: Buy USDC with EUR | USDC to EUR Calculator
UPDATE browser_history SET title_en = 'Buy USDC with EUR | USDC to EUR Calculator' WHERE id = 802;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 803;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 804;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 805;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 806;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 807;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 808;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 809;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 810;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 811;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 812;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 813;

-- Original title: lhv - Google otsing
UPDATE browser_history SET title_en = 'lhv - Google search' WHERE id = 814;

-- Original title: Deposit EUR on Binance
UPDATE browser_history SET title_en = 'Deposit EUR on Binance' WHERE id = 815;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 816;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 817;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 818;

-- Original title: Sign In - Google Accounts
UPDATE browser_history SET title_en = 'Sign In - Google Accounts' WHERE id = 819;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 820;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 821;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 822;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 823;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 824;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 825;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 826;

-- Original title: Congratulations, you''re verified 💪 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Congratulations, you''re verified 💪 - koitortus@gmail.com - Gmail' WHERE id = 827;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 828;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 829;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 830;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 831;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 832;

-- Original title: Binance - Cryptocurrency Exchange for Bitcoin, Ethereum & Altcoins
UPDATE browser_history SET title_en = 'Binance - Cryptocurrency Exchange for Bitcoin, Ethereum & Altcoins' WHERE id = 833;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 834;

-- Original title: Sign In - Google Accounts
UPDATE browser_history SET title_en = 'Sign In - Google Accounts' WHERE id = 835;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 836;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 837;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 838;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 839;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 840;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 841;

-- Original title: binance - Google otsing
UPDATE browser_history SET title_en = 'binance - Google search' WHERE id = 842;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 843;

-- Original title: Sinu Väikelaen lepingu info - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your Small Loan agreement info - koitortus@gmail.com - Gmail' WHERE id = 844;

-- Original title: Postkast - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox - koitortus@gmail.com - Gmail' WHERE id = 845;

-- Original title: Use your phone to open the link | Revolut
UPDATE browser_history SET title_en = 'Use your phone to open the link | Revolut' WHERE id = 846;

-- Original title: We need a clearer photo of your document 📣 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'We need a clearer photo of your document 📣 - koitortus@gmail.com - Gmail' WHERE id = 847;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 848;

-- Original title: Identity Verification | Binance
UPDATE browser_history SET title_en = 'Identity Verification | Binance' WHERE id = 849;

-- Original title: Dashboard - Binance
UPDATE browser_history SET title_en = 'Dashboard - Binance' WHERE id = 850;

-- Original title: Log In | Binance
UPDATE browser_history SET title_en = 'Log In | Binance' WHERE id = 851;

-- Original title: Sign In - Google Accounts
UPDATE browser_history SET title_en = 'Sign In - Google Accounts' WHERE id = 852;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 853;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 854;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 855;

-- Original title: Logige sisse – Google´i kontod
UPDATE browser_history SET title_en = 'Sign in – Google accounts' WHERE id = 856;

-- Original title: Create a free account | Binance
UPDATE browser_history SET title_en = 'Create a free account | Binance' WHERE id = 857;

-- Original title: binance - Google otsing
UPDATE browser_history SET title_en = 'binance - Google search' WHERE id = 858;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 859;

-- Original title: Sinu raha on teel - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your money is on its way - koitortus@gmail.com - Gmail' WHERE id = 860;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 861;

-- Original title: Sinu Väikelaen lepingu info - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your Small Loan agreement info - koitortus@gmail.com - Gmail' WHERE id = 862;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 863;

-- Original title: Welcome to Revolut! Some important documents for you 🚀 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Welcome to Revolut! Some important documents for you 🚀 - koitortus@gmail.com - Gmail' WHERE id = 864;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 865;

-- Original title: Verify your ID, and you’re ready ✨ - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Verify your ID, and you’re ready ✨ - koitortus@gmail.com - Gmail' WHERE id = 866;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 867;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 868;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 869;

-- Original title: You sent 11 000 € to Koit Ortus 💸 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'You sent 11 000 € to Koit Ortus 💸 - koitortus@gmail.com - Gmail' WHERE id = 870;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 871;

-- Original title: ✅ Success! PURCHASE of 12229.41 USDC complete - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = '✅ Success! PURCHASE of 12229.41 USDC complete - koitortus@gmail.com - Gmail' WHERE id = 872;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 873;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 874;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 875;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 876;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 877;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 878;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 879;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 880;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 881;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 882;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 883;

-- Original title: Laenupakkumine - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Loan offer - koitortus@gmail.com - Gmail' WHERE id = 884;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 885;

-- Original title: Tutvustus - Alustame tuvastamist - Veriff
UPDATE browser_history SET title_en = 'Introduction - Let''s start identification - Veriff' WHERE id = 886;

-- Original title: Accountscoring
UPDATE browser_history SET title_en = 'Accountscoring' WHERE id = 887;

-- Original title: TF Bank väikelaenu taotlus - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'TF Bank small loan application - koitortus@gmail.com - Gmail' WHERE id = 888;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 889;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 890;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 891;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 892;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 893;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 894;

-- Original title: Кредиты - Беззалоговые кредиты до 30 000 евро - Inbank
UPDATE browser_history SET title_en = 'Loans - Unsecured loans up to 30,000 euros - Inbank' WHERE id = 895;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 896;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 897;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 898;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 899;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 900;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 901;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 902;

-- Original title: LHV
UPDATE browser_history SET title_en = 'LHV' WHERE id = 903;

-- Original title: lhb - Google otsing
UPDATE browser_history SET title_en = 'lhb - Google search' WHERE id = 904;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 905;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 906;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 907;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 908;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 909;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 910;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 911;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 912;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 913;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 914;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 915;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 916;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 917;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 918;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 919;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 920;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 921;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 922;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 923;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 924;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 925;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 926;

-- Original title: TF Bank iseteenindus
UPDATE browser_history SET title_en = 'TF Bank self-service' WHERE id = 927;

-- Original title: TF Bank My Pages
UPDATE browser_history SET title_en = 'TF Bank My Pages' WHERE id = 928;

-- Original title: TF Bank My Pages
UPDATE browser_history SET title_en = 'TF Bank My Pages' WHERE id = 929;

-- Original title: TF Bank – mõistlikud laenud mõistlikele inimestele
UPDATE browser_history SET title_en = 'TF Bank – reasonable loans for reasonable people' WHERE id = 930;

-- Original title: tf bank - Google otsing
UPDATE browser_history SET title_en = 'tf bank - Google search' WHERE id = 931;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 932;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account statement - Swedbank' WHERE id = 933;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 934;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account statement - Swedbank' WHERE id = 935;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 936;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 937;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 938;

-- Original title: Счёт клиента - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 939;

-- Original title: Inbank
UPDATE browser_history SET title_en = 'Inbank' WHERE id = 940;

-- Original title: Kliendikonto - Inbank
UPDATE browser_history SET title_en = 'Client account - Inbank' WHERE id = 941;

-- Original title: Sisene - Inbank
UPDATE browser_history SET title_en = 'Login - Inbank' WHERE id = 942;

-- Original title: Inbank - nutikad finantslahendused
UPDATE browser_history SET title_en = 'Inbank - smart financial solutions' WHERE id = 943;

-- Original title: Inbank - nutikad finantslahendused
UPDATE browser_history SET title_en = 'Inbank - smart financial solutions' WHERE id = 944;

-- Original title: inbank - Google otsing
UPDATE browser_history SET title_en = 'inbank - Google search' WHERE id = 945;

-- Original title: inbank - Google otsing
UPDATE browser_history SET title_en = 'inbank - Google search' WHERE id = 946;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 947;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 948;

-- Original title: Tutvustus - Alustame tuvastamist - Veriff
UPDATE browser_history SET title_en = 'Introduction - Let''s start identification - Veriff' WHERE id = 949;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 950;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 951;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 952;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 953;

-- Original title: Teave teie taotluse kohta - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Information about your application - koitortus@gmail.com - Gmail' WHERE id = 954;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 955;

-- Original title: (no title)
UPDATE browser_history SET title_en = '(no title)' WHERE id = 956;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 957;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 958;

-- Original title: ESigning platform
UPDATE browser_history SET title_en = 'ESigning platform' WHERE id = 959;

-- Original title: TF Bank väikelaenu taotlus - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'TF Bank small loan application - koitortus@gmail.com - Gmail' WHERE id = 960;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 961;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 962;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 963;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 964;

-- Original title: Besttrade4you
UPDATE browser_history SET title_en = 'Besttrade4you' WHERE id = 965;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 966;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 967;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 968;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 969;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 970;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 971;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 972;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 973;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 974;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 975;

-- Original title: Erakliendi ülekandelimiidid ja kasutajate haldamine - Swedbank
UPDATE browser_history SET title_en = 'Private client transfer limits and user management - Swedbank' WHERE id = 976;

-- Original title: Konto väljavõte - Swedbank
UPDATE browser_history SET title_en = 'Account statement - Swedbank' WHERE id = 977;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 978;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 979;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 980;

-- Original title: Palgalipik 19.Juuni 2025 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Payslip June 19, 2025 - koitortus@gmail.com - Gmail' WHERE id = 981;

-- Original title: Postkast (1) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (1) - koitortus@gmail.com - Gmail' WHERE id = 982;

-- Original title: A reminder to review Transak - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'A reminder to review Transak - koitortus@gmail.com - Gmail' WHERE id = 983;

-- Original title: Postkast (2) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (2) - koitortus@gmail.com - Gmail' WHERE id = 984;

-- Original title: Order your physical card 💳 - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Order your physical card 💳 - koitortus@gmail.com - Gmail' WHERE id = 985;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 986;

-- Original title: Teade TF Bankist <CID72AA874379A8> - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Message from TF Bank <CID72AA874379A8> - koitortus@gmail.com - Gmail' WHERE id = 987;

-- Original title: Postkast (4) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (4) - koitortus@gmail.com - Gmail' WHERE id = 988;

-- Original title: Andmete täpsustamine - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Clarifying data - koitortus@gmail.com - Gmail' WHERE id = 989;

-- Original title: Postkast (5) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (5) - koitortus@gmail.com - Gmail' WHERE id = 990;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 991;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 992;

-- Original title: Dashboard | Besttrade4you
UPDATE browser_history SET title_en = 'Dashboard | Besttrade4you' WHERE id = 993;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 994;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 995;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 996;

-- Original title: Täname koostöö eest! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Thank you for your cooperation! - koitortus@gmail.com - Gmail' WHERE id = 997;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 998;

-- Original title: Tere Kirill! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Hello Kirill! - koitortus@gmail.com - Gmail' WHERE id = 999;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 1000;

-- Original title: Teie arvamus on meile oluline! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your opinion is important to us! - koitortus@gmail.com - Gmail' WHERE id = 1001;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 1002;

-- Original title: Teie arvamus on meile oluline! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your opinion is important to us! - koitortus@gmail.com - Gmail' WHERE id = 1003;

-- Original title: Postkast (3) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (3) - koitortus@gmail.com - Gmail' WHERE id = 1004;

-- Original title: Teie arvamus on meile oluline! - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Your opinion is important to us! - koitortus@gmail.com - Gmail' WHERE id = 1005;

-- Original title: Postkast (4) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (4) - koitortus@gmail.com - Gmail' WHERE id = 1006;

-- Original title: Postkast (4) - koitortus@gmail.com - Gmail
UPDATE browser_history SET title_en = 'Inbox (4) - koitortus@gmail.com - Gmail' WHERE id = 1007;

-- Original title: Avaleht - Swedbank
UPDATE browser_history SET title_en = 'Homepage - Swedbank' WHERE id = 1008;

-- Verification query (uncomment to check results)
-- SELECT id, title, title_en FROM browser_history LIMIT 10;

