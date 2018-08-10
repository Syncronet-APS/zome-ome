BUILD_TYPE := prebuilt

include $(PREPARE_TO_BUILD)

$(BUILD_TARGET_WITH_PATH) : $(BUILD_PREBUILT_TARGET)
	@$(TARGET_COUNTER)
	@mkdir -p "$(dir $@)"
	@echo $(CURRENT_PROGRESS)"$(CONFIG_BUILD_TYPE_COLOR)[$(PRIVATE_BUILD_TYPE)]$(ANSI_RESET) Copying prebuilt library $(CONFIG_BUILDING_COLOR)$(PRIVATE_PREBUILT_TARGET)$(ANSI_RESET) to $(CONFIG_TARGET_FILE_COLOR)$@$(ANSI_RESET)"$(INCREASE_COUNT)
	@cp "$(PRIVATE_PREBUILT_TARGET)" "$(PRIVATE_TARGET_WITH_PATH)"

include $(BUILD_DEPENDENCY)