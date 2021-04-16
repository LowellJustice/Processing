class SaveFile {

  SaveFile() {
  }
  void saveData() {
    String[] values = {
      Encrypt(Integer.toString(amtCoin)), 

      Encrypt(Integer.toString(clickPwr.currentLevel)), 

      Encrypt(Integer.toString(tier1CPS.currentLevel)), 

      Encrypt(Integer.toString(tier2CPS.currentLevel)), 

      Encrypt(Integer.toString(tier3CPS.currentLevel)), 

      Encrypt(Integer.toString(tier4CPS.currentLevel)), 

      Encrypt(Integer.toString(tier5CPS.currentLevel)), 

      Encrypt(Float.toString(year())), 
      Encrypt(Float.toString(month())), 
      Encrypt(Float.toString(day())), 
      Encrypt(Float.toString(hour())), 
      Encrypt(Float.toString(minute())), 
      Encrypt(Float.toString(second()))
    };
    saveStrings("saveData.txt", values);
  }
  void loadData() {
    String[] values = loadStrings("saveData.txt");
    if (values != null) {
      if (values.length < 12 ) {
        save.saveData();
      } else {
        amtCoin = int(Decrypt(values[0]));
        clickPwr.currentLevel = int(Decrypt(values[1]));
        clickPwr.upgradePrice = round((pow(clickPwr.currentLevel+1, 2)/2)*clickPwr.startingPrice);
        tier1CPS.currentLevel = int(Decrypt(values[2]));
        tier1CPS.upgradePrice = round((pow(tier1CPS.currentLevel+1, 2)/2)*tier1CPS.startingPrice);
        tier2CPS.currentLevel = int(Decrypt(values[3]));
        tier2CPS.upgradePrice = round((pow(tier2CPS.currentLevel+1, 2)/2)*tier2CPS.startingPrice);
        tier3CPS.currentLevel = int(Decrypt(values[4]));
        tier3CPS.upgradePrice = round((pow(tier3CPS.currentLevel+1, 2)/2)*tier3CPS.startingPrice);
        tier4CPS.currentLevel = int(Decrypt(values[5]));
        tier4CPS.upgradePrice = round((pow(tier4CPS.currentLevel+1, 2)/2)*tier4CPS.startingPrice);
        tier5CPS.currentLevel = int(Decrypt(values[6]));
        tier5CPS.upgradePrice = round((pow(tier5CPS.currentLevel+1, 2)/2)*tier5CPS.startingPrice);
        prevYears = round(Float.parseFloat(Decrypt(values[7])));
        prevMonths = round(Float.parseFloat(Decrypt(values[8])));
        prevDays = round(Float.parseFloat(Decrypt(values[9])));
        prevHours = round(Float.parseFloat(Decrypt(values[10])));
        prevMinutes = round(Float.parseFloat(Decrypt(values[11])));
        prevSeconds = round(Float.parseFloat(Decrypt(values[12])));
        welcome.giveCoin(round(abs((year() - prevYears)*365*24*60*60) + 
          abs((month() - prevMonths)*30.5*24*60*60) + 
          abs((day() - prevDays)*24*60*60) + 
          abs((hour() - prevHours)*60*60) + 
          abs((minute() - prevMinutes)*60) +
          abs(second() - prevSeconds)
          ));
      }
    } else {
      noSave = true;
      println("No Save Data.");
    }
  }
}
