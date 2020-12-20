%.pdf %.kar %.mp3: %.ly
	lilypond -dcrop $<
#	fluidsynth -T raw -F- -q /usr/share/sounds/sf2/FluidR3_GM.sf2 $*.midi | lame -r - $*.mp3
#	fluidsynth -T raw -F- -q /usr/share/sounds/sf2/FluidR3_GM.sf2 $*-midi.midi | lame -r - $*.mp3
	../miditomp3andkar $*-single
	../miditomp3andkar $*-midi
	../miditomp3andkar $*-midi-women
	../miditomp3andkar $*-midi-men
	../miditomp3andkar $*-midi-sop
	../miditomp3andkar $*-midi-alto
	../miditomp3andkar $*-midi-alto1
	../miditomp3andkar $*-midi-alto2
	../miditomp3andkar $*-midi-tenor
	../miditomp3andkar $*-midi-tenor1
	../miditomp3andkar $*-midi-tenor2
	../miditomp3andkar $*-midi-bass
	../miditomp3andkar $*-mp3

clean:
	rm *.pdf *.kar *.midi *.png *.mp3 *~

broken: \
        OComeOComeEmmanual \
        Gaudete \
        TheCamelsCarol \



carols: \
        AdamLayYbounden \
        AwayInAManger \
        AwayInAManger-Kirkpatrick \
        CalypsoCarol \
        ChristmasBells \
        ChristmasDay \
        ChristmasIsComing \
        CoventryCarol \
        DeckTheHalls \
        GaudeamusHodie \
        GoodKingWenceslas \
        GoTellItOnTheMountain \
        GoTellItOnTheMountain2 \
        HarkTheHeraldAngelsSing \
        HereWeComeAWassailing \
        InfantHolyInfantLowly \
        JoyToTheWorld \
        JubilateDeo \
        MariaWalksAmidTheThorn \
        MarysBoyChild \
        OComeAllYeFaithful \
        OLittleTownOfBethlehem \
        OnceInRoyalDavidsCity \
        SilentNight \
        TheBellDothToll \
        TheHollyAndTheIvy \
        WeThreeKings \
        WeWishYouAMerryChristmas \
        WhileShepherdsWatchedTheirFlocksByNight \

shanties: \
        BlowTheManDown \
        SouthAustralia \
        TheCoastOfHighBarbary \
        WhatShallWeDoWithTheDrunkenSailor

all: carols shanties

BlowTheManDown: BlowTheManDown.pdf BlowTheManDown.kar

BlowTheManDown.kar BlowTheManDown.pdf: BlowTheManDown.ly

SouthAustralia: SouthAustralia.pdf SouthAustralia.kar

SouthAustralia.kar SouthAustralia.pdf: SouthAustralia.ly

TheCoastOfHighBarbary: TheCoastOfHighBarbary.pdf TheCoastOfHighBarbary.kar

TheCoastOfHighBarbary.kar TheCoastOfHighBarbary.pdf: TheCoastOfHighBarbary.ly

WhatShallWeDoWithTheDrunkenSailor: WhatShallWeDoWithTheDrunkenSailor.pdf WhatShallWeDoWithTheDrunkenSailor.kar

WhatShallWeDoWithTheDrunkenSailor.kar WhatShallWeDoWithTheDrunkenSailor.pdf: WhatShallWeDoWithTheDrunkenSailor.ly

MarysBoyChild: MarysBoyChild.pdf MarysBoyChild.kar MarysBoyChild.mp3 MarysBoyChild-melody.mp3 MarysBoyChild-harmony.mp3

MarysBoyChild.kar MarysBoyChild.pdf MarysBoyChild.mp3 MarysBoyChild-melody.mp3 MarysBoyChild-harmony.mp3: MarysBoyChild.ly
	lilypond MarysBoyChild.ly
	timidity -Or -o - MarysBoyChild.midi   | lame -r - MarysBoyChild.mp3
	timidity -Or -o - MarysBoyChild-1.midi   | lame -r - MarysBoyChild-melody.mp3
	timidity -Or -o - MarysBoyChild-2.midi   | lame -r - MarysBoyChild-harmony.mp3
	mv MarysBoyChild.midi MarysBoyChild.kar
	rm MarysBoyChild-[12].midi

