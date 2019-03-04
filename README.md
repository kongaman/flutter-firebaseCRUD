# flutter-firebaseCRUD

udemy: https://www.udemy.com/draft/1951680/learn/v4/content (German)

## Flutter - Firebase Datenbank CRUD - Einfach! - Kostenlos

### App-Basis
Im ersten Teil wird einfach nur die App aufgebaut.

### Firebase Einrichtung
* Mit Google Account einloggen
* https://console.firebase.google.com
* Projekt anlegen
* Datenbank (Cloud Firestore) anlegen
* für den Anfang "Test" wählen (allow read, write;)
* Project Overview (App hinzufügen um zu beginnen)
    1. Android:
        * Android Paketname: AndroidStudio -> Projektname -> android -> app -> src -> main -> AndroidManifest.xml<br>
            ganz oben package = "de.ck.train.flutter_firebasecrud" <--- kopien und einfügen
        * Klick auf "App registrieren"
        * Konfigurationsdatei herunterladen
        * Einfügen in  AndroidStudio -> Projektname -> android -> app
        * "Weiter"
        * classpath... unter AndroidStudio -> Projektname -> android an die entsprechende Stelle einfügen
        * Rest unter AndroidStudio -> Projektname -> android -> app in build.gradle einfügen
        * "Weiter"
        * Wenn erfolgreich Kontak --> "Sie haben Firebase erfolgreich..."
    2. IOS:
        * de.ck.train.flutter_firebasecrud !!!! **Unterstrich geht nicht -> nie wieder machen**
        * GoogleService-Infp.plist unter ios -> Runner speichern
        * alle andere Sachen können übersprungen werden
        * cloud_firestore in pubspec.yaml unter dependecies eintragen 
        * doppelklick auf cloud_firestore zum markieren
        * dann auf die Lampe -> Flutter commands -> Packages get
 * Methoden anpassen
        * readData()
        * deleteData()
        * createData()
        
