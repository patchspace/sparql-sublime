# My goal is to have this syntax highlighted correctly without
# changing the Ruby package, but I'm not sure that's possible…

puts <<-SPARQL
  PREFIX eg:    <http://example.com/>
  PREFIX foaf:  <http://xmlns.com/foaf/0.1/>

  SELECT ?name ?mbox
  WHERE {
    GRAPH <eg:my-graph> {
      ?x foaf:name ?name .
      ?x foaf:mbox ?mbox .
      ?x eg:age ?age
      FILTER(?age > 20)
    }
  }
  ORDER BY ASC(?name)
  LIMIT 10
SPARQL