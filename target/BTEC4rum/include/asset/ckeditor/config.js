/**
 * @license Copyright (c) 2003-2020, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function (config) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.filebrowserBrowseUrl: url + 'responsive_filemanager/filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
	config.filebrowserUploadUrl: url + 'responsive_filemanager/filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
	config.filebrowserImageBrowseUrl: url + 'responsive_filemanager/filemanager/dialog.php?type=1&editor=ckeditor&fldr='
};
