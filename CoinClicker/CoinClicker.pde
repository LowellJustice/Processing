int amtCoin = 0;
int coinWorth = 1;
int coinInflux = 0;
int influxCounter = 0;

int prevYears = 0;
int prevMonths = 0;
int prevDays = 0;
int prevHours = 0;
int prevMinutes = 0;
int prevSeconds = 0;

int welcomeCounter = 0;
int coinsSinceLastLogin;

boolean inCoinRange = false;
boolean inShopRange = false;
boolean noSave;

boolean mouseLift = true;

boolean gameActive = false;
boolean shopActive = false;

boolean welcomeClicked = false;

PFont coinFont;
PFont scoreFont;
PFont startFont;
PFont unitFont;

color backgroundColor = #B6BC63;
color shopColor = #2FCB5A;
color coinColor = #FCF50D;
color black = #000000;
color unitColor = #D0D393;
color saveColor = #F5AF2C;

Coin clickPL;
Events events;
Shop shop;
ShopUnit clickPwr;
ShopUnit tier1CPS;
ShopUnit tier2CPS;
ShopUnit tier3CPS;
ShopUnit tier4CPS;
ShopUnit tier5CPS;
SaveFile save;
WelcomeBack welcome;

void setup() {
  size(800, 800);
  coinFont = createFont("Fira Sans Condensed Medium", 240);
  scoreFont = createFont("Fira Sans Condensed Medium", 80);
  startFont = createFont("Fira Sans Condensed Medium", 60);
  unitFont = createFont("Fira Sans Condensed Medium", 20);
  if (createFont("Fira Sans Condensed Medium", 20) == null) {
    coinFont = createFont("ArialMT", 240);
    scoreFont = createFont("ArialMT", 80);
    startFont = createFont("ArialMT", 60);
    unitFont = createFont("ArialMT", 20);
  }
  clickPL = new Coin(width/2, height/2, width/2, height/2);
  events = new Events();
  shop = new Shop();
  clickPwr = new ShopUnit("Click Power", 50, 0, 100, 1);
  tier1CPS = new ShopUnit("Tier 1 Generator", 200, 200, 100, 0);
  tier2CPS = new ShopUnit("Tier 2 Generator", 1000, 400, 100, 0);
  tier3CPS = new ShopUnit("Tier 3 Generator", 10000, 600, 100, 0);
  tier4CPS = new ShopUnit("Tier 4 Generator", 100000, 0, 300, 0);
  tier5CPS = new ShopUnit("Tier 5 Generator", 1000000, 200, 300, 0);
  save = new SaveFile();
  welcome = new WelcomeBack();
  events.startScreen();
  save.loadData();
}

void draw() {
  influxCounter++;
  coinWorth = clickPwr.currentLevel;
  coinInflux = tier1CPS.currentLevel + tier2CPS.currentLevel * 10 + tier3CPS.currentLevel * 100 + tier4CPS.currentLevel * 1000 + tier5CPS.currentLevel;
  if (influxCounter >= 60) {
    amtCoin += coinInflux;
    influxCounter = 0;
  }
  if (!gameActive) {
    events.startScreen();
  }
  if (gameActive && !shopActive) {
    events.clickingScreen();
  }
  if (gameActive && shopActive) {
    events.shopScreen();
  }
}

void mousePressed() {
  mouseCheck();
}

void mouseReleased() {
  if ((mouseButton == LEFT)) {
    mouseLift = true;
  }
}

void keyPressed() {
  //FOR DEBUGGING
  /*
  if (keyCode == 75) {
   amtCoin += 50000000;
   }
   */
}

private static String Encrypt(String text)
{
  byte[] textBytes = text.getBytes();
  for (int i = 0; i < textBytes.length; i++)
  {
    int currentByteValue = (int)textBytes[i];
    textBytes[i] = (byte)(currentByteValue > 255 ? currentByteValue - 255 + 10 : currentByteValue + 10);
  }
  String strbyte=new String(textBytes);
  return strbyte;
}
private static String Decrypt(String text)
{
  byte[] textBytes = text.getBytes();
  for (int i = 0; i < textBytes.length; i++)
  {
    int currentByteValue = (int)textBytes[i];
    textBytes[i] = (byte)(currentByteValue < 0 ? currentByteValue + 255 - 10 : currentByteValue - 10);
  }
  String strbyte=new String(textBytes);
  return strbyte;
}

void exit() {
  save.saveData();
}

void mouseCheck() {
  clickPL.coinRangeCheck();
  shop.shopRangeCheck();
  clickPwr.unitRangeCheck();
  tier1CPS.unitRangeCheck();
  tier2CPS.unitRangeCheck();
  tier3CPS.unitRangeCheck();
  tier4CPS.unitRangeCheck();
  tier5CPS.unitRangeCheck();
  if ((mouseButton == LEFT) && inCoinRange && gameActive && !shopActive && mouseLift && welcomeClicked) {
    amtCoin += coinWorth;
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && inShopRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    shopActive = false;
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && inShopRange && gameActive && !shopActive && mouseLift && welcomeClicked) {
    shopActive = true;
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && clickPwr.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    clickPwr.checkCurrency();
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && tier1CPS.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    tier1CPS.checkCurrency();
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && tier2CPS.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    tier2CPS.checkCurrency();
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && tier3CPS.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    tier3CPS.checkCurrency();
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && tier4CPS.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    tier4CPS.checkCurrency();
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && tier5CPS.inUnitRange && gameActive && shopActive && mouseLift && welcomeClicked) {
    tier5CPS.checkCurrency();
    mouseLift = false;
  }
  if (!gameActive) {
    gameActive = true;
    mouseLift = false;
  }
  if ((mouseButton == LEFT) && gameActive && !welcomeClicked && mouseLift) {
    welcomeClicked = true;
  }
}
