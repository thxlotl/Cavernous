#Export
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"gold","insertion":"","click_event_type":"run_command","click_event_value":"/function gui_menu:settings","hover_event_type":"show_text","hover_event_value":"","hover_event_object":{},"hover_event_children":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gold","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"Click me"}],"text":"Click to receive settings menu"}],"command":"/tellraw @s %s","jtemplate":"tellraw"}
tellraw @s {"text":"Click to receive settings menu","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function gui_menu:settings"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me","color":"gold"}]}}
scoreboard players set @s settings 0