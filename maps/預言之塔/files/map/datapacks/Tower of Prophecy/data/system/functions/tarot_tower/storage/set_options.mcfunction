$data modify storage system:tarot_tower book_content.option_a set from storage system:tarot_tower floors_data[$(floor)].options[0]
function system:tarot_tower/storage/set_option_a with storage system:tarot_tower book_content.option_a
$data modify storage system:tarot_tower book_content.option_b set from storage system:tarot_tower floors_data[$(floor)].options[1]
function system:tarot_tower/storage/set_option_b with storage system:tarot_tower book_content.option_b
$data modify storage system:tarot_tower book_content.option_c set from storage system:tarot_tower floors_data[$(floor)].options[2]
function system:tarot_tower/storage/set_option_c with storage system:tarot_tower book_content.option_c
