words = %w(
  carro
  casa
  automovel
  globo
  sbt
  g1
  redetv
  band
  cultura
  manchete
  gazeta
  sportv
  fox
  telecine
)

words.each do |w|
  BlackList.find_or_create_by!(word: w)
end
