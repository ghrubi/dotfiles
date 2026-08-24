require("hypr.common.bindings")

-- Host profiles may add hardware-specific bindings without replacing the
-- common personal bindings.
pcall(require, "hypr.host.bindings")
