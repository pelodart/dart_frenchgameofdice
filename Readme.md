# Würfelspiel auf dem 17. Jahrhundert

Im 17. Jahrhundert war in Frankreich ein Würfelspiel üblich, bei dem folgende Regeln galten: Wenn man bei einem Wurf mit 4 Würfeln mindestens eine Sechs würfelte, hatte man gewonnen und bekam von der Spielbank den doppelten Einsatz zurück. Im anderen Fall hatte man verloren.

Erstellen Sie ein dart-Programm, dass dieses Spiel für *n* Würfe simuliert und dabei die Gewinnchancen mit fortlaufender Spieldauer semigrafisch darstellt. Die Anzahl der Würfe ist dabei im Programm einzugeben oder als Konstante (```const```) festzulegen. Sie darf nicht kleiner als 1000 sein und sollte ein Vielfaches von 100 sein.

Für die Erzeugung von Zufallszahlen gibt es in der dart-Laufzeitbibliothek die Klasse ```Random```. Die Methode

```dart
int nextInt(int max);
```

erzeugt eine nicht-negative Zufallszahl im Bereich von 0 (einschließlich) bis ```max``` (ausschließlich).

Mögliche Ausführungen des Programms könnten aussehen:


```
           40   42   44   46   48   50   52   54   56   58   60          Prozent
Spiele ----+----+----+----+----+----+----+----+----+----+----+----   (Gewinnchance)

      100:                                 *                            (53.00)
      200:                             *                                (51.50)
      300:                               *                              (52.00)
      400:                          *                                   (50.25)
      500:                         *                                    (49.60)
      600:                             *                                (51.50)
      700:                             *                                (51.57)
      800:                             *                                (51.50)
      900:                              *                               (51.78)
     1000:                               *                              (52.00)
     1100:                               *                              (52.09)
     1200:                                *                             (52.42)
     1300:                               *                              (52.31)
     1400:                               *                              (52.07)
     1500:                               *                              (52.07)
     1600:                              *                               (51.75)
     1700:                              *                               (51.82)
     1800:                                *                             (52.44)
     1900:                              *                               (51.95)
     2000:                             *                                (51.55)
     2100:                             *                                (51.57)

==> Statistisch ermnittelte Gewinnchance (2000 Würfe): 51.57142857142857
```

In diesem Beispiel wurde 2000 Mal gewürfelt. Geben Sie nach jedem 100.-ten Wurf eine Zwischenstatistik auf der Konsole aus.

*Abschließender Hinweis*:

Welche Beobachtungen können Sie machen, wenn Sie das Programm wiederholt mit einer großen Anzahl von „Spielen“ ausführen?