CalypsoCarol: CalypsoCarol.pdf

CalypsoCarol.pdf: CalypsoCarol.ly

CoventryCarol: CoventryCarol.pdf CoventryCarol.kar

CoventryCarol.kar CoventryCarol.pdf: CoventryCarol.ly

OComeOComeEmmanual: OComeOComeEmmanual.pdf OComeOComeEmmanual.kar

OComeOComeEmmanual.kar OComeOComeEmmanual.pdf: OComeOComeEmmanual.ly

Gaudete: Gaudete.pdf Gaudete.kar

Gaudete.kar Gaudete.pdf: Gaudete.ly

HarkTheHeraldAngelsSing: HarkTheHeraldAngelsSing.pdf HarkTheHeraldAngelsSing.kar

HarkTheHeraldAngelsSing.kar HarkTheHeraldAngelsSing.pdf: HarkTheHeraldAngelsSing.ly

WeThreeKings: WeThreeKings.pdf WeThreeKings.kar

WeThreeKings.kar WeThreeKings.pdf: WeThreeKings.ly

OLittleTownOfBethlehem: OLittleTownOfBethlehem.pdf OLittleTownOfBethlehem.kar

OLittleTownOfBethlehem.kar OLittleTownOfBethlehem.pdf: OLittleTownOfBethlehem.ly

AwayInAManger: AwayInAManger.pdf AwayInAManger.kar

AwayInAManger.kar AwayInAManger.pdf: AwayInAManger.ly

AwayInAManger-Kirkpatrick: AwayInAManger-Kirkpatrick.pdf AwayInAManger-Kirkpatrick.kar AwayInAManger-Kirkpatrick.mp3 AwayInAManger-Kirkpatrick-sop.mp3 AwayInAManger-Kirkpatrick-alto.mp3 AwayInAManger-Kirkpatrick-tenor.mp3 AwayInAManger-Kirkpatrick-bass.mp3

AwayInAManger-Kirkpatrick.pdf AwayInAManger-Kirkpatrick.kar AwayInAManger-Kirkpatrick.mp3 AwayInAManger-Kirkpatrick-sop.mp3 AwayInAManger-Kirkpatrick-alto.mp3 AwayInAManger-Kirkpatrick-tenor.mp3 AwayInAManger-Kirkpatrick-bass.mp3: AwayInAManger-Kirkpatrick.ly
	lilypond AwayInAManger-Kirkpatrick
	timidity -Or -o - AwayInAManger-Kirkpatrick.midi   | lame -r - AwayInAManger-Kirkpatrick.mp3
	timidity -Or -o - AwayInAManger-Kirkpatrick-1.midi | lame -r - AwayInAManger-Kirkpatrick-sop.mp3
	timidity -Or -o - AwayInAManger-Kirkpatrick-2.midi | lame -r - AwayInAManger-Kirkpatrick-alto.mp3
	timidity -Or -o - AwayInAManger-Kirkpatrick-3.midi | lame -r - AwayInAManger-Kirkpatrick-tenor.mp3
	timidity -Or -o - AwayInAManger-Kirkpatrick-4.midi | lame -r - AwayInAManger-Kirkpatrick-bass.mp3
	mv AwayInAManger-Kirkpatrick.midi AwayInAManger-Kirkpatrick.kar
	rm AwayInAManger-Kirkpatrick-[1234].midi

ChristmasDay: ChristmasDay.pdf ChristmasDay.kar ChristmasDay.mp3 ChristmasDay-sop.mp3 ChristmasDay-alto.mp3 ChristmasDay-tenor.mp3 ChristmasDay-bass.mp3

ChristmasDay.pdf ChristmasDay.kar ChristmasDay.mp3 ChristmasDay-sop.mp3 ChristmasDay-alto.mp3 ChristmasDay-tenor.mp3 ChristmasDay-bass.mp3: ChristmasDay.ly
	lilypond ChristmasDay
	timidity -Or -o - ChristmasDay.midi   | lame -r - ChristmasDay.mp3
	timidity -Or -o - ChristmasDay-1.midi | lame -r - ChristmasDay-sop.mp3
	timidity -Or -o - ChristmasDay-2.midi | lame -r - ChristmasDay-alto.mp3
	timidity -Or -o - ChristmasDay-3.midi | lame -r - ChristmasDay-tenor.mp3
	timidity -Or -o - ChristmasDay-4.midi | lame -r - ChristmasDay-bass.mp3
	mv ChristmasDay.midi ChristmasDay.kar
	rm ChristmasDay-[1234].midi

