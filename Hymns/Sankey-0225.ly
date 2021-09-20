\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Sing of my Redeemer!"
  subtitle    = "Sankey No. 225"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

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
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" }    s2.*3 s1
  \mark \markup { \box "C" }    s1*2
  \mark \markup { \box "D" }    s1*2 s2.
  \mark \markup { \box "E" } s4 s1*1 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4
  bes4. 8 aes8. bes16
  c4 bes ees
  ees4. d8 c8. ees16
  bes2 4
  aes4. c8 bes8. aes16
  g4 bes ees % B
  d4. bes8 c8. a16
  bes2 \bar "||" \time 4/4 \partial 4 bes4^\markup\smallCaps Chorus.
  ees2~8. bes16 aes8. g16
  d'4 c2 ees4 % C
  d2~8. c16 f,8. c'16
  bes2. 4 % D
  ees2~8. bes16 aes8. g16
  d'4 c2 \bar "|" \break ees4
  bes2~8. aes16 f8. g16 % E
  ees2.\fermata
}

alto = \relative {
  \autoBeamOff
  g'4
  g4. 8 fis8. g16
  aes4 g g
  aes4. 8 ees8. 16
  ees2 g4
  f4. aes8 g8. f16
  ees4 g g % B
  f4. d8 ees8. 16
  d2 \time 4/4 \partial 4 aes'4
  g2~8. 16 f8. ees16
  bes'4 aes2 4 % C
  aes2~8. 16 d,8. aes'16
  g2. 4 % D
  g2~8. 16 f8. ees16
  bes'4 aes2 4
  g2~8. f16 d8. 16 % E
  ees8. bes16 c8. 16 bes4\fermata
}

tenor = \relative {
  \autoBeamOff
  ees'4
  ees4. 8 c8. bes16
  ees4 4 bes
  c4. bes8 aes8. 16
  g2 bes4
  bes4. 8 8. 16
  bes4 ees bes % B
  bes4. 8 a8. c16
  bes2 \time 4/4 \partial 4 bes4
  bes8. 16 8. 16 8. 16 r4
  aes8. ees'16 8. 16 8. 16 c4 % C
  bes8. 16 8. 16 4 r
  bes8. ees16 8. 16 4 4 % D
  bes8. 16 8. 16 8. 16 r4
  aes8. ees'16 8. 16 8. 16 c4
  ees8. 16 8. 16 8. bes16 aes8. bes16 % E
  g8. 16 aes8. 16 g4\fermata
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4. 8 8. 16
  ees4 4 4
  aes4. 8 aes,8. c16
  ees2 4
  bes4. 8 8. 16
  ees4 4 4 % B
  f4. 8 8. 16
  bes,2 \time 4/4 \partial 4 bes'4
  ees,8. 16 8. 16 8. 16 r4
  aes8. 16 8. 16 8. 16 aes,4 % C
  bes8. 16 8. 16 4 r
  ees8. 16 8. 16 4 4 % D
  ees8. 16 8. 16 8. 16 r4
  aes8. 16 8. 16 8. 16 4
  bes8. 16 8. 16 bes,8. 16 8. 16 % E
  ees2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, sing __ of my Re -- deem -- er, __
  Who gave __ Him -- self for me: __
  Up -- on __ the cross He suf -- fered, __
  From sin __ to set me free. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Oh, sing of my Re -- deem -- er,
  sing of my Re -- deem -- er,
  who gave Him -- self for me,
  gave Him -- self for me;
  Up -- on the cross He suf -- fered,
  on the cross He suf -- fered,
  From sin to set me free.
  to set me free,
  to set me free.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, sing of my Re -- deem -- er,
  My Sa -- viour, Lord, and King;
  A song of praise and glo -- ry
  Let all with rap -- ture sing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, sing of my Re -- deem -- er,
  And spread a -- broad His name;
  His mer -- cy free and bound -- less,
  Let heaven and earth pro -- claim.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, sing of my Re -- deem -- er!
  His opraise my theme shall be;
  He took my sins up -- on Him,
  And bore them on the tree.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, sing of my Re -- deem -- er;
  On Him a -- lone I call;
  My ev -- er -- last -- ing por -- tion,
  My Hope, my Life, my All.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Oh, " "sing " "of " "my " Re deem "er, "
  "\nMy " Sa "viour, " "Lord, " "and " "King; "
  "\nA " "song " "of " "praise " "and " glo "ry "
  "\nLet " "all " "with " rap "ture " "sing. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free. " 

  \set stanza = "2."
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nAnd " "spread " a "broad " "His " "name; "
  "\nHis " mer "cy " "free " "and " bound "less, "
  "\nLet " "heaven " "and " "earth " pro "claim. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free. " 

  \set stanza = "3."
  "\nOh, " "sing " "of " "my " Re deem "er! "
  "\nHis " "opraise " "my " "theme " "shall " "be; "
  "\nHe " "took " "my " "sins " up "on " "Him, "
  "\nAnd " "bore " "them " "on " "the " "tree. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free. " 

  \set stanza = "4."
  "\nOh, " "sing " "of " "my " Re deem "er; "
  "\nOn " "Him " a "lone " "I " "call; "
  "\nMy " ev er last "ing " por "tion, "
  "\nMy " "Hope, " "my " "Life, " "my " "All. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free. " 
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Oh, " "sing " "of " "my " Re deem "er, "
  "\nMy " Sa "viour, " "Lord, " "and " "King; "
  "\nA " "song " "of " "praise " "and " glo "ry "
  "\nLet " "all " "with " rap "ture " "sing. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free, "
  "\nto " "set " "me " "free, "

  \set stanza = "2."
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nAnd " "spread " a "broad " "His " "name; "
  "\nHis " mer "cy " "free " "and " bound "less, "
  "\nLet " "heaven " "and " "earth " pro "claim. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free, "
  "\nto " "set " "me " "free, "

  \set stanza = "3."
  "\nOh, " "sing " "of " "my " Re deem "er! "
  "\nHis " "opraise " "my " "theme " "shall " "be; "
  "\nHe " "took " "my " "sins " up "on " "Him, "
  "\nAnd " "bore " "them " "on " "the " "tree. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free, "
  "\nto " "set " "me " "free, "

  \set stanza = "4."
  "\nOh, " "sing " "of " "my " Re deem "er; "
  "\nOn " "Him " a "lone " "I " "call; "
  "\nMy " ev er last "ing " por "tion, "
  "\nMy " "Hope, " "my " "Life, " "my " "All. "
  "\nOh, " "sing "  "of " "my " Re deem "er, " 
  "\nWho " "gave "  Him "self " "for " "me: " 
  "\nUp" "on "  "the " "cross " "He " suf "fered, " 
  "\nFrom " "sin "  "to " "set " "me " "free, "
  "\nto " "set " "me " "free, "
}
  
wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Oh, " "sing " "of " "my " Re deem "er, "
  "\nMy " Sa "viour, " "Lord, " "and " "King; "
  "\nA " "song " "of " "praise " "and " glo "ry "
  "\nLet " "all " "with " rap "ture " "sing. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free, "
  "\nto " "set " "me " "free. "

  \set stanza = "2."
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nAnd " "spread " a "broad " "His " "name; "
  "\nHis " mer "cy " "free " "and " bound "less, "
  "\nLet " "heaven " "and " "earth " pro "claim. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free, "
  "\nto " "set " "me " "free. "

  \set stanza = "3."
  "\nOh, " "sing " "of " "my " Re deem "er! "
  "\nHis " "opraise " "my " "theme " "shall " "be; "
  "\nHe " "took " "my " "sins " up "on " "Him, "
  "\nAnd " "bore " "them " "on " "the " "tree. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free, "
  "\nto " "set " "me " "free. "

  \set stanza = "4."
  "\nOh, " "sing " "of " "my " Re deem "er; "
  "\nOn " "Him " a "lone " "I " "call; "
  "\nMy " ev er last "ing " por "tion, "
  "\nMy " "Hope, " "my " "Life, " "my " "All. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free, "
  "\nto " "set " "me " "free. "
}
  
wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Oh, " "sing " "of " "my " Re deem "er, "
  "\nMy " Sa "viour, " "Lord, " "and " "King; "
  "\nA " "song " "of " "praise " "and " glo "ry "
  "\nLet " "all " "with " rap "ture " "sing. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free. "

  \set stanza = "2."
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nAnd " "spread " a "broad " "His " "name; "
  "\nHis " mer "cy " "free " "and " bound "less, "
  "\nLet " "heaven " "and " "earth " pro "claim. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free. "

  \set stanza = "3."
  "\nOh, " "sing " "of " "my " Re deem "er! "
  "\nHis " "opraise " "my " "theme " "shall " "be; "
  "\nHe " "took " "my " "sins " up "on " "Him, "
  "\nAnd " "bore " "them " "on " "the " "tree. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free. "

  \set stanza = "4."
  "\nOh, " "sing " "of " "my " Re deem "er; "
  "\nOn " "Him " a "lone " "I " "call; "
  "\nMy " ev er last "ing " por "tion, "
  "\nMy " "Hope, " "my " "Life, " "my " "All. "
  "\nOh, " "sing " "of " "my " Re deem "er, "
  "\nsing " "of " "my " Re deem "er, "
  "\nwho " "gave " Him "self " "for " "me, "
  "\ngave " Him "self " "for " "me; "
  "\nUp" "on " "the " "cross " "He " suf "fered, "
  "\non " "the " "cross " "He " suf "fered, "
  "\nFrom " "sin " "to " "set " "me " "free. "
  "\nto " "set " "me " "free. "
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-sop"
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
            \addlyrics \wordsMidiSop
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

\book {
  \bookOutputSuffix "midi-alto"
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
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

\book {
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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

\book {
  \bookOutputSuffix "midi-bass"
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
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}
