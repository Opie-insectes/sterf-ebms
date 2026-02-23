DROP VIEW IF EXISTS gn_monitoring.v_export_sterf_ebms_transects;
DROP VIEW IF EXISTS gn_monitoring.v_export_sterf_ebms_visits;
DROP VIEW IF EXISTS gn_monitoring.v_export_sterf_ebms_observations;
DROP TABLE IF EXISTS ref_habitats.cor_sterf_to_ebms;

--------------------------------------------------------------------------------
-- Tables de correspondances entre les nomenclatures Sterf et eBMS.
--------------------------------------------------------------------------------

CREATE TABLE ref_habitats.cor_sterf_to_ebms AS
SELECT * FROM (VALUES
    ('Aa1a', 'Forest', 'No-management', ''),
    ('Aa1b', 'Forest', 'Forestry', ''),
    ('Aa1c', 'Forest', 'Forestry', ''),
    ('Aa1d', 'Forest', 'Grazing', ''),
    ('Aa2a', 'Forest', 'No-management', ''),
    ('Aa2b', 'Forest', 'Forestry', ''),
    ('Aa2c', 'Forest', 'Forestry', ''),
    ('Aa2d', 'Forest', 'Grazing', ''),
    ('Aa3a', 'Forest', 'No-management', 'Forest edge'),
    ('Aa3b', 'Forest', 'Forestry', 'Forest edge'),
    ('Aa3c', 'Forest', 'Forestry', 'Forest edge'),
    ('Aa3d', 'Forest', 'Grazing', 'Forest edge'),
    ('Aa4a', 'Forest', 'No-management', ''),
    ('Aa4b', 'Forest', 'Forestry', ''),
    ('Aa4c', 'Forest', 'Forestry', ''),
    ('Aa4d', 'Forest', 'Grazing', ''),
    ('Ab1a', 'Forest', 'No-management', ''),
    ('Ab1b', 'Forest', 'Forestry', ''),
    ('Ab1c', 'Forest', 'Forestry', ''),
    ('Ab1d', 'Forest', 'Grazing', ''),
    ('Ab2a', 'Forest', 'No-management', ''),
    ('Ab2b', 'Forest', 'Forestry', ''),
    ('Ab2c', 'Forest', 'Forestry', ''),
    ('Ab2d', 'Forest', 'Grazing', ''),
    ('Ab3a', 'Forest', 'No-management', 'Forest edge'),
    ('Ab3b', 'Forest', 'Forestry', 'Forest edge'),
    ('Ab3c', 'Forest', 'Forestry', 'Forest edge'),
    ('Ab3d', 'Forest', 'Grazing', 'Forest edge'),
    ('Ab4a', 'Forest', 'No-management', ''),
    ('Ab4b', 'Forest', 'Forestry', ''),
    ('Ab4c', 'Forest', 'Forestry', ''),
    ('Ab4d', 'Forest', 'Grazing', ''),
    ('Ac1a', 'Forest', 'No-management', ''),
    ('Ac1b', 'Forest', 'Forestry', ''),
    ('Ac1c', 'Forest', 'Forestry', ''),
    ('Ac1d', 'Forest', 'Grazing', ''),
    ('Ac2a', 'Forest', 'No-management', ''),
    ('Ac2b', 'Forest', 'Forestry', ''),
    ('Ac2c', 'Forest', 'Forestry', ''),
    ('Ac2d', 'Forest', 'Grazing', ''),
    ('Ac3a', 'Forest', 'No-management', 'Forest edge'),
    ('Ac3b', 'Forest', 'Forestry', 'Forest edge'),
    ('Ac3c', 'Forest', 'Forestry', 'Forest edge'),
    ('Ac3d', 'Forest', 'Grazing', 'Forest edge'),
    ('Ac4a', 'Forest', 'No-management', ''),
    ('Ac4b', 'Forest', 'Forestry', ''),
    ('Ac4c', 'Forest', 'Forestry', ''),
    ('Ac4d', 'Forest', 'Grazing', ''),
    ('Ad1a', 'Forest', 'No-management', ''),
    ('Ad1b', 'Forest', 'Forestry', ''),
    ('Ad1c', 'Forest', 'Forestry', ''),
    ('Ad1d', 'Forest', 'Grazing', ''),
    ('Ad2a', 'Forest', 'No-management', ''),
    ('Ad2b', 'Forest', 'Forestry', ''),
    ('Ad2c', 'Forest', 'Forestry', ''),
    ('Ad2d', 'Forest', 'Grazing', ''),
    ('Ad3a', 'Forest', 'No-management', 'Forest edge'),
    ('Ad3b', 'Forest', 'Forestry', 'Forest edge'),
    ('Ad3c', 'Forest', 'Forestry', 'Forest edge'),
    ('Ad3d', 'Forest', 'Grazing', 'Forest edge'),
    ('Ad4a', 'Forest', 'No-management', ''),
    ('Ad4b', 'Forest', 'Forestry', ''),
    ('Ad4c', 'Forest', 'Forestry', ''),
    ('Ad4d', 'Forest', 'Grazing', ''),
    ('Ba1a', 'Shrub forest', 'No-management', ''),
    ('Ba1b', 'Shrub forest', 'Forestry', ''),
    ('Ba1c', 'Shrub forest', 'Forestry', ''),
    ('Ba1d', 'Shrub forest', 'Grazing', ''),
    ('Ba2a', 'Shrub forest', 'No-management', ''),
    ('Ba2b', 'Shrub forest', 'Forestry', ''),
    ('Ba2c', 'Shrub forest', 'Forestry', ''),
    ('Ba2d', 'Shrub forest', 'Grazing', ''),
    ('Ba3a', 'Shrub forest', 'No-management', ''),
    ('Ba3b', 'Shrub forest', 'Forestry', ''),
    ('Ba3c', 'Shrub forest', 'Forestry', ''),
    ('Ba3d', 'Shrub forest', 'Grazing', ''),
    ('Ba4a', 'Shrub forest', 'No-management', ''),
    ('Ba4b', 'Shrub forest', 'Forestry', ''),
    ('Ba4c', 'Shrub forest', 'Forestry', ''),
    ('Ba4d', 'Shrub forest', 'Grazing', ''),
    ('Ba5a', 'Shrub forest', 'No-management', ''),
    ('Ba5b', 'Shrub forest', 'Forestry', ''),
    ('Ba5c', 'Shrub forest', 'Forestry', ''),
    ('Ba5d', 'Shrub forest', 'Grazing', ''),
    ('Ba6a', 'Shrub forest', 'No-management', ''),
    ('Ba6b', 'Shrub forest', 'Forestry', ''),
    ('Ba6c', 'Shrub forest', 'Forestry', ''),
    ('Ba6d', 'Shrub forest', 'Grazing', ''),
    ('Bb1a', 'Shrub forest', 'No-management', ''),
    ('Bb1b', 'Shrub forest', 'Forestry', ''),
    ('Bb1c', 'Shrub forest', 'Forestry', ''),
    ('Bb1d', 'Shrub forest', 'Grazing', ''),
    ('Bb2a', 'Shrub forest', 'No-management', ''),
    ('Bb2b', 'Shrub forest', 'Forestry', ''),
    ('Bb2c', 'Shrub forest', 'Forestry', ''),
    ('Bb2d', 'Shrub forest', 'Grazing', ''),
    ('Bb3a', 'Shrub forest', 'No-management', ''),
    ('Bb3b', 'Shrub forest', 'Forestry', ''),
    ('Bb3c', 'Shrub forest', 'Forestry', ''),
    ('Bb3d', 'Shrub forest', 'Grazing', ''),
    ('Bb4a', 'Shrub forest', 'No-management', ''),
    ('Bb4b', 'Shrub forest', 'Forestry', ''),
    ('Bb4c', 'Shrub forest', 'Forestry', ''),
    ('Bb4d', 'Shrub forest', 'Grazing', ''),
    ('Bb5a', 'Shrub forest', 'No-management', ''),
    ('Bb5b', 'Shrub forest', 'Forestry', ''),
    ('Bb5c', 'Shrub forest', 'Forestry', ''),
    ('Bb5d', 'Shrub forest', 'Grazing', ''),
    ('Bb6a', 'Shrub forest', 'No-management', ''),
    ('Bb6b', 'Shrub forest', 'Forestry', ''),
    ('Bb6c', 'Shrub forest', 'Forestry', ''),
    ('Bb6d', 'Shrub forest', 'Grazing', ''),
    ('Bc1a', 'Shrub forest', 'No-management', ''),
    ('Bc1b', 'Shrub forest', 'Forestry', ''),
    ('Bc1c', 'Shrub forest', 'Forestry', ''),
    ('Bc1d', 'Shrub forest', 'Grazing', ''),
    ('Bc2a', 'Shrub forest', 'No-management', ''),
    ('Bc2b', 'Shrub forest', 'Forestry', ''),
    ('Bc2c', 'Shrub forest', 'Forestry', ''),
    ('Bc2d', 'Shrub forest', 'Grazing', ''),
    ('Bc3a', 'Shrub forest', 'No-management', ''),
    ('Bc3b', 'Shrub forest', 'Forestry', ''),
    ('Bc3c', 'Shrub forest', 'Forestry', ''),
    ('Bc3d', 'Shrub forest', 'Grazing', ''),
    ('Bc4a', 'Shrub forest', 'No-management', ''),
    ('Bc4b', 'Shrub forest', 'Forestry', ''),
    ('Bc4c', 'Shrub forest', 'Forestry', ''),
    ('Bc4d', 'Shrub forest', 'Grazing', ''),
    ('Bc5a', 'Shrub forest', 'No-management', ''),
    ('Bc5b', 'Shrub forest', 'Forestry', ''),
    ('Bc5c', 'Shrub forest', 'Forestry', ''),
    ('Bc5d', 'Shrub forest', 'Grazing', ''),
    ('Bc6a', 'Shrub forest', 'No-management', ''),
    ('Bc6b', 'Shrub forest', 'Forestry', ''),
    ('Bc6c', 'Shrub forest', 'Forestry', ''),
    ('Bc6d', 'Shrub forest', 'Grazing', ''),
    ('Bd1a', 'Shrub forest', 'No-management', ''),
    ('Bd1b', 'Shrub forest', 'Forestry', ''),
    ('Bd1c', 'Shrub forest', 'Forestry', ''),
    ('Bd1d', 'Shrub forest', 'Grazing', ''),
    ('Bd2a', 'Shrub forest', 'No-management', ''),
    ('Bd2b', 'Shrub forest', 'Forestry', ''),
    ('Bd2c', 'Shrub forest', 'Forestry', ''),
    ('Bd2d', 'Shrub forest', 'Grazing', ''),
    ('Bd3a', 'Shrub forest', 'No-management', ''),
    ('Bd3b', 'Shrub forest', 'Forestry', ''),
    ('Bd3c', 'Shrub forest', 'Forestry', ''),
    ('Bd3d', 'Shrub forest', 'Grazing', ''),
    ('Bd4a', 'Shrub forest', 'No-management', ''),
    ('Bd4b', 'Shrub forest', 'Forestry', ''),
    ('Bd4c', 'Shrub forest', 'Forestry', ''),
    ('Bd4d', 'Shrub forest', 'Grazing', ''),
    ('Bd5a', 'Shrub forest', 'No-management', ''),
    ('Bd5b', 'Shrub forest', 'Forestry', ''),
    ('Bd5c', 'Shrub forest', 'Forestry', ''),
    ('Bd5d', 'Shrub forest', 'Grazing', ''),
    ('Bd6a', 'Shrub forest', 'No-management', ''),
    ('Bd6b', 'Shrub forest', 'Forestry', ''),
    ('Bd6c', 'Shrub forest', 'Forestry', ''),
    ('Bd6d', 'Shrub forest', 'Grazing', ''),
    ('Ca1a', 'Grassland', 'No-management', 'Hedge'),
    ('Ca1b', 'Grassland', 'Mowing', 'Hedge'),
    ('Ca1c', 'Grassland', 'Grazing', 'Hedge'),
    ('Ca2a', 'Grassland', 'No-management', 'Hedge'),
    ('Ca2b', 'Grassland', 'Mowing', 'Hedge'),
    ('Ca2c', 'Grassland', 'Grazing', 'Hedge'),
    ('Ca3a', 'Grassland', 'No-management', ''),
    ('Ca3b', 'Grassland', 'Mowing', ''),
    ('Ca3c', 'Grassland', 'Grazing', ''),
    ('Ca4a', 'Grassland', 'No-management', ''),
    ('Ca4b', 'Grassland', 'Mowing', ''),
    ('Ca4c', 'Grassland', 'Grazing', ''),
    ('Ca5a', 'Grassland', 'No-management', ''),
    ('Ca5b', 'Grassland', 'Mowing', ''),
    ('Ca5c', 'Grassland', 'Grazing', ''),
    ('Ca6a', 'Grassland', 'No-management', ''),
    ('Ca6b', 'Grassland', 'Mowing', ''),
    ('Ca6c', 'Grassland', 'Grazing', ''),
    ('Ca7a', 'Grassland', 'No-management', ''),
    ('Ca7b', 'Grassland', 'Mowing', ''),
    ('Ca7c', 'Grassland', 'Grazing', ''),
    ('Cb1a', 'Heathland', 'No-management', 'Hedge'),
    ('Cb1b', 'Heathland', 'Mowing', 'Hedge'),
    ('Cb1c', 'Heathland', 'Grazing', 'Hedge'),
    ('Cb2a', 'Heathland', 'No-management', 'Hedge'),
    ('Cb2b', 'Heathland', 'Mowing', 'Hedge'),
    ('Cb2c', 'Heathland', 'Grazing', 'Hedge'),
    ('Cb3a', 'Heathland', 'No-management', ''),
    ('Cb3b', 'Heathland', 'Mowing', ''),
    ('Cb3c', 'Heathland', 'Grazing', ''),
    ('Cb4a', 'Heathland', 'No-management', ''),
    ('Cb4b', 'Heathland', 'Mowing', ''),
    ('Cb4c', 'Heathland', 'Grazing', ''),
    ('Cb5a', 'Heathland', 'No-management', ''),
    ('Cb5b', 'Heathland', 'Mowing', ''),
    ('Cb5c', 'Heathland', 'Grazing', ''),
    ('Cb6a', 'Heathland', 'No-management', ''),
    ('Cb6b', 'Heathland', 'Mowing', ''),
    ('Cb6c', 'Heathland', 'Grazing', ''),
    ('Cb7a', 'Heathland', 'No-management', ''),
    ('Cb7b', 'Heathland', 'Mowing', ''),
    ('Cb7c', 'Heathland', 'Grazing', ''),
    ('Cc1a', 'Heathland', 'No-management', 'Hedge'),
    ('Cc1b', 'Heathland', 'Mowing', 'Hedge'),
    ('Cc1c', 'Heathland', 'Grazing', 'Hedge'),
    ('Cc2a', 'Heathland', 'No-management', 'Hedge'),
    ('Cc2b', 'Heathland', 'Mowing', 'Hedge'),
    ('Cc2c', 'Heathland', 'Grazing', 'Hedge'),
    ('Cc3a', 'Heathland', 'No-management', ''),
    ('Cc3b', 'Heathland', 'Mowing', ''),
    ('Cc3c', 'Heathland', 'Grazing', ''),
    ('Cc4a', 'Heathland', 'No-management', ''),
    ('Cc4b', 'Heathland', 'Mowing', ''),
    ('Cc4c', 'Heathland', 'Grazing', ''),
    ('Cc5a', 'Heathland', 'No-management', ''),
    ('Cc5b', 'Heathland', 'Mowing', ''),
    ('Cc5c', 'Heathland', 'Grazing', ''),
    ('Cc6a', 'Heathland', 'No-management', ''),
    ('Cc6b', 'Heathland', 'Mowing', ''),
    ('Cc6c', 'Heathland', 'Grazing', ''),
    ('Cc7a', 'Heathland', 'No-management', ''),
    ('Cc7b', 'Heathland', 'Mowing', ''),
    ('Cc7c', 'Heathland', 'Grazing', ''),
    ('Cd1a', 'Grassland', 'No-management', 'Hedge'),
    ('Cd1b', 'Grassland', 'Mowing', 'Hedge'),
    ('Cd1c', 'Grassland', 'Grazing', 'Hedge'),
    ('Cd2a', 'Grassland', 'No-management', 'Hedge'),
    ('Cd2b', 'Grassland', 'Mowing', 'Hedge'),
    ('Cd2c', 'Grassland', 'Grazing', 'Hedge'),
    ('Cd3a', 'Grassland', 'No-management', ''),
    ('Cd3b', 'Grassland', 'Mowing', ''),
    ('Cd3c', 'Grassland', 'Grazing', ''),
    ('Cd4a', 'Grassland', 'No-management', ''),
    ('Cd4b', 'Grassland', 'Mowing', ''),
    ('Cd4c', 'Grassland', 'Grazing', ''),
    ('Cd5a', 'Grassland', 'No-management', ''),
    ('Cd5b', 'Grassland', 'Mowing', ''),
    ('Cd5c', 'Grassland', 'Grazing', ''),
    ('Cd6a', 'Grassland', 'No-management', ''),
    ('Cd6b', 'Grassland', 'Mowing', ''),
    ('Cd6c', 'Grassland', 'Grazing', ''),
    ('Cd7a', 'Grassland', 'No-management', ''),
    ('Cd7b', 'Grassland', 'Mowing', ''),
    ('Cd7c', 'Grassland', 'Grazing', ''),
    ('Ce1a', 'Grassland', 'No-management', 'Hedge'),
    ('Ce1b', 'Grassland', 'Mowing', 'Hedge'),
    ('Ce1c', 'Grassland', 'Grazing', 'Hedge'),
    ('Ce2a', 'Grassland', 'No-management', 'Hedge'),
    ('Ce2b', 'Grassland', 'Mowing', 'Hedge'),
    ('Ce2c', 'Grassland', 'Grazing', 'Hedge'),
    ('Ce3a', 'Grassland', 'No-management', ''),
    ('Ce3b', 'Grassland', 'Mowing', ''),
    ('Ce3c', 'Grassland', 'Grazing', ''),
    ('Ce4a', 'Grassland', 'No-management', ''),
    ('Ce4b', 'Grassland', 'Mowing', ''),
    ('Ce4c', 'Grassland', 'Grazing', ''),
    ('Ce5a', 'Grassland', 'No-management', ''),
    ('Ce5b', 'Grassland', 'Mowing', ''),
    ('Ce5c', 'Grassland', 'Grazing', ''),
    ('Ce6a', 'Grassland', 'No-management', ''),
    ('Ce6b', 'Grassland', 'Mowing', ''),
    ('Ce6c', 'Grassland', 'Grazing', ''),
    ('Ce7a', 'Grassland', 'No-management', ''),
    ('Ce7b', 'Grassland', 'Mowing', ''),
    ('Ce7c', 'Grassland', 'Grazing', ''),
    ('Cf1a', 'Grassland', 'No-management', 'Hedge'),
    ('Cf1b', 'Grassland', 'Mowing', 'Hedge'),
    ('Cf1c', 'Grassland', 'Grazing', 'Hedge'),
    ('Cf2a', 'Grassland', 'No-management', 'Hedge'),
    ('Cf2b', 'Grassland', 'Mowing', 'Hedge'),
    ('Cf2c', 'Grassland', 'Grazing', 'Hedge'),
    ('Cf3a', 'Grassland', 'No-management', ''),
    ('Cf3b', 'Grassland', 'Mowing', ''),
    ('Cf3c', 'Grassland', 'Grazing', ''),
    ('Cf4a', 'Grassland', 'No-management', ''),
    ('Cf4b', 'Grassland', 'Mowing', ''),
    ('Cf4c', 'Grassland', 'Grazing', ''),
    ('Cf5a', 'Grassland', 'No-management', ''),
    ('Cf5b', 'Grassland', 'Mowing', ''),
    ('Cf5c', 'Grassland', 'Grazing', ''),
    ('Cf6a', 'Grassland', 'No-management', ''),
    ('Cf6b', 'Grassland', 'Mowing', ''),
    ('Cf6c', 'Grassland', 'Grazing', ''),
    ('Cf7a', 'Grassland', 'No-management', ''),
    ('Cf7b', 'Grassland', 'Mowing', ''),
    ('Cf7c', 'Grassland', 'Grazing', ''),
    ('Cg1a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Cg1b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Cg1c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Cg2a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Cg2b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Cg2c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Cg3a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cg3b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cg3c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cg4a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cg4b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cg4c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cg5a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cg5b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cg5c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cg6a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cg6b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cg6c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cg7a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cg7b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cg7c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ch1a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ch1b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ch1c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ch2a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ch2b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ch2c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ch3a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ch3b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ch3c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ch4a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ch4b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ch4c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ch5a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ch5b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ch5c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ch6a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ch6b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ch6c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ch7a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ch7b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ch7c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ci1a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ci1b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ci1c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ci2a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ci2b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ci2c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ci3a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ci3b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ci3c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ci4a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ci4b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ci4c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ci5a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ci5b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ci5c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ci6a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ci6b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ci6c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ci7a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ci7b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ci7c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cj1a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Cj1b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Cj1c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Cj2a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Cj2b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Cj2c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Cj3a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cj3b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cj3c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cj4a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cj4b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cj4c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cj5a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cj5b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cj5c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cj6a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cj6b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cj6c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Cj7a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Cj7b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Cj7c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ck1a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ck1b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ck1c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ck2a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', 'Hedge'),
    ('Ck2b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', 'Hedge'),
    ('Ck2c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', 'Hedge'),
    ('Ck3a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ck3b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ck3c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ck4a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ck4b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ck4c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ck5a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ck5b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ck5c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ck6a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ck6b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ck6c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Ck7a', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'No-management', ''),
    ('Ck7b', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Mowing', ''),
    ('Ck7c', 'Wetlands (including ponds, lakes, fens, swamps etc)', 'Grazing', ''),
    ('Da1a', 'Agricultural', 'No-management', 'Hedge'),
    ('Da1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Da1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Da1d', 'Agricultural', 'Farming', 'Hedge'),
    ('Da1e', 'Agricultural', 'Farming', 'Hedge'),
    ('Da1f', 'Agricultural', 'Farming', 'Hedge'),
    ('Da2a', 'Agricultural', 'No-management', 'Hedge'),
    ('Da2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Da2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Da2d', 'Agricultural', 'Farming', 'Hedge'),
    ('Da2e', 'Agricultural', 'Farming', 'Hedge'),
    ('Da2f', 'Agricultural', 'Farming', 'Hedge'),
    ('Da3a', 'Agricultural', 'No-management', ''),
    ('Da3b', 'Agricultural', 'Mowing', ''),
    ('Da3c', 'Agricultural', 'Grazing', ''),
    ('Da3d', 'Agricultural', 'Farming', ''),
    ('Da3e', 'Agricultural', 'Farming', ''),
    ('Da3f', 'Agricultural', 'Farming', ''),
    ('Da4a', 'Agricultural', 'No-management', 'Field margin'),
    ('Da4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('Da4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('Da4d', 'Agricultural', 'Farming', 'Field margin'),
    ('Da4e', 'Agricultural', 'Farming', 'Field margin'),
    ('Da4f', 'Agricultural', 'Farming', 'Field margin'),
    ('Da5a', 'Agricultural', 'No-management', ''),
    ('Da5b', 'Agricultural', 'Mowing', ''),
    ('Da5c', 'Agricultural', 'Grazing', ''),
    ('Da5d', 'Agricultural', 'Farming', ''),
    ('Da5e', 'Agricultural', 'Farming', ''),
    ('Da5f', 'Agricultural', 'Farming', ''),
    ('Da6a', 'Agricultural', 'No-management', ''),
    ('Da6b', 'Agricultural', 'Mowing', ''),
    ('Da6c', 'Agricultural', 'Grazing', ''),
    ('Da6d', 'Agricultural', 'Farming', ''),
    ('Da6e', 'Agricultural', 'Farming', ''),
    ('Da6f', 'Agricultural', 'Farming', ''),
    ('Db1a', 'Agricultural', 'No-management', 'Hedge'),
    ('Db1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Db1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Db1d', 'Agricultural', 'Farming', 'Hedge'),
    ('Db1e', 'Agricultural', 'Farming', 'Hedge'),
    ('Db1f', 'Agricultural', 'Farming', 'Hedge'),
    ('Db2a', 'Agricultural', 'No-management', 'Hedge'),
    ('Db2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Db2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Db2d', 'Agricultural', 'Farming', 'Hedge'),
    ('Db2e', 'Agricultural', 'Farming', 'Hedge'),
    ('Db2f', 'Agricultural', 'Farming', 'Hedge'),
    ('Db3a', 'Agricultural', 'No-management', ''),
    ('Db3b', 'Agricultural', 'Mowing', ''),
    ('Db3c', 'Agricultural', 'Grazing', ''),
    ('Db3d', 'Agricultural', 'Farming', ''),
    ('Db3e', 'Agricultural', 'Farming', ''),
    ('Db3f', 'Agricultural', 'Farming', ''),
    ('Db4a', 'Agricultural', 'No-management', 'Field margin'),
    ('Db4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('Db4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('Db4d', 'Agricultural', 'Farming', 'Field margin'),
    ('Db4e', 'Agricultural', 'Farming', 'Field margin'),
    ('Db4f', 'Agricultural', 'Farming', 'Field margin'),
    ('Db5a', 'Agricultural', 'No-management', ''),
    ('Db5b', 'Agricultural', 'Mowing', ''),
    ('Db5c', 'Agricultural', 'Grazing', ''),
    ('Db5d', 'Agricultural', 'Farming', ''),
    ('Db5e', 'Agricultural', 'Farming', ''),
    ('Db5f', 'Agricultural', 'Farming', ''),
    ('Db6a', 'Agricultural', 'No-management', ''),
    ('Db6b', 'Agricultural', 'Mowing', ''),
    ('Db6c', 'Agricultural', 'Grazing', ''),
    ('Db6d', 'Agricultural', 'Farming', ''),
    ('Db6e', 'Agricultural', 'Farming', ''),
    ('Db6f', 'Agricultural', 'Farming', ''),
    ('Dc1a', 'Agricultural', 'No-management', 'Hedge'),
    ('Dc1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Dc1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Dc1d', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc1e', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc1f', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc2a', 'Agricultural', 'No-management', 'Hedge'),
    ('Dc2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Dc2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Dc2d', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc2e', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc2f', 'Agricultural', 'Farming', 'Hedge'),
    ('Dc3a', 'Agricultural', 'No-management', ''),
    ('Dc3b', 'Agricultural', 'Mowing', ''),
    ('Dc3c', 'Agricultural', 'Grazing', ''),
    ('Dc3d', 'Agricultural', 'Farming', ''),
    ('Dc3e', 'Agricultural', 'Farming', ''),
    ('Dc3f', 'Agricultural', 'Farming', ''),
    ('Dc4a', 'Agricultural', 'No-management', 'Field margin'),
    ('Dc4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('Dc4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('Dc4d', 'Agricultural', 'Farming', 'Field margin'),
    ('Dc4e', 'Agricultural', 'Farming', 'Field margin'),
    ('Dc4f', 'Agricultural', 'Farming', 'Field margin'),
    ('Dc5a', 'Agricultural', 'No-management', ''),
    ('Dc5b', 'Agricultural', 'Mowing', ''),
    ('Dc5c', 'Agricultural', 'Grazing', ''),
    ('Dc5d', 'Agricultural', 'Farming', ''),
    ('Dc5e', 'Agricultural', 'Farming', ''),
    ('Dc5f', 'Agricultural', 'Farming', ''),
    ('Dc6a', 'Agricultural', 'No-management', ''),
    ('Dc6b', 'Agricultural', 'Mowing', ''),
    ('Dc6c', 'Agricultural', 'Grazing', ''),
    ('Dc6d', 'Agricultural', 'Farming', ''),
    ('Dc6e', 'Agricultural', 'Farming', ''),
    ('Dc6f', 'Agricultural', 'Farming', ''),
    ('Dd1a', 'Agricultural', 'No-management', 'Hedge'),
    ('Dd1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Dd1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Dd1d', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd1e', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd1f', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd2a', 'Agricultural', 'No-management', 'Hedge'),
    ('Dd2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Dd2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Dd2d', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd2e', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd2f', 'Agricultural', 'Farming', 'Hedge'),
    ('Dd3a', 'Agricultural', 'No-management', ''),
    ('Dd3b', 'Agricultural', 'Mowing', ''),
    ('Dd3c', 'Agricultural', 'Grazing', ''),
    ('Dd3d', 'Agricultural', 'Farming', ''),
    ('Dd3e', 'Agricultural', 'Farming', ''),
    ('Dd3f', 'Agricultural', 'Farming', ''),
    ('Dd4a', 'Agricultural', 'No-management', 'Field margin'),
    ('Dd4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('Dd4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('Dd4d', 'Agricultural', 'Farming', 'Field margin'),
    ('Dd4e', 'Agricultural', 'Farming', 'Field margin'),
    ('Dd4f', 'Agricultural', 'Farming', 'Field margin'),
    ('Dd5a', 'Agricultural', 'No-management', ''),
    ('Dd5b', 'Agricultural', 'Mowing', ''),
    ('Dd5c', 'Agricultural', 'Grazing', ''),
    ('Dd5d', 'Agricultural', 'Farming', ''),
    ('Dd5e', 'Agricultural', 'Farming', ''),
    ('Dd5f', 'Agricultural', 'Farming', ''),
    ('Dd6a', 'Agricultural', 'No-management', ''),
    ('Dd6b', 'Agricultural', 'Mowing', ''),
    ('Dd6c', 'Agricultural', 'Grazing', ''),
    ('Dd6d', 'Agricultural', 'Farming', ''),
    ('Dd6e', 'Agricultural', 'Farming', ''),
    ('Dd6f', 'Agricultural', 'Farming', ''),
    ('De1a', 'Agricultural', 'No-management', 'Hedge'),
    ('De1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('De1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('De1d', 'Agricultural', 'Farming', 'Hedge'),
    ('De1e', 'Agricultural', 'Farming', 'Hedge'),
    ('De1f', 'Agricultural', 'Farming', 'Hedge'),
    ('De2a', 'Agricultural', 'No-management', 'Hedge'),
    ('De2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('De2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('De2d', 'Agricultural', 'Farming', 'Hedge'),
    ('De2e', 'Agricultural', 'Farming', 'Hedge'),
    ('De2f', 'Agricultural', 'Farming', 'Hedge'),
    ('De3a', 'Agricultural', 'No-management', ''),
    ('De3b', 'Agricultural', 'Mowing', ''),
    ('De3c', 'Agricultural', 'Grazing', ''),
    ('De3d', 'Agricultural', 'Farming', ''),
    ('De3e', 'Agricultural', 'Farming', ''),
    ('De3f', 'Agricultural', 'Farming', ''),
    ('De4a', 'Agricultural', 'No-management', 'Field margin'),
    ('De4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('De4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('De4d', 'Agricultural', 'Farming', 'Field margin'),
    ('De4e', 'Agricultural', 'Farming', 'Field margin'),
    ('De4f', 'Agricultural', 'Farming', 'Field margin'),
    ('De5a', 'Agricultural', 'No-management', ''),
    ('De5b', 'Agricultural', 'Mowing', ''),
    ('De5c', 'Agricultural', 'Grazing', ''),
    ('De5d', 'Agricultural', 'Farming', ''),
    ('De5e', 'Agricultural', 'Farming', ''),
    ('De5f', 'Agricultural', 'Farming', ''),
    ('De6a', 'Agricultural', 'No-management', ''),
    ('De6b', 'Agricultural', 'Mowing', ''),
    ('De6c', 'Agricultural', 'Grazing', ''),
    ('De6d', 'Agricultural', 'Farming', ''),
    ('De6e', 'Agricultural', 'Farming', ''),
    ('De6f', 'Agricultural', 'Farming', ''),
    ('Df1a', 'Agricultural', 'No-management', 'Hedge'),
    ('Df1b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Df1c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Df1d', 'Agricultural', 'Farming', 'Hedge'),
    ('Df1e', 'Agricultural', 'Farming', 'Hedge'),
    ('Df1f', 'Agricultural', 'Farming', 'Hedge'),
    ('Df2a', 'Agricultural', 'No-management', 'Hedge'),
    ('Df2b', 'Agricultural', 'Mowing', 'Hedge'),
    ('Df2c', 'Agricultural', 'Grazing', 'Hedge'),
    ('Df2d', 'Agricultural', 'Farming', 'Hedge'),
    ('Df2e', 'Agricultural', 'Farming', 'Hedge'),
    ('Df2f', 'Agricultural', 'Farming', 'Hedge'),
    ('Df3a', 'Agricultural', 'No-management', ''),
    ('Df3b', 'Agricultural', 'Mowing', ''),
    ('Df3c', 'Agricultural', 'Grazing', ''),
    ('Df3d', 'Agricultural', 'Farming', ''),
    ('Df3e', 'Agricultural', 'Farming', ''),
    ('Df3f', 'Agricultural', 'Farming', ''),
    ('Df4a', 'Agricultural', 'No-management', 'Field margin'),
    ('Df4b', 'Agricultural', 'Mowing', 'Field margin'),
    ('Df4c', 'Agricultural', 'Grazing', 'Field margin'),
    ('Df4d', 'Agricultural', 'Farming', 'Field margin'),
    ('Df4e', 'Agricultural', 'Farming', 'Field margin'),
    ('Df4f', 'Agricultural', 'Farming', 'Field margin'),
    ('Df5a', 'Agricultural', 'No-management', ''),
    ('Df5b', 'Agricultural', 'Mowing', ''),
    ('Df5c', 'Agricultural', 'Grazing', ''),
    ('Df5d', 'Agricultural', 'Farming', ''),
    ('Df5e', 'Agricultural', 'Farming', ''),
    ('Df5f', 'Agricultural', 'Farming', ''),
    ('Df6a', 'Agricultural', 'No-management', ''),
    ('Df6b', 'Agricultural', 'Mowing', ''),
    ('Df6c', 'Agricultural', 'Grazing', ''),
    ('Df6d', 'Agricultural', 'Farming', ''),
    ('Df6e', 'Agricultural', 'Farming', ''),
    ('Df6f', 'Agricultural', 'Farming', ''),
    ('Ea1a', 'Residential area', '', ''),
    ('Ea1b', 'Residential area', '', ''),
    ('Ea1c', 'Residential area', '', ''),
    ('Ea1d', 'Residential area', '', ''),
    ('Ea1e', 'Residential area', '', ''),
    ('Ea2a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea2b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea2c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea2d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea2e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea3a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea3b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea3c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea3d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea3e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ea4a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ea4b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ea4c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ea4d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ea4e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ea5a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea5b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea5c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea5d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea5e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea6a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea6b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea6c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea6d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ea6e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb1a', 'Residential area', '', ''),
    ('Eb1b', 'Residential area', '', ''),
    ('Eb1c', 'Residential area', '', ''),
    ('Eb1d', 'Residential area', '', ''),
    ('Eb1e', 'Residential area', '', ''),
    ('Eb2a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb2b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb2c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb2d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb2e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb3a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb3b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb3c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb3d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb3e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Eb4a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Eb4b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Eb4c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Eb4d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Eb4e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Eb5a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb5b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb5c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb5d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb5e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb6a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb6b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb6c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb6d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Eb6e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec1a', 'Residential area', '', ''),
    ('Ec1b', 'Residential area', '', ''),
    ('Ec1c', 'Residential area', '', ''),
    ('Ec1d', 'Residential area', '', ''),
    ('Ec1e', 'Residential area', '', ''),
    ('Ec2a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec2b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec2c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec2d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec2e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec3a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec3b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec3c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec3d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec3e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ec4a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ec4b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ec4c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ec4d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ec4e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ec5a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec5b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec5c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec5d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec5e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec6a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec6b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec6c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec6d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ec6e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed1a', 'Residential area', '', ''),
    ('Ed1b', 'Residential area', '', ''),
    ('Ed1c', 'Residential area', '', ''),
    ('Ed1d', 'Residential area', '', ''),
    ('Ed1e', 'Residential area', '', ''),
    ('Ed2a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed2b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed2c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed2d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed2e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed3a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed3b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed3c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed3d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed3e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ed4a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ed4b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ed4c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ed4d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ed4e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ed5a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed5b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed5c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed5d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed5e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed6a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed6b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed6c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed6d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ed6e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee1a', 'Residential area', '', ''),
    ('Ee1b', 'Residential area', '', ''),
    ('Ee1c', 'Residential area', '', ''),
    ('Ee1d', 'Residential area', '', ''),
    ('Ee1e', 'Residential area', '', ''),
    ('Ee2a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee2b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee2c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee2d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee2e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee3a', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee3b', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee3c', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee3d', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee3e', 'Gardens and parks (urban)', 'Turf cutting', ''),
    ('Ee4a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ee4b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ee4c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ee4d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ee4e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', 'Road/path'),
    ('Ee5a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee5b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee5c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee5d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee5e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee6a', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee6b', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee6c', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee6d', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ee6e', 'Ecotones (e.g. forest-grassland edge, hedgerow/ditches in agricultural areas)', '', ''),
    ('Ga1a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga1b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga1c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga1d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga1e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga1f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga2f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga3a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga3b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga3c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga3d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga3e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga3f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Ga4a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga4b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga4c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga4d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga4e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Ga4f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb1f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb2f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb3a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb3b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb3c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb3d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb3e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb3f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gb4a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb4b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb4c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb4d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb4e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gb4f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gc1a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc1b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc1c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc1d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc1e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc1f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc2f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc3a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc3b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc3c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc3d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc3e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc3f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', 'River/pond bank'),
    ('Gc4a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc4b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc4c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc4d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc4e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gc4f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'Extraction (e.g. sod/peat cutting, aggregate extraction, topsoil stripping etc.)', ''),
    ('Gd1a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd1b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd1c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd1d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd1e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd1f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd2f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd3a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd3b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd3c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd3d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd3e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd3f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', 'River/pond bank'),
    ('Gd4a', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd4b', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd4c', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd4d', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd4e', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', ''),
    ('Gd4f', 'Other (e.g. coastal, rock/scree, mangrove etc.)', 'No-management', '')
) AS t (code, ebms_habitat, ebms_gestion, ebms_lineaire);

--------------------------------------------------------------------------------
-- Export des transects et sections au format Indicia / eBMS.
-- La vue est une union de deux requêtes, une pour les transects et l'autre
-- pour les sections.
--------------------------------------------------------------------------------

CREATE VIEW gn_monitoring.v_export_sterf_ebms_transects AS

-- Tables temporaires communes aux transects et aux sections.
WITH
    -- Table des nomenclatures des habitats.
    habitats AS (
        SELECT
            id_nomenclature,
            tn.mnemonique AS n_mnemonique,
            tn.label_default AS n_label,
            bnt.mnemonique AS t_mnemonique
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique LIKE 'STERF_HAB_%'
    ),
    -- Tables des nomenclatures des habitats filtrées par niveau.
    hab_n1 AS (SELECT * FROM habitats WHERE t_mnemonique = 'STERF_HAB_N1'),
    hab_n2 AS (SELECT * FROM habitats WHERE t_mnemonique = 'STERF_HAB_N2'),
    hab_n3 AS (SELECT * FROM habitats WHERE t_mnemonique = 'STERF_HAB_N3'),
    hab_n4 AS (SELECT * FROM habitats WHERE t_mnemonique = 'STERF_HAB_N4'),
    -- Table de la nomenclature des habitats linéaires.
    linear_habitats AS (
        SELECT id_nomenclature, tn.mnemonique
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique = 'EBMS_LINEAR_HABITAT'
    ),
    -- Table de la nomenclature des gestionnaires de terrain.
    land_tenures AS (
        SELECT id_nomenclature, tn.mnemonique
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique = 'EBMS_LAND_TENURE'
    ),
    -- Table de la nomenclature des gestions de terrain.
    land_managements AS (
        SELECT id_nomenclature, tn.mnemonique
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique = 'EBMS_LAND_MANAGEMENT'
    )

(
    -- Tables temporaires spécifiques aux transects.
    WITH
        -- Table regroupant un multilinestring des sections de chaque transect.
        sections AS (
            SELECT
                tsg.id_sites_group,
                ST_Collect(ARRAY(
                    SELECT geom
                    FROM gn_monitoring.t_base_sites tbs_
                    LEFT JOIN gn_monitoring.t_site_complements tsc_ USING (id_base_site)
                    WHERE tsc_.id_sites_group = tsg.id_sites_group
                )) AS "sections_geom"
            FROM gn_monitoring.t_sites_groups tsg
        ),
        -- Table des enveloppes convexes des sections de la table précédente.
        hulls AS (
            SELECT id_sites_group, ST_ConvexHull(sections_geom) AS "sections_hull"
            FROM sections
        ),
        -- Table des centroïdes des objets de la table précédente.
        centroids AS (
            SELECT id_sites_group, ST_Centroid(sections_hull) AS "centroid"
            FROM hulls
        ),
        -- Table des habitats Sterf principaux.
        transect_main_sterf_habitats AS (
            SELECT
                tsg.id_sites_group,
                (
                    (SELECT n_mnemonique FROM hab_n1 WHERE id_nomenclature = (tsg.data->'habitat_main_1')::int)
                    || (SELECT n_mnemonique FROM hab_n2 WHERE n_label = (tsg.data->>'habitat_main_2')::text)
                    || COALESCE((SELECT n_mnemonique FROM hab_n3 WHERE n_label = (tsg.data->>'habitat_main_3')::text), '')
                    || COALESCE((SELECT n_mnemonique FROM hab_n4 WHERE n_label = (tsg.data->>'habitat_main_4')::text), '')
                ) AS habitat
            FROM gn_monitoring.t_sites_groups tsg
        ),
        -- Table des habitats Sterf secondaires.
        transect_secondary_sterf_habitats AS (
            SELECT
                tsg.id_sites_group,
                (
                    (SELECT n_mnemonique FROM hab_n1 WHERE jsonb_typeof(tsg.data->'habitat_secondary_1') = 'number' AND id_nomenclature = (tsg.data->'habitat_secondary_1')::int)
                    || (SELECT n_mnemonique FROM hab_n2 WHERE n_label = (tsg.data->>'habitat_secondary_2')::text)
                    || COALESCE((SELECT n_mnemonique FROM hab_n3 WHERE n_label = (tsg.data->>'habitat_secondary_3')::text), '')
                    || COALESCE((SELECT n_mnemonique FROM hab_n4 WHERE n_label = (tsg.data->>'habitat_secondary_4')::text), '')
                ) AS habitat
            FROM gn_monitoring.t_sites_groups tsg
        ),
        -- Table de la nomenclature des largeurs de transects.
        widths AS (
            SELECT id_nomenclature, tn.cd_nomenclature
            FROM ref_nomenclatures.t_nomenclatures tn
            JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
            WHERE bnt.mnemonique = 'EBMS_TRN_WIDTH'
        )
    SELECT
        -- External key : UUID du transect.
        tsg.uuid_sites_group AS "external_key",
        -- Name : nom du transect.
        tsg.sites_group_name AS "name",
        -- Code : code eBMS du transect si disponible.
        tsg.sites_group_code AS "code",
        -- Parent ID : vide, seulement utilisé pour les sections.
        NULL AS "parent_id",
        -- Centroid SREF : centroïde du transect (format degrés minutes secondes).
        ST_AsLatLonText(c.centroid) AS "centroid_sref",
        -- Centroid SREF system : référentiel du centroïde.
        ST_SRID(c.centroid) AS "centroid_sref_system",
        -- Created on : date de création du transect.
        tsg.meta_create_date AS "created_on",
        -- Created by ID : créateur du transect.
        tr.uuid_role AS "created_by_id",
        -- Updated on : date de dernière mise à jour du transect.
        tsg.meta_update_date AS "updated_on",
        -- Comment : description du transect.
        tsg.sites_group_description AS "comment",
        -- Centroid geom : centroïde du transect (format géométrique).
        c.centroid AS "centroid_geom",
        -- Boundary geom : enveloppe convexe (probablement inutilisé par Indicia).
        h.sections_hull AS "boundary_geom",
        -- Location type ID : valeur interne à Indicia.
        777 AS "location_type_id",
        -- Location type term : valeur interne à Indicia.
        'Transect' AS "location_type_term",
        -- Sensitive : sensibilité de la donnée.
        CASE tsg.data->>'sensitivity' WHEN 'Oui' THEN TRUE ELSE FALSE END AS "sensitive",
        -- Section length int : vide, seulement utilisé pour les sections.
        NULL AS "section_length_int",
        -- Nb section int : nombre de section.
        ST_NumGeometries(s.sections_geom) AS "nb_sections_int",
        -- Transect width (m) : largeur du transect.
        CASE w.cd_nomenclature
            WHEN 'W05' THEN 5
            WHEN 'W06' THEN 6
            WHEN 'W10' THEN 10
            ELSE NULL
        END AS "transect_width_m",
        -- Habitat Sterf principal, information inutile pour l'eBMS mais pratique pour inspecter les exports.
        tsh1.habitat AS "sterf_habitat_main",
        -- Habitat Sterf secondaire, même commentaire.
        tsh2.habitat AS "sterf_habitat_secondary",
        -- Main habitat : habitat principal, transformé en habitat eBMS en fonction du code d'habitat Sterf.
        (
            SELECT ebms_habitat
            FROM ref_habitats.cor_sterf_to_ebms
            WHERE code LIKE tsh1.habitat || '%'
            ORDER BY code ASC LIMIT 1
        ) AS "habitat_main",
        -- Secondary habitat : habitat secondaire, transformé en habitat eBMS en fonction du code d'habitat Sterf.
        CASE
            WHEN LENGTH(tsh2.habitat) >= 2 THEN (
                SELECT ebms_habitat
                FROM ref_habitats.cor_sterf_to_ebms
                WHERE code LIKE tsh2.habitat || '%'
                ORDER BY code ASC LIMIT 1
            )
            ELSE NULL
        END AS "habitat_secondary",
        -- Linear habitat : vide, seulement utilisé pour les sections.
        NULL AS "linear_habitat",
        -- Principal land tenure : gestionnaire du terrain (principal).
        (
            SELECT mnemonique
            FROM land_tenures
            WHERE id_nomenclature = (tsg.data->'land_tenure')::int
        ) AS "principal_land_tenure",
        -- 2nd land tenure : gestionnaire du terrain (secondaire).
        (
            SELECT mnemonique
            FROM land_tenures
            WHERE
                jsonb_typeof(tsg.data->'land_tenure_2') = 'number'
                AND id_nomenclature = (tsg.data->'land_tenure_2')::int
        ) AS "secondary_land_tenure",
        -- Principal land management : gestion du terrain (principale).
        (
            SELECT mnemonique
            FROM land_managements
            WHERE id_nomenclature = (tsg.data->'land_management')::int
        ) AS "principal_land_management",
        -- 2nd land management : gestion du terrain (secondaire).
        (
            SELECT mnemonique
            FROM land_managements
            WHERE
                jsonb_typeof(tsg.data->'land_management_2') = 'number'
                AND id_nomenclature = (tsg.data->'land_management_2')::int
        ) AS "secondary_land_management",
        -- Notes on habitat, land management and tenure : comme il dit.
        tsg.comments AS "notes_on_habitat_etc",
        -- Notes on land use : vide, utilisé seulement pour les sections.
        NULL AS "notes_on_land_use"
    FROM gn_monitoring.t_sites_groups tsg
    LEFT JOIN sections s USING (id_sites_group)
    LEFT JOIN hulls h USING (id_sites_group)
    LEFT JOIN centroids c USING (id_sites_group)
    LEFT JOIN widths w ON w.id_nomenclature = (tsg.data->'width')::int
    LEFT JOIN transect_main_sterf_habitats tsh1 USING (id_sites_group)
    LEFT JOIN transect_secondary_sterf_habitats tsh2 USING (id_sites_group)
    LEFT JOIN gn_monitoring.cor_sites_group_module csgm USING (id_sites_group)
    LEFT JOIN gn_commons.t_modules tm USING (id_module)
    LEFT JOIN utilisateurs.t_roles tr ON tr.id_role = tsg.id_digitiser
    WHERE tm.module_code = 'sterf_ebms'
    ORDER BY tsg.meta_create_date
)

UNION ALL

(
    -- Tables temporaires spécifiques aux sections.
    WITH
        -- Table des centroïdes des sections.
        centroids AS (
            SELECT id_base_site, ST_Centroid(geom) AS "centroid"
            FROM gn_monitoring.t_base_sites
        ),
        -- Table des habitats Sterf principaux.
        section_main_sterf_habitats AS (
            SELECT
                id_base_site,
                (
                    (SELECT n_mnemonique FROM hab_n1 WHERE jsonb_typeof(tsc.data->'habitat_main_1') = 'number' AND id_nomenclature = (tsc.data->'habitat_main_1')::int)
                    || (SELECT n_mnemonique FROM hab_n2 WHERE n_label = (tsc.data->>'habitat_main_2')::text)
                    || COALESCE((SELECT n_mnemonique FROM hab_n3 WHERE n_label = (tsc.data->>'habitat_main_3')::text), '')
                    || COALESCE((SELECT n_mnemonique FROM hab_n4 WHERE n_label = (tsc.data->>'habitat_main_4')::text), '')
                ) AS habitat
            FROM gn_monitoring.t_base_sites tbs
            LEFT JOIN gn_monitoring.t_site_complements tsc USING (id_base_site)
        ),
        -- Table des habitats Sterf secondaires.
        section_secondary_sterf_habitats AS (
            SELECT
                id_base_site,
                (
                    (SELECT n_mnemonique FROM hab_n1 WHERE jsonb_typeof(tsc.data->'habitat_secondary_1') = 'number' AND id_nomenclature = (tsc.data->'habitat_secondary_1')::int)
                    || (SELECT n_mnemonique FROM hab_n2 WHERE n_label = (tsc.data->>'habitat_secondary_2')::text)
                    || COALESCE((SELECT n_mnemonique FROM hab_n3 WHERE n_label = (tsc.data->>'habitat_secondary_3')::text), '')
                    || COALESCE((SELECT n_mnemonique FROM hab_n4 WHERE n_label = (tsc.data->>'habitat_secondary_4')::text), '')
                ) AS habitat
            FROM gn_monitoring.t_base_sites tbs
            LEFT JOIN gn_monitoring.t_site_complements tsc USING (id_base_site)
        )
    SELECT
        -- External key : UUID de la section.
        tbs.uuid_base_site AS "external_key",
        -- Name : nom de la section.
        tbs.base_site_name AS "name",
        -- Code : code de la section si disponible.
        tbs.base_site_code AS "code",
        -- Parent ID : code eBMS du transect si le format est le bon, sinon son UUID.
        CASE (tsg.sites_group_code LIKE 'EBMS:%')
            WHEN TRUE THEN tsg.sites_group_code
            ELSE tsg.uuid_sites_group::text
        END AS "parent_id",
        -- Centroid SREF : centroïde de la section (format degrés minutes secondes).
        ST_AsLatLonText(c.centroid) AS "centroid_sref",
        -- Centroid SREF system : référentiel du centroïde.
        ST_SRID(tbs.geom) AS "centroid_sref_system",
        -- Created on : date de création de la section.
        tbs.meta_create_date AS "created_on",
        -- Created by ID : créateur de la section.
        tr.uuid_role AS "created_by_id",
        -- Updated on : date de dernière mise à jour de la section.
        tbs.meta_update_date AS "updated_on",
        -- Comment : description de la section.
        tbs.base_site_description AS "comment",
        -- Centroid geom : centroïde de la section (format géométrique).
        c.centroid AS "centroid_geom",
        -- Boundary geom : géométrie de la section (le nom est trompeur).
        tbs.geom AS "boundary_geom",
        -- Location type ID : valeur interne à Indicia.
        778 AS "location_type_id",
        -- Location type term : valeur interne à Indicia.
        'Transect Section' AS "location_type_term",
        -- Sensitive : vide, seulement utilisé pour les transects.
        NULL AS "sensitive",
        -- Section length int : longueur de la section en mètres.
        ST_Length(tbs.geom::geography)::int AS "section_length_m",
        -- Nb section int : vide, seulement utilisé pour les transects.
        NULL AS "nb_sections_int",
        -- Transect width (m) : vide, seulement utilisé pour les transects.
        NULL AS "transect_width_m",
        -- Habitat Sterf principal, information inutile pour l'eBMS mais pratique pour inspecter les exports.
        ssh1.habitat AS "sterf_habitat_main",
        -- Habitat Sterf secondaire, même commentaire.
        ssh2.habitat AS "sterf_habitat_secondary",
        -- Main habitat : habitat principal, transformé en habitat eBMS en fonction du code d'habitat Sterf.
        CASE
            WHEN LENGTH(ssh1.habitat) >= 2
            THEN (
                SELECT ebms_habitat
                FROM ref_habitats.cor_sterf_to_ebms
                WHERE code LIKE ssh1.habitat || '%'
                ORDER BY code ASC LIMIT 1
            )
            ELSE NULL
        END AS "habitat_main",
        -- Main secondaire : habitat principal, transformé en habitat eBMS en fonction du code d'habitat Sterf.
        CASE
            WHEN LENGTH(ssh2.habitat) >= 2
            THEN (
                SELECT ebms_habitat
                FROM ref_habitats.cor_sterf_to_ebms
                WHERE code LIKE ssh2.habitat || '%'
                ORDER BY code ASC LIMIT 1
            )
            ELSE NULL
        END AS "habitat_secondary",
        -- Linear habitat : habitat linéaire.
        (
            SELECT mnemonique
            FROM linear_habitats
            WHERE id_nomenclature = (tsc.data->'linear_habitat')::int
        ) AS "linear_habitat",
        -- Principal land tenure : gestionnaire du terrain (principal), si différente du transect.
        (
            SELECT mnemonique
            FROM land_tenures
            WHERE
                jsonb_typeof(tsg.data->'land_tenure') = 'number'
                AND id_nomenclature = (tsc.data->'land_tenure')::int
        ) AS "principal_land_tenure",
        -- 2nd land tenure : gestionnaire du terrain (secondaire), si différente du transect.
        (
            SELECT mnemonique
            FROM land_tenures
            WHERE
                jsonb_typeof(tsc.data->'land_tenure_2') = 'number'
                AND id_nomenclature = (tsc.data->'land_tenure_2')::int
        ) AS "secondary_land_tenure",
        -- Principal land management : gestion du terrain (principale), si différente du transect.
        (
            SELECT mnemonique
            FROM land_managements
            WHERE
                jsonb_typeof(tsg.data->'land_management') = 'number'
                AND id_nomenclature = (tsc.data->'land_management')::int
        ) AS "principal_land_management",
        -- 2nd land management : gestion du terrain (secondaire), si différente du transect.
        (
            SELECT mnemonique
            FROM land_managements
            WHERE
                jsonb_typeof(tsc.data->'land_management_2') = 'number'
                AND id_nomenclature = (tsc.data->'land_management_2')::int
        ) AS "secondary_land_management",
        -- Notes on habitat, land management and tenure : vide, utilisé seulement pour les transects.
        NULL AS "notes_on_habitat_etc",
        -- Notes on land use : notes sur l'utilisation et la gestion des sols.
        tsc.data->>'comments' AS "notes_on_land_use"
    FROM gn_monitoring.t_base_sites tbs
    LEFT JOIN centroids c USING (id_base_site)
    LEFT JOIN section_main_sterf_habitats ssh1 USING (id_base_site)
    LEFT JOIN section_secondary_sterf_habitats ssh2 USING (id_base_site)
    LEFT JOIN gn_monitoring.t_site_complements tsc USING (id_base_site)
    LEFT JOIN gn_monitoring.t_sites_groups tsg USING (id_sites_group)
    LEFT JOIN gn_monitoring.cor_site_type cst USING (id_base_site)
    LEFT JOIN ref_nomenclatures.t_nomenclatures tn ON tn.id_nomenclature = cst.id_type_site
    LEFT JOIN utilisateurs.t_roles tr ON tr.id_role = tbs.id_digitiser
    WHERE tn.cd_nomenclature = 'EBMS_SEC'
    ORDER BY tbs.meta_create_date
)
;

--------------------------------------------------------------------------------
-- Export des visites.
--------------------------------------------------------------------------------

CREATE VIEW gn_monitoring.v_export_sterf_ebms_visits AS

WITH
    wind_speeds AS (
        SELECT id_nomenclature, tn.cd_nomenclature
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique = 'BEAUFORT'
    ),
    floral_covers AS (
        SELECT id_nomenclature, tn.cd_nomenclature
        FROM ref_nomenclatures.t_nomenclatures tn
        JOIN ref_nomenclatures.bib_nomenclatures_types bnt USING (id_type)
        WHERE bnt.mnemonique = 'STERF_FLORAL_COVER'
    ),
    observers AS (
        SELECT
            id_base_visit,
            STRING_AGG(tr.uuid_role::text, E'\n') AS "recorder_uuids",
            STRING_AGG(tr.prenom_role || ' ' || tr.nom_role, E'\n') AS "recorder_names"
        FROM gn_monitoring.t_base_visits tbv
        LEFT JOIN gn_monitoring.cor_visit_observer cvo USING (id_base_visit)
        LEFT JOIN utilisateurs.t_roles tr USING (id_role)
        GROUP BY tbv.id_base_visit
    )
SELECT
    tbv.uuid_base_visit AS "external_key",
    tbs.uuid_base_site AS "location_id",
    tbs.base_site_code AS "location_code",
    tbs.base_site_name AS "location_name",
    tbv.visit_date_min AS "date_start",
    tbv.visit_date_max AS "date_end",
    tvc.data->>'start_hour' AS "hour_start",
    tvc.data->>'end_hour' AS "hour_end",
    CASE tbv.visit_date_min = tbv.visit_date_max WHEN TRUE THEN 'D' ELSE 'DD' END AS "date_type",
    tbv.meta_create_date AS "created_on",
    tbv.meta_update_date AS "updated_on",
    tbv.comments AS "comments",
    o.recorder_uuids AS "recorder_uuids",
    o.recorder_names AS "recorder_names",
    CASE tvc.data->>'completed' WHEN 'Oui' THEN TRUE ELSE FALSE END AS "completed",
    (tvc.data->'temperature')::int AS "temperature",
    (tvc.data->'cloud_cover')::int AS "cloud_cover",
    ws.cd_nomenclature AS "wind_speed",
    fc.cd_nomenclature AS "floral_cover",
    SUBSTRING(tvc.data->>'reliability' FROM 1 FOR 1) AS "reliability"
FROM gn_monitoring.t_base_visits tbv
LEFT JOIN gn_monitoring.t_visit_complements tvc USING (id_base_visit)
LEFT JOIN gn_monitoring.t_base_sites tbs USING (id_base_site)
LEFT JOIN gn_monitoring.t_site_complements tsc USING (id_base_site)
LEFT JOIN gn_monitoring.t_sites_groups tsg USING (id_sites_group)
LEFT JOIN gn_commons.t_modules tm USING (id_module)
LEFT JOIN observers o USING (id_base_visit)
LEFT JOIN wind_speeds ws ON ws.id_nomenclature = (tvc.data->'wind_speed')::int
LEFT JOIN floral_covers fc ON jsonb_typeof(tvc.data->'floral_cover') = 'number' AND fc.id_nomenclature = (tvc.data->'floral_cover')::int
WHERE tm.module_code = 'sterf_ebms'
ORDER BY tbv.meta_create_date
;

--------------------------------------------------------------------------------
-- Export des observations.
--------------------------------------------------------------------------------

CREATE VIEW gn_monitoring.v_export_sterf_ebms_observations AS

SELECT
	tobs.uuid_observation AS "external_key",
	tbv.uuid_base_visit AS "sample_id",
	tobs.cd_nom AS "taxon_id",
	tr.nom_complet AS "taxon_name",
	tr.cd_ref AS "taxon_id_valid",
	tr.nom_valide AS "taxon_name_valid",
	(toc.data->'effectif')::int AS "count",
	tobs.comments AS "comments"
FROM gn_monitoring.t_observations tobs
JOIN gn_monitoring.t_observation_complements toc USING (id_observation)
LEFT JOIN gn_monitoring.t_observation_details tod USING (id_observation)
LEFT JOIN gn_monitoring.t_base_visits tbv USING (id_base_visit)
LEFT JOIN gn_commons.t_modules tm USING (id_module)
LEFT JOIN taxonomie.taxref tr USING (cd_nom)
WHERE tm.module_code = 'sterf_ebms'
ORDER BY tobs.id_observation
;
