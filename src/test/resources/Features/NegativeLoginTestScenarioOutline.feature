Feature: Negative Login Test

  @negative
  Scenario Outline: Negative Login Test DevEx
    Given The user is on the login page
    When  The user logs in using "<username>" and "<password>"
    Then The warning message contains "<message>"
    Examples:
      | username           | password                   | message                                                                                          |
      | eurotech@gmail.com | 1                          | Verlängere diesen Text auf mindestens 6 Zeichen. Derzeit verwendest du 1 Zeichen.                |
      | eurotech           | 1                          | Die E-Mail-Adresse muss ein @-Zeichen enthalten. In der Angabe \"eurotech\" fehlt ein @-Zeichen. |
      | eurotech@          | 1                          | Gib etwas nach dem @-Zeichen ein. Die Angabe „eurotech@“ ist unvollständig.                      |
      | eurotech@@         | 1                          | Nach dem @-Zeichen darf das Zeichen "@" nicht verwendet werden.                                  |
      | eurotech@gmail.com | Tesfhdjkfhkjdshfkjdhkjshfk | Invalid Credentials!                                                                             |
      | euro@gmail         | Tesfhdjkfhkjdshfkjdhkjshfk | Please include a valid email!                                                                    |


