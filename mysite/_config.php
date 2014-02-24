<?php

global $project;
$project = 'mysite';

global $database;
$database = 'uisg-kit';
 
// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");
MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('simple');

// Set the site locale
i18n::set_locale('en_US');
FulltextSearchable::enable();
// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();
DataObject::add_extension('StaffTeam', 'StaffTeamExtension');
HomePage::add_extension('HomePageExtension');