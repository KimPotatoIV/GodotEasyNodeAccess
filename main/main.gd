extends Node2D

"""
기존 방식
 - 장점: 노드의 전체적인 구조를 파악하기 좋음.
 - 단점: 부모 노드의 이름이 바뀌거나 계층 구조(UI 레이아웃 등)가 한 단계만 깊어져도 
         경로가 깨져서 에러가 발생하여 유지 보수가 까다로움.

Scene Unique Name 방식 (%)
 - 장점: 노드가 씬 안에서 어디로 이동하든(경로 변경) 상관없이 이름(%)만 같으면 바로 찾아오며,
         UI처럼 계층 구조가 복잡하고 자주 바뀌는 작업에서 강력한 위력을 발휘.
 - 설정법: 씬 트리에서 노드 우클릭 -> 'Access as Unique Name' 체크
 - 사용 시 주의할 점: 중복 주의 (씬 하나당 이름은 유일해야 함)
                    남발 금지 (필요 없는 노드까지 %를 붙이면 씬 트리가 지저분)
                    범위 제한 (씬 밖에서는 %로 바로 부를 수 없음)
"""

@onready var traditional_label = \
				$UI/MarginContainer/VBoxContainer/HBoxContainer/TitleLabel

@onready var unique_name_label = %TitleLabel

##################################################

func _ready():
	#traditional_label.text = "고유 노드 활용법!"
	unique_name_label.text = "고유 노드 활용법!"
