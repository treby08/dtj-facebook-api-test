package util
{
	public class FbUtil
	{
		public static function parseCollection(coll:Array,params:Object):Array{
			var paramName:Array = [];
			for(var st:String in params){
				paramName.push(st);
			}
			
			var friendColl:Array = new Array();
			for(var i:int=0; i<coll.length; i++) {
				var meet:Boolean;
				
				for(var i2:int=0; i2<paramName.length; i2++) {
					if(coll[i][paramName[i2]]==params[paramName[i2]])
						meet = true;
					else{	
						meet = false;
						break;
					}
				}
				
				if(meet)
					friendColl.push(coll[i]);
			}
			return friendColl;
		}
	}
}