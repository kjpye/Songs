\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Great Physician."
  subtitle    = "Sankey No. 729"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"
  meter       = \markup\smallCaps "7.6.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*4
  \textMark \markup { \box \bold "B" }    s1*5 s2.
  \textMark \markup { \box \bold "C" } s4 s1*5
  \textMark \markup { \box \bold "D" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 | a fis b4. fis8 | a4 g2 4 | g gis a4. e8 | g4-> (fis2) 4 |
  fis4 b d4. 8 | 4 fis,2 gis4 | a4 4 4. 8 | 2. 4 | a fis b4. fis8 | a4 g2 \bar "|" \break
  g4 | g gis a4. e8 | g4->(fis2) a4 | d4 fis, cis'4. b8 | a4 d,2 g4 | fis4 4 e4. d8 |
  a'2. 4 | d fis, cis'4. b8 | a4 d,2 g4 | fis d e4. d8 | d2.
}

alto = \relative {
  \autoBeamOff
  d'4 | 4 4 4. fis8 | fis4 e2 d4 | cis d e4. cis8 | d2. 4 |
  d4 4 fis4. 8 | 4 d2 4 | e c d4. e8 | fis2. d4 | 4 4 4. fis8 | 4 e2
  d4 | cis d e4. cis8 | d2. fis4 | 4 d4 4. 8 | 4 c(b) d | d d cis4. d8 |
  cis4(d e) g | fis d4 4. 8 | d4 c(b) d | d a cis4. d8 | 2.
}

tenor = \relative {
  \autoBeamOff
  fis4 | 4 a fis4. b8 | 4 2 4 | a e a4. 8 | b4(a2) 4 |
  a4 fis b4. 8 | 4 2 4 | cis a4 4. 8 | 2. fis4 | 4 a fis4. b8 | 4 2
  b4 | a e a4. 8 | b4(a2) d4 | a4 4 4. g8 | fis4 a(g) b | a a g4. fis8 |
  e4(a2) cis4 | d a4 4. g8 | fis4 a(g) b | a fis g4. fis8 | 2.
}

bass = \relative {
  \autoBeamOff
  d4 | 4 4 4. dis8 | e4 2 4 | a, b cis4. a8 | d2. 4 |
  d4 4 b4. 8 | 4 2 e4 | a, a b4. cis8 | d2. 4 | 4 4 4. dis8 | e4 2
  e4 | a, b c4. a8 | d2. 4 | 4 4 g,4. b8 | d4 fis(d) e | a a,4 4. 8 |
  a4(b cis) e | d d g,4. b8 | d4 fis(g) e | a,4 4 4. d8 | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art my great “Phy -- si -- cian,”
  My Sa -- viour and my All;
  I look to Thee for bless -- ing,
  And on Thy mer -- cy call.
  With tend -- 'rest care Thou watch -- est
  Be -- side the couch of pain,
  And giv -- est health and heal -- ing,
  When hu -- man help is vain. __
  And giv -- est health and heal -- ing,
  When hu -- man help is vain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When in the mid -- night watch -- es,
  With anx -- ious care op -- presses,
  I oft -- en hear Thee whis -- per,
  “Come un -- to Me and rest.”
  Thou car -- est for the wea -- ry,
  Dost mark the spar -- row's fall:
  Then sure -- ly I can trust Thee,
  Thou art my “All in All”; __
  Then sure -- ly I can trust Thee,
  Thou art my “All in All”.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art my “Tower of Re -- fuge,”
  My “Strength” up -- on the way;
  My “Hope” of end -- less glo -- ry,
  When ends life's fleet -- ing day!
  Thou art the on -- ly “Heal -- er”
  For bo -- dy, mind, and soul:
  \repeat unfold 2 {
    And when all oth -- ers fail me,
    Thy touch can make me whole.
  }
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou art my “Re -- sur -- rec -- tion.”
  To life that nev -- er dies,
  Where Thou art now pre -- par -- ing
  A man -- sion in the skies,
  Then has -- ten Thine ap -- pear -- ing,
  To take Thy peo -- ple home,
  \repeat unfold 2 {
    Where sick -- ness, pain, and sor -- row,
    Shall nev -- er, nev -- er come.
  }
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "art " "my " "great " “Phy si "cian,” "
  "\nMy " Sa "viour " "and " "my " "All; "
  "\nI " "look " "to " "Thee " "for " bless "ing, "
  "\nAnd " "on " "Thy " mer "cy " "call. "
  "\nWith " tend "'rest " "care " "Thou " watch "est "
  "\nBe" "side " "the " "couch " "of " "pain, "
  "\nAnd " giv "est " "health " "and " heal "ing, "
  "\nWhen " hu "man " "help " "is " "vain. " 
  "\nAnd " giv "est " "health " "and " heal "ing, "
  "\nWhen " hu "man " "help " "is " "vain.\n"

  \set stanza = "2."
  "\nWhen " "in " "the " mid "night " watch "es, "
  "\nWith " anx "ious " "care " op "presses, "
  "\nI " oft "en " "hear " "Thee " whis "per, "
  "\n“Come " un "to " "Me " "and " "rest.” "
  "\nThou " car "est " "for " "the " wea "ry, "
  "\nDost " "mark " "the " spar "row's " "fall: "
  "\nThen " sure "ly " "I " "can " "trust " "Thee, "
  "\nThou " "art " "my " "“All " "in " "All”; " 
  "\nThen " sure "ly " "I " "can " "trust " "Thee, "
  "\nThou " "art " "my " "“All " "in " "All”.\n"

  \set stanza = "3."
  "\nThou " "art " "my " "“Tower " "of " Re "fuge,” "
  "\nMy " "“Strength” " up "on " "the " "way; "
  "\nMy " "“Hope” " "of " end "less " glo "ry, "
  "\nWhen " "ends " "life's " fleet "ing " "day! "
  "\nThou " "art " "the " on "ly " “Heal "er” "
  "\nFor " bo "dy, " "mind, " "and " "soul: "
  \repeat unfold 2 {
    "\nAnd " "when " "all " oth "ers " "fail " "me, "
    "\nThy " "touch " "can " "make " "me " "whole.\n"
  }

  \set stanza = "4."
  "\nThou " "art " "my " “Re sur rec "tion.” "
  "\nTo " "life " "that " nev "er " "dies, "
  "\nWhere " "Thou " "art " "now " pre par "ing "
  "\nA " man "sion " "in " "the " "skies, "
  "\nThen " has "ten " "Thine " ap pear "ing, "
  "\nTo " "take " "Thy " peo "ple " "home, "
  \repeat unfold 2 {
    "\nWhere " sick "ness, " "pain, " "and " sor "row, "
    "\nShall " nev "er, " nev "er " "come. "
  }
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
