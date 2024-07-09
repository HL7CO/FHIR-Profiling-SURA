Alias: $Ramones = https://www.ramones.com

Extension: FavoriteRamoneExtension
Id: FavoriteRamoneExtension
Description: "Ramones band member code"
* ^url = "https://example.org/fhir/StructureDefinition/FavoriteRamoneExtension"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Ramone Favorite Extension"
* . ^definition = "Ramone est amet consequat enim adipisicing non dolor enim. Minim consequat laborum laborum proident cillum nulla cillum. Eu mollit tempor nisi proident elit. Do tempor cillum adipisicing id tempor consectetur proident veniam sit."
* value[x] 1..1
* value[x] only Coding
* value[x] from $Ramones (required)
* value[x] ^binding.description = "Ramones band member code"
* value[x].system 1..1
* value[x].system = "https://www.ramones.com" (exactly)
* value[x].system ^short = "Ramones Code System URL"
* value[x].system ^definition = "Ramone labore aliquip et duis occaecat est id laborum deserunt adipisicing et dolor deserunt ut. Sit ullamco reprehenderit est amet incididunt ex consectetur exercitation nostrud veniam. Laborum fugiat incididunt esse non velit. Aliqua consequat amet cillum amet ullamco voluptate non ullamco irure eu in sunt anim. Nisi ex laborum culpa pariatur incididunt aliqua labore ex commodo ex ad ad cupidatat. Dolor aute non culpa ullamco sint duis consectetur."
* value[x].version 0..0
* value[x].code 1..1
* value[x].code ^short = "Code assigned to the Ramones band member"
* value[x].code ^definition = "Ramone labore amet nostrud occaecat fugiat qui deserunt cupidatat adipisicing. Ad veniam fugiat non veniam laboris tempor aliquip exercitation amet deserunt ex laborum ut occaecat. Enim officia eu nostrud sunt adipisicing. Ullamco minim nostrud anim Lorem anim incididunt laborum. Magna dolore commodo ex aute."
* value[x].display 1..1
* value[x].display ^short = "Name of Ramones band member"
* value[x].display ^definition = "Ramone deserunt non ipsum do adipisicing id ea ad pariatur eu aliquip amet nisi. Aute qui anim occaecat tempor eu. Tempor ut est sunt amet consequat culpa esse culpa ad. Cupidatat nisi magna anim commodo non esse consequat culpa adipisicing aliqua nulla. Lorem commodo consectetur exercitation tempor ea nostrud. Id ad laborum duis sunt proident eu amet labore. Eiusmod laboris nostrud non cillum consectetur officia culpa amet non mollit minim commodo."
* value[x].userSelected 0..0