LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE			:= arm
LOCAL_C_INCLUDES		:= $(LOCAL_PATH)
LOCAL_MODULE    		:= Chapter6
LOCAL_SRC_FILES 		:= Chapter6.cpp \
						   Chapter6App.cpp \
						   Chapter6Task.cpp \
						   MovementComponent.cpp \
						   PatrolComponent.cpp \
						   Framework/Application/Application.cpp \
						   Framework/EventManager/Event.cpp \
						   Framework/EventManager/EventManager.cpp \
						   Framework/GameObjects/GameObject.cpp \
						   Framework/GameObjects/Components/RenderableComponent.cpp \
						   Framework/GameObjects/Components/TransformComponent.cpp \
						   Framework/Kernel/Kernel.cpp \
						   Framework/Math/Matrix3.cpp \
						   Framework/Math/Matrix4.cpp \
						   Framework/Math/Transform.cpp \
						   Framework/Math/Vector3.cpp \
						   Framework/Math/Vector4.cpp \
						   Framework/Platform/Android.cpp \
						   Framework/Renderer/Renderer.cpp \
						   Framework/Renderer/Geometry/Geometry.cpp \
						   Framework/Renderer/Shaders/Shader.cpp \
						   Framework/Renderer/Shaders/BasicShader.cpp \
						   Framework/Renderer/Shaders/TextureShader.cpp \
						   Framework/Renderer/Shaders/TransformShader.cpp \
						   Framework/Renderer/Textures/Texture.cpp \
						   Framework/Utilities/File.cpp \
						   Framework/Utilities/TGAFile.cpp \
						   Framework/Utilities/Timer.cpp
LOCAL_LDLIBS    		:= -llog -landroid -lEGL -lGLESv2
LOCAL_STATIC_LIBRARIES	:= android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
