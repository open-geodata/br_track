GLOBAL_MAPPER_SCRIPT VERSION="1.00"

// Log File
SET_LOG_FILE FILENAME="%SCRIPT_FOLDER%/../logs/log_globalmapper.txt" APPEND_TO_FILE=NO

// Msg
LOG_MESSAGE "Script para Converter .mp em .shapefile"

// Remove Qualquer coisa
UNLOAD_ALL

// Loop over all files in a folder
DIR_LOOP_START DIRECTORY="%SCRIPT_FOLDER%/../data/mp_files/" FILENAME_MASKS="*.mp" RECURSE_DIR=NO

// Importa arquivos polish
IMPORT FILENAME="%FNAME_W_DIR%" ANTI_ALIAS=YES

// Exporta
EXPORT_VECTOR FILENAME="%DIR%/../shp_files/%FNAME_WO_EXT%_lines.shp" TYPE=SHAPEFILE SHAPE_TYPE=LINES GEN_PRJ_FILE=YES GEN_MULTI_PATCH=NO INC_MAP_NAME_ATTR=YES INC_STYLE_ATTRS=YES CODE_PAGE=1252
EXPORT_VECTOR FILENAME="%DIR%/../shp_files/%FNAME_WO_EXT%_points.shp" TYPE=SHAPEFILE SHAPE_TYPE=POINTS GEN_PRJ_FILE=YES GEN_MULTI_PATCH=NO INC_MAP_NAME_ATTR=YES INC_STYLE_ATTRS=YES CODE_PAGE=1252
EXPORT_VECTOR FILENAME="%DIR%/../shp_files/%FNAME_WO_EXT%_polygons.shp" TYPE=SHAPEFILE SHAPE_TYPE=AREAS GEN_PRJ_FILE=YES GEN_MULTI_PATCH=NO INC_MAP_NAME_ATTR=YES INC_STYLE_ATTRS=YES CODE_PAGE=1252

// Unload the loaded data
UNLOAD_ALL

// End the loop
DIR_LOOP_END


// Encoding
// ISO-8859-1 code page number ANSI (1252).
// não funciona adequadamente... talvez problema do arquivo .mp
