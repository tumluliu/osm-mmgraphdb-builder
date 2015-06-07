\copy (select length,speed_factor,mode_id,from_id,to_id,edge_id, null as link_id, null as osm_id from edges where mode_id != 11 and mode_id != 12 and mode_id != 17) to './csv/public_transit_edges.csv' with csv header;
\copy (select out_degree as outdegree, vertex_id, null as raw_point_id, mode_id, lon, lat from vertices where mode_id != 11 and mode_id != 12 and mode_id != 17) to './csv/public_transit_vertices.csv' with csv header;
