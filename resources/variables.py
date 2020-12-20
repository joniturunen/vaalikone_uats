from collections import OrderedDict

# Municipals to test
LIST__MUNICIPALS = ["Hämeenlinna", "Ikaalinen", "Helsinki"]

# Districts and the first candidates in Alphabetical order
DICT__DISTRICTCANDIDATES = OrderedDict(
    [("Electoral District of Lapland", "Pirkka Aalto"), ("Electoral District of Oulu", "Esa Aalto"), ("Electoral District of Vaasa", "Pentti Ahopelto")])

# Application starting page
URL = "https://vaalikone.yle.fi/eduskuntavaali2019/?lang=en"
BROWSE_CANDIDATES = "https://vaalikone.yle.fi/eduskuntavaali2019/ehdokkaat?lang=en"

# Xpath to different elements on the page
MUNICIPALITY_SEARCH = "/html/body/div/main/div[1]/section/div[2]"
MUNICIPALITY_INPUT = "/html/body/div/main/div[1]/section/div[2]/input"
MUNICIPALITY_RESULT = "/html/body/div/main/div[1]/section/div[2]/div/a"

DISTRICT_MENU = "xpath:/html/body/div/main/div[1]/div/div[2]/div[1]/p"
DISTRICT_SELECT = "<a href=""> ${DISTRICT}</a>"
CANDIDATE_PATH = "/html/body/div/main/div[1]/div/div[3]/div[1]/div/div/div[1]/section/div/div[1]/h3/a"

START_BUTTON = "/html/body/div/main/div[1]/section/button"


# Strings to look for on a page
WELCOME = "Welcome to Yle's election compass!"
ELECTION_COMPASS = "ELECTION COMPASS"
QUESTIONS_START = "Finland should be a forerunner"
CANDIDATEs_TEXT = "Meet the candidate"
