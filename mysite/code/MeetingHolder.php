<?php
class MeetingHolder extends Page {

	private static $db = array();
	private static $has_one = array();
	private static $allowed_children = array('MeetingPage','MeetingHolder');
	
	public function Meetings(){
		$children = $this->Children();
		
		
		$children->sort("Date",  "DESC");
		
		
		if($children){
			return $children;
		}
		
	}
	
}
	
class MeetingHolder_Controller extends Page_Controller {

	//public static $allowed_actions = array ( "legislation" );
	
	public function init() {
		parent::init();
	}
}

?>