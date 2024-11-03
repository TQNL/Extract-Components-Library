# Extract-Components-Library
The "Extract Components Library" is a Minecraft Java data pack library designed for versions 1.20.5 and above. This library allows for the dynamic referencing and manipulation of item data using variables in command structures, particularly focusing on item components introduced in recent game updates. full wiki: https://github.com/TQNL/Extract-Components-Library/wiki

### Context and Changes in Minecraft 1.20.5

- Macro Functions: Introduced in 1.20.2, these functions allow the insertion of variables, enabling dynamic item manipulation.
- Item Components: In 1.20.5, the NBT tags for items were replaced with a component-based system, altering how item counts and other attributes are stored and referenced.

### Problem with New System

The transition to item components posed a challenge: commands **in macro functions** fail if an item lacks a "components" field. To avoid command failures, the data pack offers a solution to streamline macro functions, reducing redundancy and inefficiency.

### Extract Components Library Functionality

- Data Extraction: The library efficiently extracts and saves item data, including the ID, count, and components. It converts the components into a string format for easier command integration.
- Handling Missing Components: Before data extraction, the library checks for a components field. If absent, it stops the extraction process and leaves an empty field to prevent function failures.

### Usage of the Library

### syntax
before running your macro function with the command for your item, you run a command with the following syntax: `function sntlibrary:list1/init {source:'<source>',target:'<target>',path:'<path>'}`. The variables here that I put in the angle brackets are the same used in the `/data get` command: `/data get (block <targetPos>|entity <target>|storage <target>) ...`. If you dont need a path, because the item data is surface level for some reason, put `path:''`

Your macro function comes after this command, and since all the data of your item that this library extracted is stored in its storage, you run your function like so: `function your:function with storage get_components:extract`. It also extracts the id and count of the item, apart from the components.

The library integrates with commands like /give, /item, and /execute if|unless items, allowing users to reference extracted item data seamlessly in these commands, allowing for things like item replacements from the library's storage, or matching items in queries, expanding the library's utility.

### example:
see full wiki for examples for the method used without this library. basically, you need 2 macro functions, 1 with `$(id)` and one without `$(id)`
```
// initial function: executed on a container, as a marker entity:
function sntlibrary:list1/init {source:'block',target:'^ ^ ^1',path:'Items[0]'} // get components and item data of 
data modify entity @s data.item set from storage get_components:extract
```

```
// macro function: check if the item in the first slot is the same as the stored item in the marker:
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.0 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.0 with air
```

### Installation

The library is available on GitHub. Users can download the ZIP file and extract the necessary folder into their data pack to integrate the library into their projects. A credit file is included with the library.


### notice
- If you want to support small creators like me, you can turn off ad blocker on Modrinth.
- Check out my profile for more creations: https://modrinth.com/user/TQNL

Keep in mind:
- Ensure you're familiar with installing data packs.
- Verify compatibility with your Minecraft version.

Terms of use:

Do:
- Use and modify the data pack for private use.
- Credit me (ThijquintNL) (covered by credit.txt for this library ;) ).

Don't:
- Redistribute the data pack for commercial purposes.


Under CC-BY-NC-SA 4.0 license
