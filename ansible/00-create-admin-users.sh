#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - ../cluster.yml
  become: True
  tasks:
  - import_role:
      name: ocp4-setup-admin-users
      tasks_from: main.yml
    vars:
      kubeconfig: "{{ lookup('env', 'KUBECONFIG') }}"
