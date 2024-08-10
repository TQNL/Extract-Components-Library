# reference a singulair json string with the data path to the components
# exclude components key
# works if there is no components field
# save the lists, because it gets reset
# assumes there always is a path
# explain all variables
# storage get_components:extract lists_backup
function sntlibrary:list1/init {source:"entity",target:"@p",path:"SelectedItem"}