WeWishYouAMerryChristmas: WeWishYouAMerryChristmas.pdf WeWishYouAMerryChristmas.kar

WeWishYouAMerryChristmas.kar WeWishYouAMerryChristmas.pdf: WeWishYouAMerryChristmas.ly

QuemPastoresLaudavere: QuemPastoresLaudavere.pdf QuemPastoresLaudavere.kar

QuemPastoresLaudavere.kar QuemPastoresLaudavere.pdf: QuemPastoresLaudavere.ly

OnceInRoyalDavidsCity: OnceInRoyalDavidsCity.pdf OnceInRoyalDavidsCity.kar

OnceInRoyalDavidsCity.kar OnceInRoyalDavidsCity.pdf: OnceInRoyalDavidsCity.ly

SilentNight: SilentNight.pdf SilentNight.kar SilentNight.mp3 SilentNight-sop.mp3 SilentNight-alto.mp3 SilentNight-tenor.mp3 SilentNight-bass.mp3

SilentNight.pdf SilentNight.kar SilentNight.mp3 SilentNight-sop.mp3 SilentNight-alto.mp3 SilentNight-tenor.mp3 SilentNight-bass.mp3: SilentNight.ly
	lilypond SilentNight
	timidity -Or -o - SilentNight.midi   | lame -r - SilentNight.mp3
	timidity -Or -o - SilentNight-1.midi | lame -r - SilentNight-sop.mp3
	timidity -Or -o - SilentNight-2.midi | lame -r - SilentNight-alto.mp3
	timidity -Or -o - SilentNight-3.midi | lame -r - SilentNight-tenor.mp3
	timidity -Or -o - SilentNight-4.midi | lame -r - SilentNight-bass.mp3
	mv SilentNight.midi SilentNight.kar
	rm SilentNight-[1234].midi

MaryHushedTheLittleJesus: MaryHushedTheLittleJesus.pdf MaryHushedTheLittleJesus.kar MaryHushedTheLittleJesus.mp3 MaryHushedTheLittleJesus-sop.mp3 MaryHushedTheLittleJesus-alto.mp3 MaryHushedTheLittleJesus-tenor.mp3 MaryHushedTheLittleJesus-bass.mp3

MaryHushedTheLittleJesus.pdf MaryHushedTheLittleJesus.kar MaryHushedTheLittleJesus.mp3 MaryHushedTheLittleJesus-sop.mp3 MaryHushedTheLittleJesus-alto.mp3 MaryHushedTheLittleJesus-tenor.mp3 MaryHushedTheLittleJesus-bass.mp3: MaryHushedTheLittleJesus.ly
	lilypond MaryHushedTheLittleJesus
	timidity -Or -o - MaryHushedTheLittleJesus.midi   | lame -r - MaryHushedTheLittleJesus.mp3
	timidity -Or -o - MaryHushedTheLittleJesus-1.midi | lame -r - MaryHushedTheLittleJesus-sop.mp3
	timidity -Or -o - MaryHushedTheLittleJesus-2.midi | lame -r - MaryHushedTheLittleJesus-alto.mp3
	timidity -Or -o - MaryHushedTheLittleJesus-3.midi | lame -r - MaryHushedTheLittleJesus-tenor.mp3
	timidity -Or -o - MaryHushedTheLittleJesus-4.midi | lame -r - MaryHushedTheLittleJesus-bass.mp3
	mv MaryHushedTheLittleJesus.midi MaryHushedTheLittleJesus.kar
	rm MaryHushedTheLittleJesus-[1234].midi

WhileShepherdsWatchedTheirFlocksByNight: WhileShepherdsWatchedTheirFlocksByNight.pdf

WhileShepherdsWatchedTheirFlocksByNight.pdf: WhileShepherdsWatchedTheirFlocksByNight.ly

SussexCarol: SussexCarol.pdf SussexCarol.kar

