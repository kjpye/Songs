\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Substitution."
  subtitle    = "Sankey No. 128"
  subsubtitle = "Sankey 880 No. 44"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira. D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. A. R. Cousin."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=90
}

soprano = \relative {
  \autoBeamOff
  ees'8[g]
  bes4. 8 4. g8
  g4 f ees4. bes'8
  c4 bes aes f
  g2. \bar "|" \break \partial 4 ees8[g]
  bes4. 8 4 g % B
  g4 f ees4. g8
  f4 bes c d
  bes2. \bar "|" \break \partial 4 aes4
  g4. 8 aes4 4 % C
  bes4 ees c4. 8
  bes4 ees, g4. f8
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'8[g] g4. 8 4. ees8
  ees4 d ees4. 8
  ees4 4 d d
  ees2. ees8[g]
  g4. 8 4 ees % B
  ees4 d ees4. 8
  d4 d ees f
  d2. 4
  ees4. 8 d4 d % C
  ees4 4 4. 8
  ees4 4 4. d8
  bes2.
}

tenor = \relative {
  \autoBeamOff
  g8[bes]
  ees4. 8 4. bes8
  bes4 aes g4. bes8
  aes4 bes bes bes
  bes2. g8[bes]
  ees4. 8 4 bes % B
  bes4 aes g4. bes8
  bes4 4 a4 4
  bes2. 4
  bes4. 8 4 4 % C
  bes4 4 aes4. 8
  g4 4 bes4. aes8
  g2.
}

bass= \relative {
  ees4
  ees4. 8 4. 8
  bes4 4 ees4. g8
  aes4 g f bes,
  ees2. 4
  ees4. 8 4 4 % B
  bes4 4 ees4. 8
  f4 4 4 4
  bes,2. 4
  ees4. 8 f4 4 % C
  g4 4 aes4. aes,8
  bes4 4 4. 8
  ees2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O Christ, what bur -- dens bowed Thy head!
  Our load was laid on Thee;
  Thou stood -- est in the sin -- ner's stead,
  Didst bear all ill for me.
  A Vic -- tem led, Thy blood was shed;
  Now there's no load for me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Death and the curse were in our cup:
  O Christ, "'t was" full for Thee!
  But Thou hast drained the last dark drop;
  'Tis emp -- ty now for me.
  That bit -- ter cup, love drank it up;
  Now bles -- sing's draught for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- ho -- vah lift -- ed up His rod;
  O Christ, it fell on Thee!
  Thou wast sore strick -- en of Thy God;
  There's not one stroke for me.
  Thy tears, Thy blood, be -- neath it flowed;
  Thy bruis -- ing heal -- eth me.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The temp -- est's aw -- ful voice was heard;
  O Christ, it broke on Thee!
  Thy o -- pen bo -- som was my ward,
  It braved the storm for me.
  Thy form was scarred, Thy vis -- age marred;
  Now cloud -- less peace for me.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Je -- ho -- vah bade His sword a -- wake;
  O Christ, it woke 'gainst Thee!
  Thy blood the flam -- ing blade must slake,
  Thy heart its sheath must be;
  All for my sake, my peace to make;
  Now sleeps that sword for me.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  For me, Lord Je -- sus, Thou hast died,
  And I have died in Thee;
  Thou'rt risen— my bands are all un -- tied;
  And now Thou liv'st in me:
  When pu -- ri -- fied, made white, and tried,
  Thy Glo -- ry then for me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Christ, " "what " bur "dens " "bowed " "Thy " "head! "
  "\nOur " "load " "was " "laid " "on " "Thee; "
  "\nThou " stood "est " "in " "the " sin "ner's " "stead, "
  "\nDidst " "bear " "all " "ill " "for " "me. "
  "\nA " Vic "tem " "led, " "Thy " "blood " "was " "shed; "
  "\nNow " "there's " "no " "load " "for " "me. "

  \set stanza = "2."
  "\nDeath " "and " "the " "curse " "were " "in " "our " "cup: "
  "\nO " "Christ, " "'t was " "full " "for " "Thee! "
  "\nBut " "Thou " "hast " "drained " "the " "last " "dark " "drop; "
  "\n'Tis " emp "ty " "now " "for " "me. "
  "\nThat " bit "ter " "cup, " "love " "drank " "it " "up; "
  "\nNow " bles "sing's " "draught " "for " "me. "

  \set stanza = "3."
  "\nJe" ho "vah " lift "ed " "up " "His " "rod; "
  "\nO " "Christ, " "it " "fell " "on " "Thee! "
  "\nThou " "wast " "sore " strick "en " "of " "Thy " "God; "
  "\nThere's " "not " "one " "stroke " "for " "me. "
  "\nThy " "tears, " "Thy " "blood, " be "neath " "it " "flowed; "
  "\nThy " bruis "ing " heal "eth " "me. "

  \set stanza = "4."
  "\nThe " temp "est's " aw "ful " "voice " "was " "heard; "
  "\nO " "Christ, " "it " "broke " "on " "Thee! "
  "\nThy " o "pen " bo "som " "was " "my " "ward, "
  "\nIt " "braved " "the " "storm " "for " "me. "
  "\nThy " "form " "was " "scarred, " "Thy " vis "age " "marred; "
  "\nNow " cloud "less " "peace " "for " "me. "

  \set stanza = "5."
  "\nJe" ho "vah " "bade " "His " "sword " a "wake; "
  "\nO " "Christ, " "it " "woke " "'gainst " "Thee! "
  "\nThy " "blood " "the " flam "ing " "blade " "must " "slake, "
  "\nThy " "heart " "its " "sheath " "must " "be; "
  "\nAll " "for " "my " "sake, " "my " "peace " "to " "make; "
  "\nNow " "sleeps " "that " "sword " "for " "me. "

  \set stanza = "6."
  "\nFor " "me, " "Lord " Je "sus, " "Thou " "hast " "died, "
  "\nAnd " "I " "have " "died " "in " "Thee; "
  "\nThou'rt " "risen— " "my " "bands " "are " "all " un "tied; "
  "\nAnd " "now " "Thou " "liv'st " "in " "me: "
  "\nWhen " pu ri "fied, " "made " "white, " "and " "tried, "
  "\nThy " Glo "ry " "then " "for " "me. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano 
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
