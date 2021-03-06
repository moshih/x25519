$(BUILD_PLATFORM_DIR)/ctx_switch.o: $(SRC_DIR)arch/$(ARCH)/ctx_switch.S | $(BUILD_PLATFORM_DIR)
	@$(TOOLCHAIN)as -mcpu=cortex-m4 -mthumb $^ -o $@

$(BUILD_PLATFORM_DIR)/mul.o: $(SRC_DIR)arch/$(ARCH)/mul.s | $(BUILD_PLATFORM_DIR)
	@$(TOOLCHAIN)as -mcpu=cortex-m4 -mthumb $^ -o $@

$(BUILD_PLATFORM_DIR)/sqr.o: $(SRC_DIR)arch/$(ARCH)/sqr.s | $(BUILD_PLATFORM_DIR)
	@$(TOOLCHAIN)as -mcpu=cortex-m4 -mthumb $^ -o $@

$(BUILD_PLATFORM_DIR)/mpy.o: $(SRC_DIR)arch/$(ARCH)/cortex_m0_mpy121666.s| $(BUILD_PLATFORM_DIR)
	@$(TOOLCHAIN)as -mcpu=cortex-m4 -mthumb $^ -o $@

$(BUILD_PLATFORM_DIR)/red.o: $(SRC_DIR)arch/$(ARCH)/cortex_m0_reduce25519.s | $(BUILD_PLATFORM_DIR)
	@$(TOOLCHAIN)as -mcpu=cortex-m4 -mthumb -mfloat-abi=soft  $^ -o $@

$(BUILD_PLATFORM_DIR)/libcortexm4.rlib: $(call rwildcard,$(SRC_DIR)arch/cortex-m4,*.rs) $(BUILD_PLATFORM_DIR)/libcore.rlib | $(BUILD_PLATFORM_DIR)
	@echo "Building $@"
	@$(RUSTC) $(RUSTC_FLAGS) --out-dir $(BUILD_PLATFORM_DIR) $(SRC_DIR)arch/cortex-m4/lib.rs

