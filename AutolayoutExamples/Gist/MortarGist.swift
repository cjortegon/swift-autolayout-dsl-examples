box.m_top |=| m_topLayoutGuideBottom + 10
box.m_right |=| view.m_right - 10
box.m_bottom |=| view.m_bottom - 25
box.m_left |=| view.m_left + 10

header.m_height |=| box.m_height / 4
header.m_top |=| box.m_top
header.m_right |=| box.m_right
header.m_left |=| box.m_left

logo.m_height |=| header.m_height / 2
logo.m_center |=| header.m_center

button.m_height |=| 50
button.m_right |=| box.m_right
button.m_bottom |=| box.m_bottom
button.m_left |=| box.m_left
