module PragmaticSegmenter
  module Languages
    class Spanish
      class Process < PragmaticSegmenter::Process
        private

        def replace_abbreviations(txt)
          PragmaticSegmenter::Languages::Spanish::AbbreviationReplacer.new(text: txt).replace
        end
      end

      class Cleaner < PragmaticSegmenter::Cleaner
        private

        def abbreviations
          PragmaticSegmenter::Languages::Spanish::Abbreviation.new.all
        end
      end

      class Abbreviation < PragmaticSegmenter::Abbreviation
        ABBREVIATIONS = ['a.c', 'a/c', 'abr', 'adj', 'admón', 'afmo', 'ago', 'almte', 'ap', 'apdo', 'arq', 'art', 'atte', 'av', 'avda', 'bco', 'bibl', 'bs. as', 'c', 'c.f', 'c.g', 'c/c', 'c/u', 'cap', 'cc.aa', 'cdad', 'cm', 'co', 'cra', 'cta', 'cv', 'd.e.p', 'da', 'dcha', 'dcho', 'dep', 'dic', 'dicc', 'dir', 'dn', 'doc', 'dom', 'dpto', 'dr', 'dra', 'dto', 'ee', 'ej', 'en', 'entlo', 'esq', 'etc', 'excmo', 'ext', 'f.c', 'fca', 'fdo', 'febr', 'ff. aa', 'ff.cc', 'fig', 'fil', 'fra', 'g.p', 'g/p', 'gob', 'gr', 'gral', 'grs', 'hnos', 'hs', 'igl', 'iltre', 'imp', 'impr', 'impto', 'incl', 'ing', 'inst', 'izdo', 'izq', 'izqdo', 'j.c', 'jue', 'jul', 'jun', 'kg', 'km', 'lcdo', 'ldo', 'let', 'lic', 'ltd', 'lun', 'mar', 'may', 'mg', 'min', 'mié', 'mm', 'máx', 'mín', 'mt', 'n. del t', 'n.b', 'no', 'nov', 'ntra. sra', 'núm', 'oct', 'p', 'p.a', 'p.d', 'p.ej', 'p.v.p', 'párrf', 'ppal', 'prev', 'prof', 'prov', 'ptas', 'pts', 'pza', 'pág', 'págs', 'párr', 'q.e.g.e', 'q.e.p.d', 'q.e.s.m', 'reg', 'rep', 'rr. hh', 'rte', 's', 's. a', 's.a.r', 's.e', 's.l', 's.r.c', 's.r.l', 's.s.s', 's/n', 'sdad', 'seg', 'sept', 'sig', 'sr', 'sra', 'sres', 'srta', 'sta', 'sto', 'sáb', 't.v.e', 'tamb', 'tel', 'tfno', 'ud', 'uu', 'uds', 'univ', 'v.b', 'v.e', 'vd', 'vds', 'vid', 'vie', 'vol', 'vs', 'vto', 'a', 'aero', 'ambi', 'an', 'anfi', 'ante', 'anti', 'archi', 'arci', 'auto', 'bi', 'bien', 'bis', 'co', 'com', 'con', 'contra', 'crio', 'cuadri', 'cuasi', 'cuatri', 'de', 'deci', 'des', 'di', 'dis', 'dr', 'ecto', 'en', 'endo', 'entre', 'epi', 'equi', 'ex', 'extra', 'geo', 'hemi', 'hetero', 'hiper', 'hipo', 'homo', 'i', 'im', 'in', 'infra', 'inter', 'intra', 'iso', 'lic', 'macro', 'mega', 'micro', 'mini', 'mono', 'multi', 'neo', 'omni', 'para', 'pen', 'ph', 'ph.d', 'pluri', 'poli', 'pos', 'post', 'pre', 'pro', 'pseudo', 're', 'retro', 'semi', 'seudo', 'sobre', 'sub', 'super', 'supra', 'trans', 'tras', 'tri', 'ulter', 'ultra', 'un', 'uni', 'vice', 'yuxta']
        PREPOSITIVE_ABBREVIATIONS = ['a', 'aero', 'ambi', 'an', 'anfi', 'ante', 'anti', 'archi', 'arci', 'auto', 'bi', 'bien', 'bis', 'co', 'com', 'con', 'contra', 'crio', 'cuadri', 'cuasi', 'cuatri', 'de', 'deci', 'des', 'di', 'dis', 'dr', 'ecto', 'ee', 'en', 'endo', 'entre', 'epi', 'equi', 'ex', 'extra', 'geo', 'hemi', 'hetero', 'hiper', 'hipo', 'homo', 'i', 'im', 'in', 'infra', 'inter', 'intra', 'iso', 'lic', 'macro', 'mega', 'micro', 'mini', 'mono', 'mt', 'multi', 'neo', 'omni', 'para', 'pen', 'ph', 'ph.d', 'pluri', 'poli', 'pos', 'post', 'pre', 'pro', 'prof', 'pseudo', 're', 'retro', 'semi', 'seudo', 'sobre', 'sub', 'super', 'supra', 'sra', 'srta', 'trans', 'tras', 'tri', 'ulter', 'ultra', 'un', 'uni', 'vice', 'yuxta']
        NUMBER_ABBREVIATIONS = ['cra', 'ext', 'no', 'nos', 'p', 'pp', 'tel']

        def all
          ABBREVIATIONS
        end

        def prepositive
          PREPOSITIVE_ABBREVIATIONS
        end

        def number
          NUMBER_ABBREVIATIONS
        end
      end

      class AbbreviationReplacer  < PragmaticSegmenter::AbbreviationReplacer
        private

        def abbreviations
          PragmaticSegmenter::Languages::Spanish::Abbreviation.new
        end
      end
    end
  end
end