SussexCarol.kar SussexCarol.pdf: SussexCarol.ly

TheHollyAndTheIvy: TheHollyAndTheIvy.pdf TheHollyAndTheIvy.pdf

TheHollyAndTheIvy.kar TheHollyAndTheIvy.pdf: TheHollyAndTheIvy.ly

DeckTheHalls: DeckTheHalls.pdf

DeckTheHalls.pdf: DeckTheHalls.ly

OComeAllYeFaithful: OComeAllYeFaithful.pdf OComeAllYeFaithful-descant.kar OComeAllYeFaithful-soprano.kar OComeAllYeFaithful-alto.kar OComeAllYeFaithful-tenor.kar OComeAllYeFaithful-bass.kar

OComeAllYeFaithful.pdf OComeAllYeFaithful-descant.kar OComeAllYeFaithful-soprano.kar OComeAllYeFaithful-alto.kar OComeAllYeFaithful-tenor.kar OComeAllYeFaithful-bass.kar: OComeAllYeFaithful.ly
	lilypond OComeAllYeFaithful.ly
	timidity -Or -o - OComeAllYeFaithful.midi | lame -r - OComeAllYeFaithful.mp3
	mv OComeAllYeFaithful.midi OComeAllYeFaithful-descant.kar
	mv OComeAllYeFaithful-1.midi OComeAllYeFaithful-soprano.kar
	mv OComeAllYeFaithful-2.midi OComeAllYeFaithful-alto.kar
	mv OComeAllYeFaithful-3.midi OComeAllYeFaithful-tenor.kar
	mv OComeAllYeFaithful-4.midi OComeAllYeFaithful-bass.kar

JoyToTheWorld: JoyToTheWorld.pdf JoyToTheWorld-women.kar JoyToTheWorld-tenor.kar JoyToTheWorld-bass.kar JoyToTheWorld.mp3 JoyToTheWorld-sop.mp3 JoyToTheWorld-alto.mp3 JoyToTheWorld-tenor.mp3 JoyToTheWorld-bass.mp3

JoyToTheWorld.pdf JoyToTheWorld-women.kar JoyToTheWorld-tenor.kar JoyToTheWorld-bass.kar JoyToTheWorld.mp3 JoyToTheWorld-sop.mp3 JoyToTheWorld-alto.mp3 JoyToTheWorld-tenor.mp3 JoyToTheWorld-bass.mp3: JoyToTheWorld.ly
	lilypond JoyToTheWorld.ly
	timidity -Or -o - JoyToTheWorld.midi   | lame -r - JoyToTheWorld.mp3
	timidity -Or -o - JoyToTheWorld-3.midi | lame -r - JoyToTheWorld-sop.mp3
	timidity -Or -o - JoyToTheWorld-4.midi | lame -r - JoyToTheWorld-alto.mp3
	timidity -Or -o - JoyToTheWorld-5.midi | lame -r - JoyToTheWorld-tenor.mp3
	timidity -Or -o - JoyToTheWorld-6.midi | lame -r - JoyToTheWorld-bass.mp3
	mv JoyToTheWorld.midi JoyToTheWorld-women.kar
	mv JoyToTheWorld-1.midi JoyToTheWorld-tenor.kar
	mv JoyToTheWorld-2.midi JoyToTheWorld-bass.kar
	rm JoyToTheWorld-[3456].midi

AdamLayYbounden: \
                 AdamLayYbounden.pdf \
                 AdamLayYbounden-sop.kar \
                 AdamLayYbounden-alto.kar \
                 AdamLayYbounden-ten.kar \
                 AdamLayYbounden-bass.kar

AdamLayYbounden.pdf AdamLayYbounden.kar: AdamLayYbounden.ly
	lilypond AdamLayYbounden
	timidity -Or -o - AdamLayYbounden.midi | lame -r - AdamLayYbounden.mp3
	mv AdamLayYbounden.midi AdamLayYbounden-sop.kar
	mv AdamLayYbounden-1.midi AdamLayYbounden-alto.kar
	mv AdamLayYbounden-2.midi AdamLayYbounden-ten.kar
	mv AdamLayYbounden-3.midi AdamLayYbounden-bass.kar

