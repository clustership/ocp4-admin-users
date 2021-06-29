#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - ../cluster.yml
  become: false
  gather_facts: false
  tasks:
  - import_role:
      name: ocp4-setup-admin-users
      tasks_from: main.yml
    vars:
      kubeconfig: "{{ lookup('env', 'KUBECONFIG') }}"
