# reference a singulair json string with the data path to the components
# exclude components key
# works if there is no components field
# save the lists, because it gets reset
function sntlibrary:list1/init {source:"entity",target:"@p",path:"SelectedItem"}