HereWeComeAWassailing: HereWeComeAWassailing.pdf HereWeComeAWassailing.kar HereWeComeAWassailing-bass.kar

HereWeComeAWassailing.pdf HereWeComeAWassailing.kar HereWeComeAWassailing-bass.kar: HereWeComeAWassailing.ly
	lilypond HereWeComeAWassailing
	timidity -Or -o - HereWeComeAWassailing.midi | lame -r - HereWeComeAWassailing.mp3
	mv HereWeComeAWassailing.midi HereWeComeAWassailing.kar
	mv HereWeComeAWassailing-1.midi HereWeComeAWassailing-bass.kar

InfantHolyInfantLowly: InfantHolyInfantLowly.pdf InfantHolyInfantLowly.kar

InfantHolyInfantLowly.kar InfantHolyInfantLowly.pdf: InfantHolyInfantLowly.ly
	lilypond InfantHolyInfantLowly
	timidity -Or -o - InfantHolyInfantLowly.midi | lame -r - InfantHolyInfantLowly.mp3
	mv InfantHolyInfantLowly.midi InfantHolyInfantLowly-sop.kar
	mv InfantHolyInfantLowly-1.midi InfantHolyInfantLowly-alto.kar
	mv InfantHolyInfantLowly-2.midi InfantHolyInfantLowly-tenor.kar
	mv InfantHolyInfantLowly-3.midi InfantHolyInfantLowly-bass.kar

MariaWalksAmidTheThorn: MariaWalksAmidTheThorn.pdf MariaWalksAmidTheThorn.kar

MariaWalksAmidTheThorn.kar MariaWalksAmidTheThorn.pdf: MariaWalksAmidTheThorn.ly
	lilypond MariaWalksAmidTheThorn
	timidity -Or -o - MariaWalksAmidTheThorn.midi | lame -r - MariaWalksAmidTheThorn.mp3
	mv MariaWalksAmidTheThorn.midi MariaWalksAmidTheThorn-sopten.kar
	mv MariaWalksAmidTheThorn-1.midi MariaWalksAmidTheThorn-altobass.kar

GoTellItOnTheMountain: GoTellItOnTheMountain.pdf GoTellItOnTheMountain.kar

GoTellItOnTheMountain.kar GoTellItOnTheMountain.pdf: GoTellItOnTheMountain.ly
	lilypond GoTellItOnTheMountain
	timidity -Or -o - GoTellItOnTheMountain.midi | lame -r - GoTellItOnTheMountain.mp3
	mv GoTellItOnTheMountain.midi GoTellItOnTheMountain.kar

GoTellItOnTheMountain2: GoTellItOnTheMountain2.pdf GoTellItOnTheMountain2.kar GoTellItOnTheMountain2-bass.kar GoTellItOnTheMountain2.mp3 GoTellItOnTheMountain2-melody.mp3 GoTellItOnTheMountain2-bass.mp3

GoTellItOnTheMountain2.pdf GoTellItOnTheMountain2.kar GoTellItOnTheMountain2-bass.kar GoTellItOnTheMountain2.mp3 GoTellItOnTheMountain2-melody.mp3 GoTellItOnTheMountain2-bass.mp3: GoTellItOnTheMountain2.ly
	lilypond GoTellItOnTheMountain2
	timidity -Or -o - GoTellItOnTheMountain2.midi | lame -r - GoTellItOnTheMountain2.mp3
	timidity -Or -o - GoTellItOnTheMountain2-2.midi | lame -r - GoTellItOnTheMountain2-melody.mp3
	timidity -Or -o - GoTellItOnTheMountain2-3.midi | lame -r - GoTellItOnTheMountain2-bass.mp3
	mv GoTellItOnTheMountain2.midi GoTellItOnTheMountain2.kar
	mv GoTellItOnTheMountain2-1.midi GoTellItOnTheMountain2-bass.kar
	rm GoTellItOnTheMountain2-[23].midi

JubilateDeo: JubilateDeo.pdf JubilateDeo.kar

JubilateDeo.kar JubilateDeo.pdf: JubilateDeo.ly
	lilypond JubilateDeo
	timidity -Or -o - JubilateDeo.midi | lame -r - JubilateDeo.mp3
	mv JubilateDeo.midi JubilateDeo.kar

