\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "For You and for me."
  subtitle    = "Sankey No. 414"
  subsubtitle = "Sankey 880 No. 458"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Will L. Thompson."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }     s2.*3
  \mark \markup { \box "B" }     s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Slow." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. bes16 aes8 8 g aes
  bes8 aes f f ees r
  aes8 8 8 c8. bes16 aes8
  bes4.~4 r8 % B
  c8. bes16 aes8 8 g aes
  bes8 aes f f ees r \break
  aes8 8 des c8. aes16 bes8 % C
  aes4.~4 \bar "||" ees8^\markup\smallCaps Chorus.
  bes'4.~4 c8
  aes4(bes8 c4.) % D
  bes8 8 8 c16 8. d8
  ees4\fermata (d8\fermata des4\fermata) r8
  c8. bes16 aes8 \bar "|" \break aes8 g aes
  bes8 aes f f ees r % E
  aes16^\markup\bold\italic rit. 8. des8\fermata c16 aes8. bes8\fermata
  aes4.~4 r8
}

alto = \relative {
  \autoBeamOff
  ees'8. des16 c8 ees des c
  des8 8 8 8 c r
  ees8 8 8 des8. 16 8
  ees4.~4 r8 % B
  ees8. d16 c8 ees des c
  des8 8 8 8 c r
  ees8 8 f ees8. c16 d8 % C
  c4.~4 r8
  r4 g'8 g4 r8
  r4 g8 aes4. % D
  g8 8 bes a16 8. aes8
  g4\fermata(aes8\fermata bes4\fermata) r8
  ees,8. des16 c8 ees des c
  des8 8 8 8 c r
  ees16 8. f8\fermata ees16 c8. des8\fermata
  c4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 8 8 ees ees
  f8 8 aes aes aes r
  c8 8 8 aes8. 16 bes8
  g4.~4 r8 % B
  aes8. 16 8 8 ees ees
  f8 8 aes aes aes r
  aes8 8 8 8. 16 g8 % C
  aes4.~4 r8
  r4 des8 4 ees8
  c4 ees8 4. % D
  ees8 8 8 16 8. bes8
  bes4\fermata(8\fermata ees4\fermata) r8
  aes,8. 16 8 8 ees ees
  f8 8 aes aes aes r % E
  aes16 8. 8\fermata 16 8. g8\fermata
  aes4.~4 r8
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 8 c bes aes
  des8 8 8 aes aes r
  aes'8 8 8 f8. 16 8
  ees4.~4 r8 % B
  aes,8. 16 8 c bes aes
  des8 8 8 aes aes r
  c8 8 des ees8. 16 8 % C
  aes,4.~4 r8
  r4 ees'8 4 r8
  r4 ees8 aes4. % D
  bes8 8 g f16 8. bes8
  ees,4\fermata(f8\fermata g4\fermata) r8
  aes,8. 16 8 c bes aes
  des8 8 8 aes aes r % E
  c16 8. des8\fermata ees16 8. 8\fermata
  aes,4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come home! __ come home! __
  Ye who are wea -- ry,— come home! __
  Ear -- nest -- ly, ten -- der -- ly Je -- sus is cal -- ing,—
  Call -- ing, O sin -- ner, "\"come" "home!\""
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Come home! _ _ come home!
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Soft -- ly and ten -- der -- ly Je -- sus is call -- ing—
  Call -- ing for you and for me;
  Pa -- tient -- ly Je -- sus is wait -- ing and watch -- ing—
  Watch -- ing for you and for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Why should we tar -- ry when Je -- sus is plead -- ing—
  Plead -- ing for you and for me?
  Why should we lin -- ger and heed not His mer -- cies—
  Mer -- cies for you and for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Time is now fleet -- ing, the mom -- ents are pass -- ing—
  Pass -- ing from you and from me;
  Sha -- dows are gath -- er -- inh, death -- neds are com -- ing—
  Com -- ing for you and for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh for the won -- der -- ful love He has pro -- mised—
  Prom -- ised for you and for me!
  Though we have sinned, he has mer -- cy and par -- don—
  Par -- don for you and for me!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Soft" "ly " "and " ten der "ly " Je "sus " "is " call "ing— "
  "\nCall" "ing " "for " "you " "and " "for " "me; "
  "\nPa" tient "ly " Je "sus " "is " wait "ing " "and " watch "ing— "
  "\nWatch" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "2."
  "\nWhy " "should " "we " tar "ry " "when " Je "sus " "is " plead "ing— "
  "\nPlead" "ing " "for " "you " "and " "for " "me? "
  "\nWhy " "should " "we " lin "ger " "and " "heed " "not " "His " mer "cies— "
  "\nMer" "cies " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "3."
  "\nTime " "is " "now " fleet "ing, " "the " mom "ents " "are " pass "ing— "
  "\nPass" "ing " "from " "you " "and " "from " "me; "
  "\nSha" "dows " "are " gath er "inh, " death "neds " "are " com "ing— "
  "\nCom" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "4."
  "\nOh " "for " "the " won der "ful " "love " "He " "has " pro "mised— "
  "\nProm" "ised " "for " "you " "and " "for " "me! "
  "\nThough " "we " "have " "sinned, " "he " "has " mer "cy " "and " par "don— "
  "\nPar" "don " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Soft" "ly " "and " ten der "ly " Je "sus " "is " call "ing— "
  "\nCall" "ing " "for " "you " "and " "for " "me; "
  "\nPa" tient "ly " Je "sus " "is " wait "ing " "and " watch "ing— "
  "\nWatch" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "2."
  "\nWhy " "should " "we " tar "ry " "when " Je "sus " "is " plead "ing— "
  "\nPlead" "ing " "for " "you " "and " "for " "me? "
  "\nWhy " "should " "we " lin "ger " "and " "heed " "not " "His " mer "cies— "
  "\nMer" "cies " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "3."
  "\nTime " "is " "now " fleet "ing, " "the " mom "ents " "are " pass "ing— "
  "\nPass" "ing " "from " "you " "and " "from " "me; "
  "\nSha" "dows " "are " gath er "inh, " death "neds " "are " com "ing— "
  "\nCom" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "4."
  "\nOh " "for " "the " won der "ful " "love " "He " "has " pro "mised— "
  "\nProm" "ised " "for " "you " "and " "for " "me! "
  "\nThough " "we " "have " "sinned, " "he " "has " mer "cy " "and " par "don— "
  "\nPar" "don " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Soft" "ly " "and " ten der "ly " Je "sus " "is " call "ing— "
  "\nCall" "ing " "for " "you " "and " "for " "me; "
  "\nPa" tient "ly " Je "sus " "is " wait "ing " "and " watch "ing— "
  "\nWatch" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! " "come " "home! " "come " "home! "
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "2."
  "\nWhy " "should " "we " tar "ry " "when " Je "sus " "is " plead "ing— "
  "\nPlead" "ing " "for " "you " "and " "for " "me? "
  "\nWhy " "should " "we " lin "ger " "and " "heed " "not " "His " mer "cies— "
  "\nMer" "cies " "for " "you " "and " "for " "me! "
  "\nCome " "home! " "come " "home! " "come " "home! "
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "3."
  "\nTime " "is " "now " fleet "ing, " "the " mom "ents " "are " pass "ing— "
  "\nPass" "ing " "from " "you " "and " "from " "me; "
  "\nSha" "dows " "are " gath er "inh, " death "neds " "are " com "ing— "
  "\nCom" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! " "come " "home! " "come " "home! "
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "4."
  "\nOh " "for " "the " won der "ful " "love " "He " "has " pro "mised— "
  "\nProm" "ised " "for " "you " "and " "for " "me! "
  "\nThough " "we " "have " "sinned, " "he " "has " mer "cy " "and " par "don— "
  "\nPar" "don " "for " "you " "and " "for " "me! "
  "\nCome " "home! " "come " "home! " "come " "home! "
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Soft" "ly " "and " ten der "ly " Je "sus " "is " call "ing— "
  "\nCall" "ing " "for " "you " "and " "for " "me; "
  "\nPa" tient "ly " Je "sus " "is " wait "ing " "and " watch "ing— "
  "\nWatch" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "2."
  "\nWhy " "should " "we " tar "ry " "when " Je "sus " "is " plead "ing— "
  "\nPlead" "ing " "for " "you " "and " "for " "me? "
  "\nWhy " "should " "we " lin "ger " "and " "heed " "not " "His " mer "cies— "
  "\nMer" "cies " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "3."
  "\nTime " "is " "now " fleet "ing, " "the " mom "ents " "are " pass "ing— "
  "\nPass" "ing " "from " "you " "and " "from " "me; "
  "\nSha" "dows " "are " gath er "inh, " death "neds " "are " com "ing— "
  "\nCom" "ing " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "

  \set stanza = "4."
  "\nOh " "for " "the " won der "ful " "love " "He " "has " pro "mised— "
  "\nProm" "ised " "for " "you " "and " "for " "me! "
  "\nThough " "we " "have " "sinned, " "he " "has " mer "cy " "and " par "don— "
  "\nPar" "don " "for " "you " "and " "for " "me! "
  "\nCome " "home! "  "come " "home! " 
  "\nYe " "who " "are " wea "ry,— " "come " "home! " 
  "\nEar" nest "ly, " ten der "ly " Je "sus " "is " call "ing,— "
  "\nCall" "ing, " "O " sin "ner, " "\"come " "home!\" "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
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

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiTenor
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

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
