////////////////////////////////////////////////////////////////////////
/// This is a basic example for a plugin within force undress        ///
/// http://tinyurl.com/ij3ovzos                                      ///
////////////////////////////////////////////////////////////////////////

default
{
    link_message(integer link,integer chan,string msg,key id)
    {
        //llOwnerSay((string)chan +" : " + msg + " : " + (string)id);
        msg = llToLower(msg);
        if(msg == llGetSubString(llGetScriptName(),4,-1)) // start plugin from menu
        {
            llOwnerSay("Hello world!");
            llMessageLinked(LINK_SET,701,"helloworld",""); //API output
        }
        if(chan == 700) //receive commands from API in channel
        {
            //API INPUT
            /*
            yourfunction
            */
        }
    }
}