TheBellDothToll: TheBellDothToll.pdf TheBellDothToll.kar

TheBellDothToll.kar TheBellDothToll.pdf: TheBellDothToll.ly
	lilypond TheBellDothToll
	timidity -Or -o - TheBellDothToll.midi | lame -r - TheBellDothToll.mp3
	mv TheBellDothToll.midi TheBellDothToll.kar

ChristmasBells: ChristmasBells.pdf ChristmasBells.kar

ChristmasBells.kar ChristmasBells.pdf: ChristmasBells.ly
	lilypond ChristmasBells
	timidity -Or -o - ChristmasBells.midi | lame -r - ChristmasBells.mp3
	mv ChristmasBells.midi ChristmasBells1.kar
	mv ChristmasBells-1.midi ChristmasBells2.kar

ChristmasIsComing: ChristmasIsComing.pdf ChristmasIsComing.kar

GoodKingWenceslas: GoodKingWenceslas.pdf GoodKingWenceslas.kar GoodKingWenceslas.mp3 GoodKingWenceslas-sop.mp3 GoodKingWenceslas-alto.mp3 GoodKingWenceslas-tenor.mp3 GoodKingWenceslas-bass.mp3

GoodKingWenceslas.pdf GoodKingWenceslas.kar GoodKingWenceslas.mp3 GoodKingWenceslas-sop.mp3 GoodKingWenceslas-alto.mp3 GoodKingWenceslas-tenor.mp3 GoodKingWenceslas-bass.mp3: GoodKingWenceslas.ly
	lilypond GoodKingWenceslas
	timidity -Or -o - GoodKingWenceslas.midi   | lame -r - GoodKingWenceslas.mp3
	timidity -Or -o - GoodKingWenceslas-1.midi | lame -r - GoodKingWenceslas-sop.mp3
	timidity -Or -o - GoodKingWenceslas-2.midi | lame -r - GoodKingWenceslas-alto.mp3
	timidity -Or -o - GoodKingWenceslas-3.midi | lame -r - GoodKingWenceslas-tenor.mp3
	timidity -Or -o - GoodKingWenceslas-4.midi | lame -r - GoodKingWenceslas-bass.mp3
	mv GoodKingWenceslas.midi GoodKingWenceslas.kar
	rm GoodKingWenceslas-[1234].midi

TheCamelsCarols: TheCamelsCarols.pdf TheCamelsCarols.kar TheCamelsCarols.mp3 TheCamelsCarols-sop.mp3 TheCamelsCarols-alto.mp3 TheCamelsCarols-tenor.mp3 TheCamelsCarols-bass.mp3

TheCamelsCarols.pdf TheCamelsCarols.kar TheCamelsCarols.mp3 TheCamelsCarols-sop.mp3 TheCamelsCarols-alto.mp3 TheCamelsCarols-tenor.mp3 TheCamelsCarols-bass.mp3: TheCamelsCarols.ly
	lilypond TheCamelsCarols
	timidity -Or -o - TheCamelsCarols.midi   | lame -r - TheCamelsCarols.mp3
	timidity -Or -o - TheCamelsCarols-1.midi | lame -r - TheCamelsCarols-sop.mp3
	timidity -Or -o - TheCamelsCarols-2.midi | lame -r - TheCamelsCarols-alto.mp3
	timidity -Or -o - TheCamelsCarols-3.midi | lame -r - TheCamelsCarols-tenor.mp3
	timidity -Or -o - TheCamelsCarols-4.midi | lame -r - TheCamelsCarols-bass.mp3
	mv TheCamelsCarols.midi TheCamelsCarols.kar
	rm TheCamelsCarols-[1234].midi

GaudeamusHodie: GaudeamusHodie.pdf GaudeamusHodie.kar

ChristmasIsComing.kar ChristmasIsComing.pdf: ChristmasIsComing.ly
	lilypond ChristmasIsComing
	timidity -Or -o - ChristmasIsComing.midi | lame -r - ChristmasIsComing.mp3
	mv ChristmasIsComing.midi ChristmasIsComing1.kar
	mv ChristmasIsComing-1.midi ChristmasIsComing2.kar
	mv ChristmasIsComing-2.midi ChristmasIsComing3.kar







