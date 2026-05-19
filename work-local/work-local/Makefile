NS := elevated-portal
KUBECONFIG_PATH := /home/gene/.kube/config
PID_DIR := .pids

KEYCLOAK_SVC := elevated-idp-keycloak
PORTAL_SVC := elevated-portal
DATA_SVC := ees-data-service
DATABASE_SVC := local-postgres

.PHONY: pf pf-keycloak pf-portal pf-data pf-database stop stop-keycloak stop-portal stop-data status logs clean

$(PID_DIR):
	mkdir -p $(PID_DIR)

pf: pf-keycloak pf-portal pf-data pf-database
	@echo "All port-forwards started."

pf-keycloak: $(PID_DIR)
	@echo "Authenticating sudo for Keycloak port 80..."
	@sudo -v
	@echo "Starting Keycloak port-forward: 80:80"
	@nohup sudo KUBECONFIG=$(KUBECONFIG_PATH) kubectl -n $(NS) port-forward --address 0.0.0.0 service/$(KEYCLOAK_SVC) 80:80 > $(PID_DIR)/keycloak.log 2>&1 & echo $$! > $(PID_DIR)/keycloak.pid
	@sleep 1
	@cat $(PID_DIR)/keycloak.log || true

pf-portal: $(PID_DIR)
	@echo "Starting Portal port-forward: 3000:3000"
	@nohup kubectl -n $(NS) port-forward --address 0.0.0.0 svc/$(PORTAL_SVC) 3000:3000 > $(PID_DIR)/portal.log 2>&1 & echo $$! > $(PID_DIR)/portal.pid

pf-data: $(PID_DIR)
	@echo "Starting Data Service port-forward: 8080:8080"
	@nohup kubectl -n $(NS) port-forward --address 0.0.0.0 svc/$(DATA_SVC) 8080:8080 > $(PID_DIR)/data.log 2>&1 & echo $$! > $(PID_DIR)/data.pid

pf-database: $(PID_DIR)
	@echo "Starting Database port-forward: 5432:5432"
	@nohup kubectl -n $(NS) port-forward --address 0.0.0.0 svc/$(DATABASE_SVC) 5432:5432 > $(PID_DIR)/data.log 2>&1 & echo $$! > $(PID_DIR)/database.pid

stop: stop-keycloak stop-portal stop-data
	@echo "All port-forwards stopped."

stop-keycloak:
	@if [ -f $(PID_DIR)/keycloak.pid ]; then sudo kill $$(cat $(PID_DIR)/keycloak.pid) 2>/dev/null || true; rm -f $(PID_DIR)/keycloak.pid; fi

stop-portal:
	@if [ -f $(PID_DIR)/portal.pid ]; then kill $$(cat $(PID_DIR)/portal.pid) 2>/dev/null || true; rm -f $(PID_DIR)/portal.pid; fi

stop-data:
	@if [ -f $(PID_DIR)/data.pid ]; then kill $$(cat $(PID_DIR)/data.pid) 2>/dev/null || true; rm -f $(PID_DIR)/data.pid; fi

status:
	@echo "Port-forward PIDs:"
	@ls -1 $(PID_DIR)/*.pid 2>/dev/null || echo "No active PID files."
	@echo ""
	@echo "Listening ports:"
	@ss -ltnp | grep -E ':80|:3000|:8080|:5432' || true

logs:
	@tail -n 50 $(PID_DIR)/*.log 2>/dev/null || echo "No logs found."

clean: stop
	@rm -rf $(PID_DIR)
