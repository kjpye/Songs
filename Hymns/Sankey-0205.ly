\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Could I Speak!"
  subtitle    = "Sankey No. 205"
  subsubtitle = "Sankey 880 No. 320"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Medley."
  meter       = \markup\smallCaps "8.8.6.d."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4 s2
  \mark \markup { \box "B" } s4 s2.*3
  \mark \markup { \box "C" }    s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4^\mp
  bes(g) g
  g4(ees) ees
  ees4(d) ees8[g]
  g4(f) f^\cresc
  g8. aes16 bes8 8 \bar "|" \break c8 d
  ees2 d8^\f[f] % B
  f8 ees d4 c
  bes2 g8.[aes16]
  bes8. ees16 4 bes % C
  c8. 16 bes4 g8.[aes16]
  bes8. ees16 4 bes
  c8. 16 bes4 \bar "|" \break g8[f]
  ees4. 8 8 8 % D
  f4. 8 8 8
  g2 f4
  ees2
}

alto = \relative {
  \autoBeamOff
  g'4
  g4(ees) ees
  ees4(bes) bes
  bes2 8[ees]
  ees4(d) d^\cresc
  ees8. f16 g8 ees \bar "|" \break ees aes
  g2 f4^\f % B
  f8 8 4 ees
  d2 ees8.[f16]
  g8. 16 4 4 % C
  aes8. 16 g4 ees8.[f16]
  g8. 16 4 4
  aes8. 16 g4 ees8[bes]
  g4. 8 8 8 % D
  bes4. g8 8 8
  ees'2 d4
  ees2
}

tenor = \relative {
  \autoBeamOff
  ees'4
  ees(bes) bes
  bes4(g) bes
  aes2 g8[bes]
  bes2 4
  bes8. 16 8 ees8 8 bes
  bes2 8[d] % B
  d8 c bes4 a
  bes2 4
  bes8. 16 4 ees % C
  ees8. 16 4 bes
  bes8. 16 4 ees
  ees8. 16 4 r4
  R2. % D
  r4. bes8 8 8
  bes2 aes4
  g2
}

bass = \relative {
  \autoBeamOff
  ees4
  ees2 4
  ees2 g4
  f2 ees4
  bes2 4\omit\cresc
  ees8. 16 8 g aes f
  ees2 bes4\omit\f % B
  f'8 8 4 4
  bes,2 ees4
  ees8. 16 4 4 % C
  aes8. 16 ees4 4
  ees8. 16 4 4
  aes8. 16 ees4 r4
  R2.
  r4. bes8 8 8
  ees8(g bes4) bes,
  ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, could I speak the match -- less worth,
  Oh, could I sound the glo -- ries forth
  Which in my Sa -- viour shine,
  I'd soar, and touch the heaven -- ly strings,
  And vie with Ga -- briel, while he sings
  In notes al -- most Di -- vine,
  In notes al -- most Di -- vine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I'd sing the pre -- cious blood He spilt,
  My ran -- som from the dread -- ful guilt
  Of sin, and wrath Di -- vine:
  I'd sing His glo -- rious righ -- teous -- ness,
  In which all- -- per -- fect, heaven -- ly dress
  My soul shall e -- ver shine,
  My soul shall e -- ver shine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I'd sing the char -- ac -- ters He bears,
  And all the forms of love He wears,
  Ex -- alt -- ed on His throne:
  In loft -- iest songs of sweet -- est praise
  I would to E -- ver -- last -- ing days
  Make all His glo -- ries known,
  Make all His glo -- ries known.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Well, the de -- light -- ful day will come
  When my dear Lord will take me home,
  And I shall see His face;
  Then with my Sa -- viour, Bro -- ther Friend,
  A blest e -- tern -- i -- ty I'll spend,
  Tri -- um -- phant in His grace,
  Tri -- um -- phant in His grace!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "could " "I " "speak " "the " match "less " "worth, "
  "\nOh, " "could " "I " "sound " "the " glo "ries " "forth "
  "\nWhich " "in " "my " Sa "viour " "shine, "
  "\nI'd " "soar, " "and " "touch " "the " heaven "ly " "strings, "
  "\nAnd " "vie " "with " Ga "briel, " "while " "he " "sings "
  "\nIn " "notes " al "most " Di "vine, "
  "\nIn " "notes " al "most " Di "vine. "

  \set stanza = "2."
  "\nI'd " "sing " "the " pre "cious " "blood " "He " "spilt, "
  "\nMy " ran "som " "from " "the " dread "ful " "guilt "
  "\nOf " "sin, " "and " "wrath " Di "vine: "
  "\nI'd " "sing " "His " glo "rious " righ teous "ness, "
  "\nIn " "which " all- per "fect, " heaven "ly " "dress "
  "\nMy " "soul " "shall " e "ver " "shine, "
  "\nMy " "soul " "shall " e "ver " "shine. "

  \set stanza = "3."
  "\nI'd " "sing " "the " char ac "ters " "He " "bears, "
  "\nAnd " "all " "the " "forms " "of " "love " "He " "wears, "
  "\nEx" alt "ed " "on " "His " "throne: "
  "\nIn " loft "iest " "songs " "of " sweet "est " "praise "
  "\nI " "would " "to " E ver last "ing " "days "
  "\nMake " "all " "His " glo "ries " "known, "
  "\nMake " "all " "His " glo "ries " "known. "

  \set stanza = "4."
  "\nWell, " "the " de light "ful " "day " "will " "come "
  "\nWhen " "my " "dear " "Lord " "will " "take " "me " "home, "
  "\nAnd " "I " "shall " "see " "His " "face; "
  "\nThen " "with " "my " Sa "viour, " Bro "ther " "Friend, "
  "\nA " "blest " e tern i "ty " "I'll " "spend, "
  "\nTri" um "phant " "in " "His " "grace, "
  "\nTri" um "phant " "in " "His " "grace! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
