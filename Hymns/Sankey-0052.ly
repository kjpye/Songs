\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Near me, O my Saviour"
  subtitle    = "Sankey No. 52"
  subsubtitle = "Sankey 880 No. 449"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "J. W. Bischoff."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup \smallCaps "G. G. Lloyd."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
  \tempo 4=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
}

soprano = \relative {
  f'8
  d'4 bes8 f4 d8
  f4. ees4 f8
  ees'4 c8 aes4 g8
  g4.(f4) \bar "|" \break \partial 8 f8
  d'4 bes8 f4 ees8 % B
  f4 ees8 ees4 f8
  ees'4 c8 g4 a8
  bes4.~4 \bar "|" \break \partial 8 f8
  d'4 d8 d4 c8 % C
  c4. bes4 bes8
  a4 a8 a4 g8
  f4.~4 \bar "|" \break \partial 8 f8
  f4 f8 bes4 d8 % D
  f4 ees8 g,4\fermata g8
  f4 f8 f4 f8
  f4.~4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s8^\markup\italic Tenderly.
  s2.*7 s4. s4
  s8\f %C
  s2.
  s4. s4 s8\mf
  s2.
  s2.
  s2.\cresc % D
  s4. s4 s8\dim
  s2.\omit\p
  s4. s4
}

alto = \relative {
  d'8
  f4 d8 d4 bes8
  d4. c4 ees8
  ees4 ees8 ees4 ees8
  ees4.(d4) d8
  f4 d8 d4 c8 % B
  d4 c8 c4 ees8
  ees4 ees8 ees4 ees8
  d4.~4 f8
  f4 f8 fis4 a8 % C
  a4. g4 g8
  f4 f8 e4 e8
  d4.~4 ees8
  d4 d8 d4 f8 % D
  g4 g8 ees4\fermata ees8
  d4 d8 c8(d) ees
  d4.~4
}

tenor = \relative {
  bes8
  bes4 f8 bes4 f8
  a4. a4 a8
  a4 a8 c4 a8
  bes4.~4 bes8
  bes4 f8 bes4 f8 % B
  a4 a8 a4 a8
  a4 a8 c4 f,8
  f4.~4 f8
  bes4 bes8 a4 d8 % C
  d4. d4 d8
  d4 d8 cis4 a8
  a4.~4 a8
  bes4 bes8 bes4 bes8 % D
  bes4 bes8 bes4\fermata bes8
  bes4 bes8 a8(bes) c
  bes4.~4
}

bass= \relative {
  bes,8
  bes4 bes8 bes4 bes8
  f'4. f4 f8
  f4 f8 f4 f8
  bes,4.~4 bes8
  bes4 bes8 bes4 bes8 % B
  f'4 f8 f4 f8
  f4 f8 f4 f8
  bes,4.~4 f'8
  bes,4 bes8 d4 fis8 % C
  g4. g4 g8
  a4 a8 a,4 cis8
  d4.~4 c8
  bes4 bes8 bes4 bes8 % D
  ees4 ees8 ees4\fermata ees8
  f4 f8 f4 f8
  bes,4.~4
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come near me, O my Sa -- viour!
  Thy ten -- der -- ness re -- veal;
  Oh, let me know the sym -- pa -- thy
  Which Thou for me dost feel!
  I need Thee ev -- 'ry mo -- ment;
  Thine ab -- sence brings dis -- may;
  But when the temp -- ter hurls his darts.
  "'T were" death with Thee a -- way!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come near me, my Re -- deem -- er,
  And nev -- er leave my side!
  My bark, when toss'd on trou -- ble's sea,
  The storm can -- not out -- ride,
  Un -- less Thy word of pow -- er
  Ar -- rest the surg -- ing wave;
  No voice but Thine its rage can quell;
  No arm but Thine can save!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come near me, bles -- sed Je -- sus!
  I need Thee in my joy,
  No less than when the dir -- est ills
  My hap -- pi -- ness des -- troy;
  For when the sun shine so'er me,
  And flow -- ers strew my way,
  With -- out Thy wise and gui -- ding hand,
  More eas -- i -- ly I stray.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be near me, migh -- ty Sa -- viour,
  When comes the la -- test strife!
  For Thou hast thro' death's sha -- dows pass'd,
  And ope'd the gates of life;
  And when a -- mong the ran -- som'd
  I stand with crown and palm.
  To Thee, Di -- vine, un -- fail -- ing Friend,
  I'll raise "th' e" -- ter -- nal psalm!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "near " "me, " "O " "my " Sa "viour! "
  "\nThy " ten der "ness " re "veal; "
  "\nOh, " "let " "me " "know " "the " sym pa "thy "
  "\nWhich " "Thou " "for " "me " "dost " "feel! "
  "\nI " "need " "Thee " ev "'ry " mo "ment; "
  "\nThine " ab "sence " "brings " dis "may; "
  "\nBut " "when " "the " temp "ter " "hurls " "his " "darts. "
  "\n'T were " "death " "with " "Thee " a "way! "

  \set stanza = "2."
  "\nCome " "near " "me, " "my " Re deem "er, "
  "\nAnd " nev "er " "leave " "my " "side! "
  "\nMy " "bark, " "when " "toss'd " "on " trou "ble's " "sea, "
  "\nThe " "storm " can "not " out "ride, "
  "\nUn" "less " "Thy " "word " "of " pow "er "
  "\nAr" "rest " "the " surg "ing " "wave; "
  "\nNo " "voice " "but " "Thine " "its " "rage " "can " "quell; "
  "\nNo " "arm " "but " "Thine " "can " "save! "

  \set stanza = "3."
  "\nCome " "near " "me, " bles "sed " Je "sus! "
  "\nI " "need " "Thee " "in " "my " "joy, "
  "\nNo " "less " "than " "when " "the " dir "est " "ills "
  "\nMy " hap pi "ness " des "troy; "
  "\nFor " "when " "the " "sun " "shine " "so'er " "me, "
  "\nAnd " flow "ers " "strew " "my " "way, "
  "\nWith" "out " "Thy " "wise " "and " gui "ding " "hand, "
  "\nMore " eas i "ly " "I " "stray. "

  \set stanza = "4."
  "\nBe " "near " "me, " migh "ty " Sa "viour, "
  "\nWhen " "comes " "the " la "test " "strife! "
  "\nFor " "Thou " "hast " "thro' " "death's " sha "dows " "pass'd, "
  "\nAnd " "ope'd " "the " "gates " "of " "life; "
  "\nAnd " "when " a "mong " "the " ran "som'd "
  "\nI " "stand " "with " "crown " "and " "palm. "
  "\nTo " "Thee, " Di "vine, " un fail "ing " "Friend, "
  "\nI'll " "raise " "th' e" ter "nal " "psalm! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice {
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%            }
%            \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
%            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
%                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
%            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
%                                            { \global \bass \bass \bass \bass }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
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
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
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
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
