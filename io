LuaT �

xV           (w@�@io.lua�� �Q      ��  D �  �  �  �  �  �	
�  �  �  	D �  �  �  ��  	D �  �   	� �  ��    �   � 5 � π   �  � ƀ��require�io�_f�string�format�_t�os�date�[%Y-%m-%d %H:%M:%S] �File�/var/log/ScriptVoIP�execute�sudo chown centos. %s�sudo chmod 777 %s�LogFile�open�a+�FLAG_VALUE��writeLog�print�_t�Script VoIP�change�  ���� ��      ��  �   ��   D� ��� ��   �� ��_t�
�_f�%s�LogFile�write�print�   ��           ���log���date_log���logRegistrado����_ENV���  �   <   �+ ��   � � � �  8 � �� DD  < 8 � �� D  
�  � � D  
�� D � � � � D  � � � D����  8 � 
��	 D 
�
 D ��
 D �  � D8���  � � 
�  � � D 8�� 
��	 D 
�
 D � � � D8  �����  � 
�	 �  
�
 D�  � 5 � �   �  ��print�
                Escolha uma opção 
                1) ligar Log
                2) desligar Log
                3) abrir no SNGREP (*para atualizar os valores é necessário sair do SNGREP e retornar)
                
            �read�1�                    Qual nome será dado ao arquivo da pasta /tmp?
                        1) Data e horário atual
                        Qualquer coisa) Nome persorsonalizado
                �FLAG_VALUE�os�date�%Y-%m-%dH%H-%M-%S�execute�_f�rasterisk -x"pjsip set logger pcap /tmp/%s.pcap"�rasterisk -x"pjsip set logger on"�writeLog�começou escrever em /tmp/%s.pcap�_t�leia com sngrep usando a opção 3�2�rasterisk -x"pjsip set logger off"�rasterisk -x"pjsip set logger pcap off"�terminpu de escrever o pcap�terminou de escrever o pcap�3�sngrep -I /tmp/%s.pcap�Nenhum valor válido foi digitado. Essa sessão está terminada�finalizou�     �� �  �                                                                        ���logger��selectFunc�ڂ�_ENV�io�                        �    *�*  ���io����_ENV