\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fairer than the Morning."
  subtitle    = "Sankey No. 98"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*3 s2.
  \mark \markup { \box "C" } s4 s1*2
  \mark \markup { \box "D" } s1 s1 s2.
  \mark \markup { \box "E" } s4 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  c''4 ees,  f8. aes16 8. f16
  ees2 aes
  bes4 ees, des'8. c16 bes8. b16
  c2. r4
  c4 ees ees8. des16 aes8. bes16 % B
  c2 aes
  bes4 ees, des'8. c16 8. bes16
  aes2. \bar "||" \break \partial 4 c8.^\markup\smallCaps Chorus, aes16
  f2~8. aes16 g8. f16 % C
  ees2 aes4 8. bes16
  c4 4 ees8. 16 c8. aes16 % D
  bes2. aes8. bes16
  c2~8. 16 bes8. aes16
  aes2 f % E
  ees4 aes des8. 16 c8. bes16
  aes2. r4
}

alto = \relative {
  ees'4 c des8. 16 8. 16
  c2 2
  ees4 4 8. 16 8. 16
  ees2. r4
  ees4 ges f8. 16 8. fes16 % B
  ees2 c
  ees4 4 8. 16 8. des16
  c2. ees8. c16
  des2~8. f16 ees8. des16 % C
  c2 4 8. des16
  ees4 4 8. 16 8. 16 % D
  ees2~8(des) c8. des16
  ees2~8. 16 ees8. ges16
  f2 des % E
  c4 ees4 8. 16 8. des16
  c2. r4
}

tenor = \relative {
  aes4 4 8. f16 8. aes16
  aes2 ees
  g4 4 bes8. aes16 g8. 16
  aes2. r4
  aes4 4 8. 16 8. 16 % B
  aes2 ees
  g4 4 bes8. aes16 8. ees16
  ees2. r4
  r4 aes8. 16 8. des16 aes8. 16 % C
  aes2 ees4 aes8. 16
  aes4 4 c8. 16 aes8. 16 % D
  g2. r4
  r4 aes8. 16 8. 16 bes8. c16
  des2 aes
  aes4 c bes8. 16 aes8. ees16
  ees2. r4
}

bass= \relative {
  aes,4 4 des8. 16 8. 16
  aes2 2
  ees'4 4 8. 16 8. 16
  aes2. r4
  aes,4 c des8. 16 8. 16 % B
  aes2 2
  ees'4 4 8. 16 8. 16
  aes,2. r4
  r4 des8. 16 8. 16 8. 16 % C
  aes2 4 aes'8. 16
  aes4 4 8. 16 aes,8. c16
  ees2. r4
  r4 aes8. 16 8. 16 g8. 16
  des2 2
  ees4 4 8. 16 8. 16
  aes,2. r4
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

chorusMen = \lyricmode {
  Thou art fair -- er
  _ _ _ _ _ _ _ _ _ _ _ _ _
  At the glo -- ry
  _ _ _ _ _ _ _ _ _ _ _
}

chorus = \lyricmode {
  Thou art fair -- er than the morn -- ing,
  Thou art bright -- er, bright -- er than the day; __
  At the glo -- ry of Thy pres -- ence
  Clouds and dark -- ness flee a -- way.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art fair -- er than the morn -- ing,
  O my Sa -- viour and my King!
  Of Thy grand -- eur and Thy beau -- ty
  How my soul de -- lights to sing!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Clothed in light as with a gar -- ment,
  Crown'd with ma -- jes -- ty Di -- vine.
  Lo, the scep --tre of do -- min -- ion
  Now and ev -- er, Lord, is Thine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the great -- ness of Thy mer -- cy,
  And the rich -- ness of Thy grace!
  Oh, the love that in Thy king -- dom
  Is pre -- par -- ing me a place!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When the sil -- ver cord is bro -- ken,
  And this mor -- tal life is o'er,
  With ten thou -- sand times ten thou -- sand
  I shall sing for ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "art " fair "er " "than " "the " morn "ing, "
  "\nO " "my " Sa "viour " "and " "my " "King! "
  "\nOf " "Thy " grand "eur " "and " "Thy " beau "ty "
  "\nHow " "my " "soul " de "lights " "to " "sing! "
  "\nThou " "art " fair "er " "than " "the " morn "ing, "
  "\nThou " "art " bright "er, " bright "er " "than " "the " "day; " 
  "\nAt " "the " glo "ry " "of " "Thy " pres "ence "
  "\nClouds " "and " dark "ness " "flee " a "way. "

  \set stanza = "2."
  "\nClothed " "in " "light " "as " "with " "a " gar "ment, "
  "\nCrown'd " "with " ma jes "ty " Di "vine. "
  "\nLo, " "the " scep"tre " "of " do min "ion "
  "\nNow " "and " ev "er, " "Lord, " "is " "Thine. "
  "\nThou " "art " fair "er " "than " "the " morn "ing, "
  "\nThou " "art " bright "er, " bright "er " "than " "the " "day; " 
  "\nAt " "the " glo "ry " "of " "Thy " pres "ence "
  "\nClouds " "and " dark "ness " "flee " a "way. "

  \set stanza = "3."
  "\nOh, " "the " great "ness " "of " "Thy " mer "cy, "
  "\nAnd " "the " rich "ness " "of " "Thy " "grace! "
  "\nOh, " "the " "love " "that " "in " "Thy " king "dom "
  "\nIs " pre par "ing " "me " "a " "place! "
  "\nThou " "art " fair "er " "than " "the " morn "ing, "
  "\nThou " "art " bright "er, " bright "er " "than " "the " "day; " 
  "\nAt " "the " glo "ry " "of " "Thy " pres "ence "
  "\nClouds " "and " dark "ness " "flee " a "way. "

  \set stanza = "4."
  "\nWhen " "the " sil "ver " "cord " "is " bro "ken, "
  "\nAnd " "this " mor "tal " "life " "is " "o'er, "
  "\nWith " "ten " thou "sand " "times " "ten " thou "sand "
  "\nI " "shall " "sing " "for " ev er "more. "
  "\nThou " "art " fair "er " "than " "the " morn "ing, "
  "\nThou " "art " bright "er, " bright "er " "than " "the " "day; " 
  "\nAt " "the " glo "ry " "of " "Thy " pres "ence "
  "\nClouds " "and " dark "ness " "flee " a "way. "
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
%            \new Voice \TempoTrack
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
            \new NullVoice = alignerMen \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \emptyVerse \chorusMen }
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new Lyrics \with {
              alignAboveContext = men }
            \lyricsto alignerMen { \emptyVerse \chorusMen
                                   \emptyVerse \chorusMen
                                   \emptyVerse \chorusMen
                                   \emptyVerse \chorusMen
                                 }
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new Lyrics \with {
              alignAboveContext = men
            } \lyricsto alignerMen { \emptyVerse \chorusMen
                                     \emptyVerse \chorusMen
                                     \emptyVerse \chorusMen
                                     \emptyVerse \chorusMen }
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
           \new Staff = soprano \with { printPartCombineTexts = ##f }
           <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
           \new Staff = alto <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
           \new Staff = tenor
           <<
            \clef "treble_8"
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice { \global \tenor \tenor \tenor \tenor }
%            \addlyrics wordsMidi
          >>
           \new Staff = bass \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
           \new Staff = soprano \with { printPartCombineTexts = ##f }
           <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
           \new Staff = alto <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
           \new Staff = tenor
           <<
            \clef "treble_8"
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice { \global \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidi
          >>
           \new Staff = bass \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
