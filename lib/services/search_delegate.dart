import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<WorldTime> recentSearches = [
    WorldTime(url: "America/New_York", country: "United States of America"),
    WorldTime(url: "Asia/Dhaka", country: "Bangladesh"),
    WorldTime(url: "Asia/Kolkata", country: "India"),
    WorldTime(url: "Europe/London", country: "United Kingdom"),
  ];
  final List<WorldTime> searchData = [
    WorldTime(url: "Africa/Abidjan", country: "Ivory Coast"),
    WorldTime(url: "Africa/Accra", country: "Ghana"),
    WorldTime(url: "Africa/Algiers", country: "Algeria"),
    WorldTime(url: "Africa/Bissau", country: "Guinea Bissau"),
    WorldTime(url: "Africa/Cairo", country: "Egypt"),
    WorldTime(url: "Africa/Casablanca", country: "Morocco"),
    WorldTime(url: "Africa/Ceuta", country: "Spain"),
    WorldTime(url: "Africa/El_Aaiun", country: "Morocco"),
    WorldTime(url: "Africa/Johannesburg", country: "South Africa"),
    WorldTime(url: "Africa/Juba", country: "South Sudan"),
    WorldTime(url: "Africa/Khartoum", country: "Sudan"),
    WorldTime(url: "Africa/Lagos", country: "Nigeria"),
    WorldTime(url: "Africa/Maputo", country: "Mozambique"),
    WorldTime(url: "Africa/Monrovia", country: "Liberia"),
    WorldTime(url: "Africa/Nairobi", country: "Kenya"),
    WorldTime(url: "Africa/Ndjamena", country: "Chad"),
    WorldTime(url: "Africa/Sao_Tome", country: "Sao Tome And Principe"),
    WorldTime(url: "Africa/Tripoli", country: "Libya"),
    WorldTime(url: "Africa/Tunis", country: "Tunisia"),
    WorldTime(url: "Africa/Windhoek", country: "Namibia"),
    WorldTime(url: "America/Adak", country: "United States of America"),
    WorldTime(url: "America/Anchorage", country: "United States of America"),
    WorldTime(url: "America/Araguaina", country: "Brazil"),
    WorldTime(url: "America/Argentina/Buenos_Aires", country: "Argentina"),
    WorldTime(url: "America/Argentina/Catamarca", country: "Argentina"),
    WorldTime(url: "America/Argentina/Cordoba", country: "Spain"),
    WorldTime(url: "America/Argentina/Jujuy", country: "Argentina"),
    WorldTime(url: "America/Argentina/La_Rioja", country: "Spain"),
    WorldTime(url: "America/Argentina/Mendoza", country: "Argentina"),
    WorldTime(url: "America/Argentina/Rio_Gallegos", country: "Argentina"),
    WorldTime(url: "America/Argentina/Salta", country: "Argentina"),
    WorldTime(
        url: "America/Argentina/San_Juan", country: "United States of America"),
    WorldTime(url: "America/Argentina/San_Luis", country: "Brazil"),
    WorldTime(url: "America/Argentina/Tucuman", country: "Argentina"),
    WorldTime(url: "America/Argentina/Ushuaia", country: "Argentina"),
    WorldTime(url: "America/Asuncion", country: "Paraguay"),
    WorldTime(url: "America/Atikokan", country: "Canada"),
    WorldTime(url: "America/Bahia", country: "Brazil"),
    WorldTime(url: "America/Bahia_Banderas", country: "Mexico"),
    WorldTime(url: "America/Barbados", country: "Barbados"),
    WorldTime(url: "America/Belem", country: "Palestine"),
    WorldTime(url: "America/Belize", country: "Belize"),
    WorldTime(url: "America/Blanc-Sablon", country: "Canada"),
    WorldTime(url: "America/Boa_Vista", country: "Brazil"),
    WorldTime(url: "America/Bogota", country: "Colombia"),
    WorldTime(url: "America/Boise", country: "United States of America"),
    WorldTime(url: "America/Cambridge_Bay", country: "Canada"),
    WorldTime(url: "America/Campo_Grande", country: "Brazil"),
    WorldTime(url: "America/Cancun", country: "Mexico"),
    WorldTime(url: "America/Caracas", country: "Venezuela"),
    WorldTime(url: "America/Cayenne", country: "France"),
    WorldTime(url: "America/Chicago", country: "United States of America"),
    WorldTime(url: "America/Chihuahua", country: "Mexico"),
    WorldTime(url: "America/Costa_Rica", country: "Costa Rica"),
    WorldTime(url: "America/Creston", country: "United States of America"),
    WorldTime(url: "America/Cuiaba", country: "Brazil"),
    WorldTime(url: "America/Curacao", country: "Netherlands"),
    WorldTime(url: "America/Denmarkshavn", country: "Greenland"),
    WorldTime(url: "America/Dawson", country: "United States of America"),
    WorldTime(url: "America/Dawson_Creek", country: "Canada"),
    WorldTime(url: "America/Denver", country: "United States of America"),
    WorldTime(url: "America/Detroit", country: "United States of America"),
    WorldTime(url: "America/Edmonton", country: "Canada"),
    WorldTime(url: "America/Eirunepe", country: "Brazil"),
    WorldTime(url: "America/El_Salvador", country: "Salvador"),
    WorldTime(url: "America/Fort_Nelson", country: "Canada"),
    WorldTime(url: "America/Fortaleza", country: "Brazil"),
    WorldTime(url: "America/Glace_Bay", country: "Canada"),
    WorldTime(url: "America/Goose_Bay", country: "Canada"),
    WorldTime(url: "America/Grand_Turk", country: "Turks and Caicos"),
    WorldTime(url: "America/Guatemala", country: "Guatemala"),
    WorldTime(url: "America/Guayaquil", country: "Ecuador"),
    WorldTime(url: "America/Guyana", country: "Guyana"),
    WorldTime(url: "America/Halifax", country: "Canada"),
    WorldTime(url: "America/Havana", country: "Cuba"),
    WorldTime(url: "America/Hermosillo", country: "Mexico"),
    WorldTime(
        url: "America/Indiana/Indianapolis",
        country: "United States of America"),
    WorldTime(url: "America/Indiana/Knox", country: "United States of America"),
    WorldTime(
        url: "America/Indiana/Marengo", country: "United States of America"),
    WorldTime(url: "America/Indiana/Petersburg", country: "Russia"),
    WorldTime(
        url: "America/Indiana/Tell_City", country: "United States of America"),
    WorldTime(
        url: "America/Indiana/Vevay", country: "United States of America"),
    WorldTime(url: "America/Indiana/Vincennes", country: "France"),
    WorldTime(
        url: "America/Indiana/Winamac", country: "United States of America"),
    WorldTime(url: "America/Inuvik", country: "Canada"),
    WorldTime(url: "America/Iqaluit", country: "Canada"),
    WorldTime(url: "America/Jamaica", country: "Jamaica"),
    WorldTime(url: "America/Juneau", country: "United States of America"),
    WorldTime(
        url: "America/Kentucky/Louisville",
        country: "United States of America"),
    WorldTime(url: "America/Kentucky/Monticello", country: "France"),
    WorldTime(url: "America/La_Paz", country: "Bolivia"),
    WorldTime(url: "America/Lima", country: "Peru"),
    WorldTime(url: "America/Los_Angeles", country: "United States of America"),
    WorldTime(url: "America/Maceio", country: "Brazil"),
    WorldTime(url: "America/Managua", country: "Nicaragua"),
    WorldTime(url: "America/Manaus", country: "Brazil"),
    WorldTime(url: "America/Martinique", country: "France"),
    WorldTime(url: "America/Matamoros", country: "Mexico"),
    WorldTime(url: "America/Mazatlan", country: "Mexico"),
    WorldTime(url: "America/Menominee", country: "United States of America"),
    WorldTime(url: "America/Merida", country: "Spain"),
    WorldTime(url: "America/Metlakatla", country: "United States of America"),
    WorldTime(url: "America/Mexico_City", country: "Mexico"),
    WorldTime(url: "America/Miquelon", country: "France"),
    WorldTime(url: "America/Moncton", country: "Canada"),
    WorldTime(url: "America/Monterrey", country: "Mexico"),
    WorldTime(url: "America/Montevideo", country: "Uruguay"),
    WorldTime(url: "America/Nassau", country: "Bahamas"),
    WorldTime(url: "America/New_York", country: "United States of America"),
    WorldTime(url: "America/Nipigon", country: "Canada"),
    WorldTime(url: "America/Nome", country: "United States of America"),
    WorldTime(url: "America/Noronha", country: "Brazil"),
    WorldTime(
        url: "America/North_Dakota/Beulah",
        country: "United States of America"),
    WorldTime(url: "America/North_Dakota/Center", country: "France"),
    WorldTime(
        url: "America/North_Dakota/New_Salem",
        country: "United States of America"),
    WorldTime(url: "America/Nuuk", country: "Greenland"),
    WorldTime(url: "America/Ojinaga", country: "Mexico"),
    WorldTime(url: "America/Panama", country: "Panama"),
    WorldTime(url: "America/Pangnirtung", country: "Canada"),
    WorldTime(url: "America/Paramaribo", country: "Suriname"),
    WorldTime(url: "America/Phoenix", country: "United States of America"),
    WorldTime(url: "America/Port-au-Prince", country: "Haiti"),
    WorldTime(url: "America/Port_of_Spain", country: "Trinidad and Tobago"),
    WorldTime(url: "America/Porto_Velho", country: "Brazil"),
    WorldTime(url: "America/Puerto_Rico", country: "United States of America"),
    WorldTime(url: "America/Punta_Arenas", country: "Chile"),
    WorldTime(url: "America/Rainy_River", country: "United States of America"),
    WorldTime(url: "America/Rankin_Inlet", country: "Canada"),
    WorldTime(url: "America/Recife", country: "Brazil"),
    WorldTime(url: "America/Regina", country: "Canada"),
    WorldTime(url: "America/Resolute", country: "Canada"),
    WorldTime(url: "America/Rio_Branco", country: "Brazil"),
    WorldTime(url: "America/Santarem", country: "Portugal"),
    WorldTime(url: "America/Santiago", country: "Costa Rica"),
    WorldTime(url: "America/Santo_Domingo", country: "Dominican Republic"),
    WorldTime(url: "America/Sao_Paulo", country: "Brazil"),
    WorldTime(url: "America/Scoresbysund", country: "Greenland"),
    WorldTime(url: "America/Sitka", country: "United States of America"),
    WorldTime(url: "America/St_Johns", country: "United States of America"),
    WorldTime(url: "America/Swift_Current", country: "Canada"),
    WorldTime(url: "America/Tegucigalpa", country: "Honduras"),
    WorldTime(url: "America/Thule", country: "Greenland"),
    WorldTime(url: "America/Thunder_Bay", country: "Canada"),
    WorldTime(url: "America/Tijuana", country: "Mexico"),
    WorldTime(url: "America/Toronto", country: "Canada"),
    WorldTime(url: "America/Vancouver", country: "Canada"),
    WorldTime(url: "America/Whitehorse", country: "Canada"),
    WorldTime(url: "America/Winnipeg", country: "Canada"),
    WorldTime(url: "America/Yakutat", country: "United States of America"),
    WorldTime(url: "America/Yellowknife", country: "Canada"),
    WorldTime(url: "Asia/Almaty", country: "Kazakhstan"),
    WorldTime(url: "Asia/Amman", country: "Jordan"),
    WorldTime(url: "Asia/Anadyr", country: "Russia"),
    WorldTime(url: "Asia/Aqtau", country: "Kazakhstan"),
    WorldTime(url: "Asia/Aqtobe", country: "Kazakhstan"),
    WorldTime(url: "Asia/Ashgabat", country: "Turkmenistan"),
    WorldTime(url: "Asia/Atyrau", country: "Kazakhstan"),
    WorldTime(url: "Asia/Baghdad", country: "Iraq"),
    WorldTime(url: "Asia/Baku", country: "Azerbaijan"),
    WorldTime(url: "Asia/Bangkok", country: "Thailand"),
    WorldTime(url: "Asia/Barnaul", country: "Russia"),
    WorldTime(url: "Asia/Beirut", country: "Lebanon"),
    WorldTime(url: "Asia/Bishkek", country: "Kyrgyzstan"),
    WorldTime(url: "Asia/Brunei", country: "Brunei"),
    WorldTime(url: "Asia/Chita", country: "Russia"),
    WorldTime(url: "Asia/Choibalsan", country: "Mongolia"),
    WorldTime(url: "Asia/Colombo", country: "Sri Lanka"),
    WorldTime(url: "Asia/Damascus", country: "Syria"),
    WorldTime(url: "Asia/Dhaka", country: "Bangladesh"),
    WorldTime(url: "Asia/Dili", country: "India"),
    WorldTime(url: "Asia/Dubai", country: "United Arab Emirates"),
    WorldTime(url: "Asia/Dushanbe", country: "Tajikistan"),
    WorldTime(url: "Asia/Famagusta", country: "Cyprus"),
    WorldTime(url: "Asia/Gaza", country: "Palestine"),
    WorldTime(url: "Asia/Hebron", country: "Palestine"),
    WorldTime(url: "Asia/Ho_Chi_Minh", country: "Vietnam"),
    WorldTime(url: "Asia/Hong_Kong", country: "China"),
    WorldTime(url: "Asia/Hovd", country: "Mongolia"),
    WorldTime(url: "Asia/Irkutsk", country: "Russia"),
    WorldTime(url: "Asia/Jakarta", country: "Indonesia"),
    WorldTime(url: "Asia/Jayapura", country: "Indonesia"),
    WorldTime(url: "Asia/Jerusalem", country: "Israel"),
    WorldTime(url: "Asia/Kabul", country: "Afghanistan"),
    WorldTime(url: "Asia/Kamchatka", country: "Russia"),
    WorldTime(url: "Asia/Karachi", country: "Pakistan"),
    WorldTime(url: "Asia/Kathmandu", country: "Nepal"),
    WorldTime(url: "Asia/Khandyga", country: "Russia"),
    WorldTime(url: "Asia/Kolkata", country: "India"),
    WorldTime(url: "Asia/Krasnoyarsk", country: "Russia"),
    WorldTime(url: "Asia/Kuala_Lumpur", country: "Malaysia"),
    WorldTime(url: "Asia/Kuching", country: "Malaysia"),
    WorldTime(url: "Asia/Macau", country: "China"),
    WorldTime(url: "Asia/Magadan", country: "Russia"),
    WorldTime(url: "Asia/Makassar", country: "Indonesia"),
    WorldTime(url: "Asia/Manila", country: "Philippines"),
    WorldTime(url: "Asia/Nicosia", country: "Cyprus"),
    WorldTime(url: "Asia/Novokuznetsk", country: "Russia"),
    WorldTime(url: "Asia/Novosibirsk", country: "Russia"),
    WorldTime(url: "Asia/Omsk", country: "Russia"),
    WorldTime(url: "Asia/Oral", country: "Russia"),
    WorldTime(url: "Asia/Pontianak", country: "Indonesia"),
    WorldTime(url: "Asia/Pyongyang", country: "North Korea"),
    WorldTime(url: "Asia/Qatar", country: "Qatar"),
    WorldTime(url: "Asia/Qostanay", country: "Kazakhstan"),
    WorldTime(url: "Asia/Qyzylorda", country: "Kazakhstan"),
    WorldTime(url: "Asia/Riyadh", country: "Saudi Arabia"),
    WorldTime(url: "Asia/Sakhalin", country: "Russia"),
    WorldTime(url: "Asia/Samarkand", country: "Uzbekistan"),
    WorldTime(url: "Asia/Seoul", country: "South Korea"),
    WorldTime(url: "Asia/Shanghai", country: "China"),
    WorldTime(url: "Asia/Singapore", country: "Singapore"),
    WorldTime(url: "Asia/Srednekolymsk", country: "Russia"),
    WorldTime(url: "Asia/Taipei", country: "Taiwan"),
    WorldTime(url: "Asia/Tashkent", country: "Uzbekistan"),
    WorldTime(url: "Asia/Tbilisi", country: "Georgia"),
    WorldTime(url: "Asia/Tehran", country: "Iran"),
    WorldTime(url: "Asia/Thimphu", country: "Bhutan"),
    WorldTime(url: "Asia/Tokyo", country: "Japan"),
    WorldTime(url: "Asia/Tomsk", country: "Russia"),
    WorldTime(url: "Asia/Ulaanbaatar", country: "Mongolia"),
    WorldTime(url: "Asia/Urumqi", country: "China"),
    WorldTime(url: "Asia/Ust-Nera", country: "Russia"),
    WorldTime(url: "Asia/Vladivostok", country: "Russia"),
    WorldTime(url: "Asia/Yakutsk", country: "Russia"),
    WorldTime(url: "Asia/Yangon", country: "Myanmar"),
    WorldTime(url: "Asia/Yekaterinburg", country: "Russia"),
    WorldTime(url: "Asia/Yerevan", country: "Armenia"),
    WorldTime(url: "Atlantic/Azores", country: "Portugal"),
    WorldTime(url: "Atlantic/Bermuda", country: "Bermuda"),
    WorldTime(url: "Atlantic/Canary", country: "United Kingdom"),
    WorldTime(url: "Atlantic/Cape_Verde", country: "Cape Verde"),
    WorldTime(url: "Atlantic/Faroe", country: "Faroe Islands"),
    WorldTime(url: "Atlantic/Madeira", country: "Portugal"),
    WorldTime(url: "Atlantic/Reykjavik", country: "Iceland"),
    WorldTime(url: "Australia/Adelaide", country: "Australia"),
    WorldTime(url: "Australia/Brisbane", country: "Australia"),
    WorldTime(url: "Australia/Broken_Hill", country: "Australia"),
    WorldTime(url: "Australia/Currie", country: "United States of America"),
    WorldTime(url: "Australia/Darwin", country: "Australia"),
    WorldTime(url: "Australia/Eucla", country: "Australia"),
    WorldTime(url: "Australia/Hobart", country: "Australia"),
    WorldTime(url: "Australia/Lindeman", country: "Canada"),
    WorldTime(url: "Australia/Lord_Howe", country: "Australia"),
    WorldTime(url: "Australia/Melbourne", country: "Australia"),
    WorldTime(url: "Australia/Perth", country: "Australia"),
    WorldTime(url: "Australia/Sydney", country: "Australia"),
    WorldTime(url: "Europe/Amsterdam", country: "Netherlands"),
    WorldTime(url: "Europe/Andorra", country: "Andorra"),
    WorldTime(url: "Europe/Astrakhan", country: "Russia"),
    WorldTime(url: "Europe/Athens", country: "Greece"),
    WorldTime(url: "Europe/Belgrade", country: "Serbia"),
    WorldTime(url: "Europe/Berlin", country: "Germany"),
    WorldTime(url: "Europe/Brussels", country: "Belgium"),
    WorldTime(url: "Europe/Bucharest", country: "Romania"),
    WorldTime(url: "Europe/Budapest", country: "Hungary"),
    WorldTime(url: "Europe/Chisinau", country: "Moldova"),
    WorldTime(url: "Europe/Copenhagen", country: "Denmark"),
    WorldTime(url: "Europe/Dublin", country: "Ireland"),
    WorldTime(url: "Europe/Gibraltar", country: "Gibraltar"),
    WorldTime(url: "Europe/Helsinki", country: "Finland"),
    WorldTime(url: "Europe/Istanbul", country: "Turkey"),
    WorldTime(url: "Europe/Kaliningrad", country: "Russia"),
    WorldTime(url: "Europe/Kiev", country: "Ukraine"),
    WorldTime(url: "Europe/Kirov", country: "Russia"),
    WorldTime(url: "Europe/Lisbon", country: "Portugal"),
    WorldTime(url: "Europe/London", country: "United Kingdom"),
    WorldTime(url: "Europe/Luxembourg", country: "Luxembourg"),
    WorldTime(url: "Europe/Madrid", country: "Spain"),
    WorldTime(url: "Europe/Malta", country: "Malta"),
    WorldTime(url: "Europe/Minsk", country: "Belarus"),
    WorldTime(url: "Europe/Monaco", country: "Monaco"),
    WorldTime(url: "Europe/Moscow", country: "Russia"),
    WorldTime(url: "Europe/Oslo", country: "Norway"),
    WorldTime(url: "Europe/Paris", country: "France"),
    WorldTime(url: "Europe/Prague", country: "Czech Republic"),
    WorldTime(url: "Europe/Riga", country: "Latvia"),
    WorldTime(url: "Europe/Rome", country: "Italy"),
    WorldTime(url: "Europe/Samara", country: "Russia"),
    WorldTime(url: "Europe/Saratov", country: "Russia"),
    WorldTime(url: "Europe/Simferopol", country: "Ukraine"),
    WorldTime(url: "Europe/Sofia", country: "Madagascar"),
    WorldTime(url: "Europe/Stockholm", country: "Sweden"),
    WorldTime(url: "Europe/Tallinn", country: "Estonia"),
    WorldTime(url: "Europe/Tirane", country: "Albania"),
    WorldTime(url: "Europe/Ulyanovsk", country: "Russia"),
    WorldTime(url: "Europe/Uzhgorod", country: "Ukraine"),
    WorldTime(url: "Europe/Vienna", country: "Austria"),
    WorldTime(url: "Europe/Vilnius", country: "Lithuania"),
    WorldTime(url: "Europe/Volgograd", country: "Russia"),
    WorldTime(url: "Europe/Warsaw", country: "Poland"),
    WorldTime(url: "Europe/Zaporozhye", country: "Ukraine"),
    WorldTime(url: "Europe/Zurich", country: "Switzerland"),
    WorldTime(url: "Indian/Chagos", country: "British Indian Ocean Territory"),
    WorldTime(url: "Indian/Christmas", country: "United States of America"),
    WorldTime(url: "Indian/Cocos", country: "Brazil"),
    WorldTime(url: "Indian/Kerguelen", country: "France"),
    WorldTime(url: "Indian/Mahe", country: "Seychelles"),
    WorldTime(url: "Indian/Maldives", country: "Maldives"),
    WorldTime(url: "Indian/Mauritius", country: "Mauritius"),
    WorldTime(url: "Indian/Reunion", country: "France"),
    WorldTime(url: "Pacific/Apia", country: "Samoa"),
    WorldTime(url: "Pacific/Auckland", country: "New Zealand"),
    WorldTime(url: "Pacific/Bougainville", country: "France"),
    WorldTime(url: "Pacific/Chatham", country: "United States of America"),
    WorldTime(url: "Pacific/Chuuk", country: "Micronesia"),
    WorldTime(url: "Pacific/Easter", country: "United States of America"),
    WorldTime(url: "Pacific/Efate", country: "Vanuatu"),
    WorldTime(url: "Pacific/Enderbury", country: "Kiribati"),
    WorldTime(url: "Pacific/Fakaofo", country: "Tokelau"),
    WorldTime(url: "Pacific/Funafuti", country: "Tuvalu"),
    WorldTime(url: "Pacific/Galapagos", country: "Ecuador"),
    WorldTime(url: "Pacific/Gambier", country: "France"),
    WorldTime(url: "Pacific/Guadalcanal", country: "Solomon Islands"),
    WorldTime(url: "Pacific/Guam", country: "United States of America"),
    WorldTime(url: "Pacific/Honolulu", country: "United States of America"),
    WorldTime(url: "Pacific/Kiritimati", country: "Kiribati"),
    WorldTime(url: "Pacific/Kosrae", country: "Micronesia"),
    WorldTime(url: "Pacific/Kwajalein", country: "Marshall Island"),
    WorldTime(url: "Pacific/Majuro", country: "Marshall Island"),
    WorldTime(url: "Pacific/Marquesas", country: "France"),
    WorldTime(url: "Pacific/Nauru", country: "Nauru"),
    WorldTime(url: "Pacific/Niue", country: "Niue"),
    WorldTime(url: "Pacific/Norfolk", country: "United Kingdom"),
    WorldTime(url: "Pacific/Noumea", country: "France"),
    WorldTime(url: "Pacific/Pago_Pago", country: "United States of America"),
    WorldTime(url: "Pacific/Palau", country: "Palau"),
    WorldTime(url: "Pacific/Pitcairn", country: "Pitcairn Islands"),
    WorldTime(url: "Pacific/Pohnpei", country: "Micronesia"),
    WorldTime(url: "Pacific/Port_Moresby", country: "Papua New Guinea"),
    WorldTime(url: "Pacific/Rarotonga", country: "Cook Islands"),
    WorldTime(url: "Pacific/Tahiti", country: "France"),
    WorldTime(url: "Pacific/Tarawa", country: "Nigeria"),
    WorldTime(url: "Pacific/Tongatapu", country: "Tonga"),
    WorldTime(url: "Pacific/Wake", country: "United States of America"),
    WorldTime(url: "Pacific/Wallis", country: "Switzerland")
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => "Search for city or country";

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    List<WorldTime> localResult = searchData
        .where(
            (p) => p.identifier().toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
        itemCount: localResult.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              leading: Image.asset(
                "assets/images/flags/${localResult[index].country.toLowerCase().replaceAll(" ", "-")}.png",
                scale: 14,
              ),
              title: Text("${localResult[index].getCity()}"),
              subtitle: Text("${localResult[index].country}"),
              onTap: () async {
                close(context, await localResult[index].fetchTime());
              },
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.

    List<WorldTime> localResult;

    if (query.isEmpty) {
      localResult = recentSearches;
    } else {
      localResult = searchData.where((p) {
        return p.identifier().toLowerCase().contains(query.toLowerCase());
      }).toList();
    }

    int sugg(num) => num >= 4 ? 4 : num;

    return ListView.builder(
        itemCount: sugg(localResult.length),
        itemBuilder: (context, index) {
          return ListTile(
              leading: Icon(Icons.location_city),
              onTap: () {
                query = localResult[index].identifier();
                showResults(context);
              },
              title: Text(
                localResult[index].identifier(),
              ));
        });
  }
}
