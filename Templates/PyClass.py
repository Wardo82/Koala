#=============================================================================
#------------------------------- Imports -------------------------------------
#=============================================================================

#=============================================================================
#------------------------ Class Implementation -------------------------------
#=============================================================================
class ClassName(BaseClassName):
    #--------------------------------------------------------
    #----------- Variables for all ClassNames ---------------
    #--------------------------------------------------------
    testString = "Test up and running."

    #--------------------------------------------------------
    #--------------- Methods Declaration --------------------
    #--------------------------------------------------------
    """docstring for ClassName."""
    def __init__(self, arg):
        #super(ClassName, self).__init__()
        #--------------------------------------------------------
        #--------- Variables for only this ClassName ------------
        #--------------------------------------------------------
        self.arg = arg

    def __str__(self):
        return self.testString
